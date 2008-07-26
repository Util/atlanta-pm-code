#line 1
package Config::Tiny;

# If you thought Config::Simple was small...

use strict;
BEGIN {
	require 5.004;
	$Config::Tiny::VERSION = '2.12';
	$Config::Tiny::errstr  = '';
}

# Create an empty object
sub new { bless {}, shift }

# Create an object from a file
sub read {
	my $class = ref $_[0] ? ref shift : shift;

	# Check the file
	my $file = shift or return $class->_error( 'You did not specify a file name' );
	return $class->_error( "File '$file' does not exist" )              unless -e $file;
	return $class->_error( "'$file' is a directory, not a file" )       unless -f _;
	return $class->_error( "Insufficient permissions to read '$file'" ) unless -r _;

	# Slurp in the file
	local $/ = undef;
	open CFG, $file or return $class->_error( "Failed to open file '$file': $!" );
	my $contents = <CFG>;
	close CFG;

	$class->read_string( $contents );
}

# Create an object from a string
sub read_string {
	my $class = ref $_[0] ? ref shift : shift;
	my $self  = bless {}, $class;
	return undef unless defined $_[0];

	# Parse the file
	my $ns      = '_';
	my $counter = 0;
	foreach ( split /(?:\015{1,2}\012|\015|\012)/, shift ) {
		$counter++;

		# Skip comments and empty lines
		next if /^\s*(?:\#|\;|$)/;

		# Remove inline comments
		s/\s\;\s.+$//g;

		# Handle section headers
		if ( /^\s*\[\s*(.+?)\s*\]\s*$/ ) {
			# Create the sub-hash if it doesn't exist.
			# Without this sections without keys will not
			# appear at all in the completed struct.
			$self->{$ns = $1} ||= {};
			next;
		}

		# Handle properties
		if ( /^\s*([^=]+?)\s*=\s*(.*?)\s*$/ ) {
			$self->{$ns}->{$1} = $2;
			next;
		}

		return $self->_error( "Syntax error at line $counter: '$_'" );
	}

	$self;
}

# Save an object to a file
sub write {
	my $self = shift;
	my $file = shift or return $self->_error(
		'No file name provided'
		);

	# Write it to the file
	open( CFG, '>' . $file ) or return $self->_error(
		"Failed to open file '$file' for writing: $!"
		);
	print CFG $self->write_string;
	close CFG;
}

# Save an object to a string
sub write_string {
	my $self = shift;

	my $contents = '';
	foreach my $section ( sort { (($b eq '_') <=> ($a eq '_')) || ($a cmp $b) } keys %$self ) {
		my $block = $self->{$section};
		$contents .= "\n" if length $contents;
		$contents .= "[$section]\n" unless $section eq '_';
		foreach my $property ( sort keys %$block ) {
			$contents .= "$property=$block->{$property}\n";
		}
	}
	
	$contents;
}

# Error handling
sub errstr { $Config::Tiny::errstr }
sub _error { $Config::Tiny::errstr = $_[1]; undef }

1;

__END__

#line 267

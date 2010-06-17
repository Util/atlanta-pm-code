#!/usr/bin/perl

# Unit testing for PPI, generated by Test::Inline

use strict;
use File::Spec::Functions ':ALL';
BEGIN {
	$|  = 1;
	$^W = 1;
	$PPI::XS_DISABLE = 1;
	$PPI::XS_DISABLE = 1; # Prevent warning
}
use PPI;

# Execute the tests
use Test::More tests => 70;

# =begin testing new 70
{
# Verify that Token::Quote, Token::QuoteLike and Token::Regexp
# do not have ->new functions
my $RE_SYMBOL  = qr/\A(?!\d)\w+\z/;
foreach my $name ( qw{Token::Quote Token::QuoteLike Token::Regexp} ) {
	no strict 'refs';
	my @functions = sort
		grep { defined &{"${name}::$_"} }
		grep { /$RE_SYMBOL/o }
		keys %{"PPI::${name}::"};
	is( scalar(grep { $_ eq 'new' } @functions), 0,
		"$name does not have a new function" );
}

# This primarily to ensure that qw() with non-balanced types
# are treated the same as those with balanced types.
SCOPE: {
	my @seps   = ( undef, undef, '/', '#', ','  );
	my @types  = ( '()', '<>', '//', '##', ',,' );
	my @braced = ( qw{ 1 1 0 0 0 } );
	my $i      = 0;
	for my $q ('qw()', 'qw<>', 'qw//', 'qw##', 'qw,,') {
		my $d = PPI::Document->new(\$q);
		my $o = $d->{children}->[0]->{children}->[0];
		my $s = $o->{sections}->[0];
		is( $o->{operator},  'qw',      "$q correct operator"  );
		is( $o->{_sections}, 1,         "$q correct _sections" );
		is( $o->{braced}, $braced[$i],  "$q correct braced"    );
		is( $o->{separator}, $seps[$i], "$q correct seperator" );
		is( $o->{content},   $q,        "$q correct content"   );
		is( $s->{position},  3,         "$q correct position"  );
		is( $s->{type}, $types[$i],     "$q correct type"      );
		is( $s->{size},      0,         "$q correct size"      );
		$i++;
	}
}

SCOPE: {
	my @stuff  = ( qw-( ) < > / / -, '#', '#', ',',',' );
	my @seps   = ( undef, undef, '/', '#', ','  );
	my @types  = ( '()', '<>', '//', '##', ',,' );
	my @braced = ( qw{ 1 1 0 0 0 } );
	my @secs   = ( qw{ 1 1 0 0 0 } );
	my $i      = 0;
	while ( @stuff ) {
		my $opener = shift @stuff;
		my $closer = shift @stuff;
		my $d = PPI::Document->new(\"qw$opener");
		my $o = $d->{children}->[0]->{children}->[0];
		my $s = $o->{sections}->[0];
		is( $o->{operator},  'qw',        "qw$opener correct operator"  );
		is( $o->{_sections}, $secs[$i],   "qw$opener correct _sections" );
		is( $o->{braced}, $braced[$i],    "qw$opener correct braced"    );
		is( $o->{separator}, $seps[$i],   "qw$opener correct seperator" );
		is( $o->{content},   "qw$opener", "qw$opener correct content"   );
		if ( $secs[$i] ) {
			is( $s->{type}, "$opener$closer", "qw$opener correct type"      );
		}
		$i++;
	}
}
}


1;
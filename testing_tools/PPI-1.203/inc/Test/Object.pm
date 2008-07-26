#line 1
package Test::Object;

#line 91

use 5.005;
use strict;
use Carp               ();
use Exporter           ();
use Test::More         ();
use Scalar::Util       ();
use Test::Object::Test ();

use vars qw{$VERSION @ISA @EXPORT};
BEGIN {
	$VERSION = '0.07';
	@ISA     = 'Exporter';
	@EXPORT  = 'object_ok';
}





#####################################################################
# Registration and Planning

my @TESTS = ();

sub register {
	my $class = shift;
	push @TESTS, Test::Object::Test->new( @_ );
}





#####################################################################
# Testing Functions

sub object_ok {
	my $object = Scalar::Util::blessed($_[0]) ? shift
		: Carp::croak("Did not provide an object to object_ok");

	# Iterate over the tests and run any we ->isa
	foreach my $test ( @TESTS ) {
		$test->run( $object ) if $object->isa( $test->class );
	}

	1;
}

1;

#line 171

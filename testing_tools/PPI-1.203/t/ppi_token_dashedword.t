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
use Test::More tests => 9;

# =begin testing literal 9
{
my @pairs = (
	"-foo",        '-foo',
	"-Foo::Bar",   '-Foo::Bar',
	"-Foo'Bar",    '-Foo::Bar',
);
while ( @pairs ) {
	my $from  = shift @pairs;
	my $to    = shift @pairs;
	my $doc   = PPI::Document->new( \"(<$from => 1);" );
	isa_ok( $doc, 'PPI::Document' );
	my $word = $doc->find_first('Token::DashedWord');
	local $TODO = 'PPI::Token::DashedWord is currently deactivated';
	isa_ok( $word, 'PPI::Token::DashedWord' );
	is( $word && $word->literal, $to, "The source $from becomes $to ok" );
}
}


1;

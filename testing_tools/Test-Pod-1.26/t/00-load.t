#!perl -T

use warnings;
use strict;
use Test::More tests => 1;

BEGIN {
    use_ok( 'Test::Pod' );
}

diag( "Testing Test::Pod $Test::Pod::VERSION, Perl $], $^X" );

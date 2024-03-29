#!/usr/bin/perl

use strict;
BEGIN {
	$|  = 1;
	$^W = 1;
}

use Test::More tests => 29;
use File::Spec::Functions ':ALL';
BEGIN {
	use_ok('Params::Util', qw(_ARRAYLIKE _HASHLIKE));
}

my $listS = bless \do { my $i } => 'Foo::Listy';
my $hashS = bless \do { my $i } => 'Foo::Hashy';
my $bothS = bless \do { my $i } => 'Foo::Bothy';

my $listH = bless {} => 'Foo::Listy';
my $hashH = bless {} => 'Foo::Hashy';
my $bothH = bless {} => 'Foo::Bothy';

my $listA = bless [] => 'Foo::Listy';
my $hashA = bless [] => 'Foo::Hashy';
my $bothA = bless [] => 'Foo::Bothy';

my @data = (# A  H
  [ undef   , 0, 0, 'undef' ],
  [ 1000   => 0, 0, '1000' ],
  [ 'Foo'  => 0, 0, '"Foo"' ],
  [ []     => 1, 0, '[]' ],
  [ {}     => 0, 1, '{}' ],
  [ $listS => 1, 0, 'scalar-based Foo::Listy' ],
  [ $hashS => 0, 1, 'scalar-based Foo::Hashy' ],
  [ $bothS => 1, 1, 'scalar-based Foo::Bothy' ],
  [ $listH => 1, 1, 'hash-based Foo::Listy' ],
  [ $hashH => 0, 1, 'hash-based Foo::Hashy' ],
  [ $bothH => 1, 1, 'hash-based Foo::Bothy' ],
  [ $listA => 1, 0, 'array-based Foo::Listy' ],
  [ $hashA => 1, 1, 'array-based Foo::Hashy' ],
  [ $bothA => 1, 1, 'array-based Foo::Bothy' ],
);

for my $t (@data) {
  is(
    _ARRAYLIKE($t->[0]) ? 1 : 0,
    $t->[1],
    "$t->[3] " . ($t->[1] ? 'is' : "isn't") . ' @ish'
  );

  is(
    _HASHLIKE( $t->[0]) ? 1 : 0,
    $t->[2],
    "$t->[3] " . ($t->[2] ? 'is' : "isn't") . ' %ish'
  );
}

package Foo;
# this package is totally unremarkable;

package Foo::Listy;
use overload
  '@{}' => sub { [] },
  fallback => 1;

package Foo::Hashy;
use overload
  '%{}' => sub { {} },
  fallback => 1;

package Foo::Bothy;
use overload
  '@{}' => sub { [] },
  '%{}' => sub { {} },
  fallback => 1;

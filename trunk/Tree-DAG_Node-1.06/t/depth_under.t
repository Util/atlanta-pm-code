#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 9;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test depth_under() with a 0 daughter tree
%nodes = tree_simple(0);

is( $nodes{root}->depth_under( ), 0, "Ply of root node is 0");

# Test depth_under() with a simple (2 generation) tree
%nodes = tree_simple(3);

is( $nodes{root}->depth_under( ), 1, "Ply of root node is 1");
is( $nodes{A}->depth_under( ), 0, "Ply of first child (A) is 0");
is( $nodes{B}->depth_under( ), 0, "Ply of middle child (B) is 0");
is( $nodes{C}->depth_under( ), 0, "Ply of last child (C) is 0");

# Test depth_under() with a complex tree
%nodes = tree_complex();

is( $nodes{root}->depth_under( ), 3, "Ply of root node is 3");
is( $nodes{A}->depth_under( ), 2, "Ply of child A is 5");
is( $nodes{B}->depth_under( ), 1, "Ply of child B is 1");
is( $nodes{C}->depth_under( ), 2, "Ply of child C is 4");

#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 9;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test my_daughter_index() with a 0 daughter tree
%nodes = tree_simple(0);

is( $nodes{root}->my_daughter_index( ), 0, "root node has index 0");

# Test my_daughter_index() with a complex tree
%nodes = tree_complex();

is( $nodes{root}->my_daughter_index( ), 0, "root node has index 0");
is( $nodes{A}->my_daughter_index( ), 0, "first child (A) has index 0");
is( $nodes{B}->my_daughter_index( ), 1, "middle child (B) has index 1");
is( $nodes{C}->my_daughter_index( ), 2, "last child (C) has index 2");
is( $nodes{AA}->my_daughter_index( ), 0, "grandchild AA has index 0");
is( $nodes{AB}->my_daughter_index( ), 1, "grandchild AB has index 1");
is( $nodes{CC}->my_daughter_index( ), 2, "grandchild AC has index 2");
is( $nodes{ABB}->my_daughter_index( ), 1, "great-grandchild ABB has index 1");

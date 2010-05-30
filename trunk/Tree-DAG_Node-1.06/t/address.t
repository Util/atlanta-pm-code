#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 11;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  Does not test 2nd form of address()
###

my %nodes;

# Test address() with a 0 daughter tree
%nodes = tree_minimal();

is( $nodes{root}->address(), '0', "root node has address 0");

# Test address() with a simple (2 generation) tree
%nodes = tree_simple();

is( $nodes{root}->address(), '0', "root node has address 0");
is( $nodes{A}->address(), '0:0', "first child (A) has address 0:0");
is( $nodes{B}->address(), '0:1', "middle child (B) has address 0:1");
is( $nodes{C}->address(), '0:2', "last child (C) has address 0:2");

# Test address() with a complex tree
%nodes = tree_complex();

is( $nodes{root}->address(), '0', "root node has address 0");
is( $nodes{B}->address(), '0:1', "child B has address 0:1");
is( $nodes{AA}->address(), '0:0:0', "grandchild AA has address 0:0:0");
is( $nodes{AB}->address(), '0:0:1', "grandchild BB has address 0:0:1");
is( $nodes{AC}->address(), '0:0:2', "grandchild BC has address 0:0:2");
is( $nodes{CAB}->address(), '0:2:0:1', "great-grandchild CAB has address 0:2:0:1");


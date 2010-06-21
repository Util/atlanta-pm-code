#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 9;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test descendants() with a 0 daughter tree
%nodes = tree_simple(0);

is( node_names($nodes{root}->descendants( )), '', "lone node has no descendants");

# Test descendants() with a simple (2 generation) tree
#   Sort multi-node results because order is not specified
%nodes = tree_simple(3);

is( sorted_node_names($nodes{root}->descendants( )), 'A B C', "root node has three descendant");
is( node_names($nodes{A}->descendants( )), '', "first child (A) has no descendants");
is( node_names($nodes{B}->descendants( )), '', "middle child (B) has no descendants");
is( node_names($nodes{C}->descendants( )), '', "last child (C) has no descendants");

# Test descendants() with a complex tree
%nodes = tree_complex();

is( sorted_node_names($nodes{root}->descendants( )), 'A AA AB ABA ABB ABC AC B BA C CA CAA CAB CB CC', "root node has 15 ancestors");
is( sorted_node_names($nodes{A}->descendants( )), 'AA AB ABA ABB ABC AC', "child A has six ancestors");
is( sorted_node_names($nodes{B}->descendants( )), 'BA', "child B has one descendant ");
is( sorted_node_names($nodes{C}->descendants( )), 'CA CAA CAB CB CC', "child C has five ancestors");

#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 9;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Test leaves_under() with a 0 daughter tree
%nodes = tree_simple(0);

is( node_names($nodes{root}->leaves_under( )), 'root', "lone node returns self");

# Test leaves_under() with a simple (2 generation) tree
%nodes = tree_simple(3);

is( node_names($nodes{root}->leaves_under( )), 'A B C', "root node has three leaves");
is( node_names($nodes{A}->leaves_under( )), 'A', "first child (A) is a leaf");
is( node_names($nodes{B}->leaves_under( )), 'B', "middle child (B) is a leaf");
is( node_names($nodes{C}->leaves_under( )), 'C', "last child (C) is a leaf");

# Test leaves_under() with a complex tree
%nodes = tree_complex();

is( node_names($nodes{root}->leaves_under( )), 'AA ABA ABB ABC AC BA CAA CAB CB CC', "root node is above 10 leaves");
is( node_names($nodes{A}->leaves_under( )), 'AA ABA ABB ABC AC', "child A is above 5 leaves");
is( node_names($nodes{B}->leaves_under( )), 'BA', "child B is above 1 leaf ");
is( node_names($nodes{C}->leaves_under( )), 'CAA CAB CB CC', "child C is above 4 leaves");

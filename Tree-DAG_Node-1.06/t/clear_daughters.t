#!/usr/bin/perl
use strict;
use warnings;
# use Test::More tests => 6 * 2;
use Test::More tests => 6;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;
my @returned_nodes;

# Test with root node (no daughter simple tree)
%nodes = tree_simple(0);

@returned_nodes = $nodes{root}->clear_daughters( );
is( display_child_tree($nodes{root}), 'root', "clear childless parent is no-op");
is( node_names(@returned_nodes), '', "clear childless parent returns nothing" );

# Test with a 1 daughter simple tree
%nodes = tree_simple(1);

@returned_nodes = $nodes{root}->clear_daughters( );
is( display_child_tree($nodes{root}), 'root', "clear parent leaves parent");
is( node_names(@returned_nodes), 'A', "clear parent returns former child" );

# Test with an 5 daughter simple tree
%nodes = tree_simple(5);

@returned_nodes = $nodes{root}->clear_daughters( );
is( display_child_tree($nodes{root}), 'root', "clear parent leaves parent");
is( node_names(@returned_nodes), 'A B C D E', "clear parent returns former children" );


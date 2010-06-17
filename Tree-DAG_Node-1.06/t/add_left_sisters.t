#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 5 * 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  NOTE: add_right_sisters.t and add_left_sisters.t are
###  (and should remain) NEARLY identical
###

my @synonymous_methods = qw( add_left_sister add_left_sisters );
my(%nodes, @returned_nodes);

for my $add_sister_method ( @synonymous_methods ) {

    # Start test with a 4 daughter simple tree
    %nodes = tree_simple(4);

    # Create unrelated nodes to add as sisters
    my $node_X = Tree::DAG_Node->new( { name => 'X' } );
    my $node_Y = Tree::DAG_Node->new( { name => 'Y' } );

    # Verify initial state of test tree
    is( display_child_tree($nodes{root}), 'root { A B C D }', "$add_sister_method: Initial order is correct");

    @returned_nodes = $nodes{B}->$add_sister_method( );
    is( display_child_tree($nodes{root}), 'root { A B C D }', "$add_sister_method: empty LIST causes no change");
    is( node_names(@returned_nodes), '', "$add_sister_method: adding empty list returns empty list" );

    @returned_nodes = $nodes{B}->$add_sister_method( $node_X, $node_Y );
    is( display_child_tree($nodes{root}), 'root { A X Y B C D }', "$add_sister_method: two daughters added in correct order" );
    is( node_names(@returned_nodes), 'X Y', "$add_sister_method: adding two daughters returns list of new daughters" );

}

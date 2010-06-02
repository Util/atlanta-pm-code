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

# Tests are based on tree described in add_left_sisters docs:
#
#     <mother>
#         |
#   /---+-+-+---\ 
#   |   |   |   | 
#  <A> <B> <C> <D>

for my $add_sister_method ( @synonymous_methods ) {

    # Create nodes for tests: mother, 4 daughters (A,B,C,D), 2 unrelated nodes (X,Y)
    my $mother = Tree::DAG_Node->new( { name => 'mom' } );
    my $node_A = Tree::DAG_Node->new( { name => 'A' } );
    my $node_B = Tree::DAG_Node->new( { name => 'B' } );
    my $node_C = Tree::DAG_Node->new( { name => 'C' } );
    my $node_D = Tree::DAG_Node->new( { name => 'D' } );
    my $node_X = Tree::DAG_Node->new( { name => 'X' } );
    my $node_Y = Tree::DAG_Node->new( { name => 'Y' } );

    # Assemble mother and daughters into described tree
    # NOTE: Use 4 calls because add_daughters() docs do not specify that
    #   the order of an added list is preserved
    $mother->add_daughters( $node_A );
    $mother->add_daughters( $node_B );
    $mother->add_daughters( $node_C );
    $mother->add_daughters( $node_D );

    # Declare list for return value of tested methods
    my @returned_nodes;

    # Verify initial state of test tree
    is( display_child_tree($mother), 'mom { A B C D }', "$add_sister_method: Initial order is correct");

    @returned_nodes = $node_B->$add_sister_method( );
    is( display_child_tree($mother), 'mom { A B C D }', "$add_sister_method: empty LIST causes no change");
    is( node_names(@returned_nodes), '', "$add_sister_method: adding empty list returns empty list" );

    @returned_nodes = $node_B->$add_sister_method( $node_X, $node_Y );
    is( display_child_tree($mother), 'mom { A X Y B C D }', "$add_sister_method: two daughters added in correct order" );
    is( node_names(@returned_nodes), 'X Y', "$add_sister_method: adding two daughters returns list of new daughters" );

}
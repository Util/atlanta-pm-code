#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 9 * 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  NOTE: add_daughters.t and add_daughters_left.t
###  should be NEARLY identical
###

my @synonymous_methods = qw( add_daughters add_daughter );
my(%nodes, %knodes, @returned_nodes);

for my $add_daughter_method ( @synonymous_methods ) {

    # Create nodes to add as daughters
    my($nodeA, $nodeB, $nodeC) = node_pool('A', 'B', 'C');

    # Start test with a 0 daughter simple tree
    %nodes = tree_simple(0);

    $nodes{root}->$add_daughter_method( );
    is( display_child_tree($nodes{root}), 'root', "$add_daughter_method: adding null list is a no-op (no initial daughters)");

# add mother as its own daughter should die via Carp::croak (line 528)
# XXX    $nodes{root}->$add_daughter_method( $nodes{root} );
# XXX    TEST?

    @returned_nodes = $nodes{root}->$add_daughter_method( $nodeA );
    is( display_child_tree($nodes{root}), 'root { A }', "$add_daughter_method: added child to mother");
    is( scalar(@returned_nodes), 0, "$add_daughter_method: method does not return value when adding");

# add mother as daughter should die via Carp::croak (line 530)
# XXX    $nodes{A}->$add_daughter_method( $nodes{root} );
# XXX    TEST?

    $nodes{root}->$add_daughter_method( );
    is( display_child_tree($nodes{root}), 'root { A }', "$add_daughter_method: adding null list is a no-op (1 initial daughter)");

    $nodeA->$add_daughter_method( );
    is( display_child_tree($nodes{root}), 'root { A }', "$add_daughter_method: adding null list is a no-op (node has parent)");

# XXX  Does the documentation support this test?!? NO, but it is a deficiency in the documentation
# XXX    Do the docs require that order be preserved? NO - not strictly the case either

    $nodes{root}->$add_daughter_method( $nodeB, $nodeC );
    is( display_child_tree($nodes{root}), 'root { A B C }', "$add_daughter_method: two daughters added (to right)");

    $nodes{root}->$add_daughter_method( $nodeB );
    is( display_child_tree($nodes{root}), 'root { A B C }', "$add_daughter_method: adding existing daughter is no-op");

### What is the purpose of this test?
#     $nodes{root}->$add_daughter_method( $nodeD );
#     is( display_child_tree($nodes{root}), 'root { D C B A }', "$add_daughter_method: daughter added to left");

    %knodes = tree_simple(0);
    $knodes{root}->$add_daughter_method( $nodeB );
    is( display_child_tree($nodes{root}), 'root { A C }', "$add_daughter_method: re-parented daughter removed from old tree");
    is( display_child_tree($knodes{root}), 'root { B }', "$add_daughter_method: re-parented daughter added to new tree");

}

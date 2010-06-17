#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 7 * 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  NOTE: add_daughters.t and add_daughters_left.t
###  should be NEARLY identical
###

my @synonymous_methods = qw( add_daughters_left add_daughter_left );
my(%nodes, %knodes);

for my $add_daughter_method ( @synonymous_methods ) {

    # Create nodes to add as daughters
    my $nodeA = Tree::DAG_Node->new({name => 'A'});
    my $nodeB = Tree::DAG_Node->new({name => 'B'});
    my $nodeC = Tree::DAG_Node->new({name => 'C'});
#    my $nodeD = Tree::DAG_Node->new({name => 'D'});

    # Start test with a 0 daughter simple tree
    %nodes = tree_simple(0);

    $nodes{root}->$add_daughter_method( );
    is( display_child_tree($nodes{root}), 'root', "$add_daughter_method: adding null list is a no-op (no initial daughters)");

    $nodes{root}->$add_daughter_method( $nodeA );
    is( display_child_tree($nodes{root}), 'root { A }', "$add_daughter_method: added child to mother");

    $nodes{root}->$add_daughter_method( );
    is( display_child_tree($nodes{root}), 'root { A }', "$add_daughter_method: adding null list is a no-op (1 initial daughter)");

    $nodeA->$add_daughter_method( );
    is( display_child_tree($nodes{root}), 'root { A }', "$add_daughter_method: adding null list is a no-op (node has parent)");

###  Does the documentation support this test?!?
###    Do the docs require that order be preserved?

    $nodes{root}->$add_daughter_method( $nodeB, $nodeC );
    is( display_child_tree($nodes{root}), 'root { C B A }', "$add_daughter_method: two daughters added to left");

### What is the purpose of this test?
#     $nodes{root}->$add_daughter_method( $nodeD );
#     is( display_child_tree($nodes{root}), 'root { D C B A }', "$add_daughter_method: daughter added to left");

    %knodes = tree_simple(0);
    $knodes{root}->$add_daughter_method( $nodeB );
    is( display_child_tree($nodes{root}), 'root { C A }', "$add_daughter_method: re-parented daughter removed from old tree");
    is( display_child_tree($knodes{root}), 'root { B }', "$add_daughter_method: re-parented daughter added to new tree");

}

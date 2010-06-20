#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 13 * 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my @synonymous_methods = qw( remove_daughter remove_daughters );

my %nodes;

# Create unrelated node for testing
my $node_X = Tree::DAG_Node->new( { name => 'NodeX' } ); # Named to not conflict with an X node in the test tree

for my $remove_method ( @synonymous_methods ) {

    # Test with root node (no daughter simple tree)
    %nodes = tree_simple(0);

    $nodes{root}->$remove_method( );
    is( display_child_tree($nodes{root}), 'root', "$remove_method: remove empty list from no daughters is no-op");
    $nodes{root}->$remove_method( $node_X );
    is( display_child_tree($nodes{root}), 'root', "$remove_method: remove non-daughter from no daughters is no-op");
    $nodes{root}->$remove_method( 'non-node' );
    is( display_child_tree($nodes{root}), 'root', "$remove_method: remove non-node from no daughters is ignored");

    # Test with a 1 daughter simple tree
    %nodes = tree_simple(1);

    $nodes{root}->$remove_method( );
    is( display_child_tree($nodes{root}), 'root { A }', "$remove_method: remove empty list is no-op");
    $nodes{root}->$remove_method( $node_X );
    is( display_child_tree($nodes{root}), 'root { A }', "$remove_method: remove non-daughter is no-op");
    $nodes{root}->$remove_method( $nodes{A} );
    is( display_child_tree($nodes{root}), 'root', "$remove_method: remove only daughter leaves no daughters");

    # Test with an 11 daughter simple tree
    %nodes = tree_simple(11);

    $nodes{root}->$remove_method( );
    is( display_child_tree($nodes{root}), 'root { A B C D E F G H I J K }', "$remove_method: remove empty list is no-op");
    $nodes{root}->$remove_method( $nodes{'B'}, $nodes{'D'}, $nodes{'F'} );
    is( display_child_tree($nodes{root}), 'root { A C E G H I J K }', "$remove_method: remove non-sequential interior daughters");
    $nodes{root}->$remove_method( $nodes{'A'} );
    is( display_child_tree($nodes{root}), 'root { C E G H I J K }', "$remove_method: remove first daughter (not only child)");
    $nodes{root}->$remove_method( $nodes{'K'} );
    is( display_child_tree($nodes{root}), 'root { C E G H I J }', "$remove_method: remove last daughter (not only child)");
    $nodes{root}->$remove_method( $nodes{'J'}, $node_X );
    is( display_child_tree($nodes{root}), 'root { C E G H I }', "$remove_method: remove daughter and non-daughter");
    $nodes{root}->$remove_method( $nodes{'E'}, $nodes{'G'} );
    is( display_child_tree($nodes{root}), 'root { C H I }', "$remove_method: remove sequential interior daughters");
    $nodes{root}->$remove_method( $nodes{'C'}, $nodes{'H'}, $nodes{'I'} );
    is( display_child_tree($nodes{root}), 'root', "$remove_method: remove all daughters");

}

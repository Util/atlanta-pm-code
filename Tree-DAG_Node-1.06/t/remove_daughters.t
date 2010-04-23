#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 12 * 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my @synonymous_methods = qw( remove_daughter remove_daughters );

# Create unrelated node for testing
my $node_X = Tree::DAG_Node->new( { name => 'NodeX' } ); # Named to not conflict with an X node in the test tree

for my $remove_method ( @synonymous_methods ) {

    # Create a 0 daughter tree
    my($mother, @daughters) = build_tree(0);
    $mother->$remove_method( );
    is( daughter_names($mother), '', "$remove_method - remove empty list from no daughters is no-op");
    $mother->$remove_method( $node_X );
    is( daughter_names($mother), '', "$remove_method - remove non-daughter from no daughters is no-op");

    # Create a 1 daughter tree
    ($mother, @daughters) = build_tree(1);
    $mother->$remove_method( );
    is( daughter_names($mother), 'A', "$remove_method - remove empty list is no-op");
    $mother->$remove_method( $node_X );
    is( daughter_names($mother), 'A', "$remove_method - remove non-daughter is no-op");
    $mother->$remove_method( $daughters[0] );
    is( daughter_names($mother), '', "$remove_method - remove only daughter leaves no daughters");

    # Create a 11 daughter tree
    ($mother, @daughters) = build_tree(11);
    $mother->$remove_method( );
    is( daughter_names($mother), 'A B C D E F G H I J K', "$remove_method - remove empty list is no-op");
    $mother->$remove_method( @daughters[1,3,5] );
    is( daughter_names($mother), 'A C E G H I J K', "$remove_method - remove non-sequential interior daughters");
    $mother->$remove_method( $daughters[0] );
    is( daughter_names($mother), 'C E G H I J K', "$remove_method - remove first daughter (not only child)");
    $mother->$remove_method( $daughters[10] );
    is( daughter_names($mother), 'C E G H I J', "$remove_method - remove last daughter (not only child)");
    $mother->$remove_method( $daughters[9], $node_X );
    is( daughter_names($mother), 'C E G H I', "$remove_method - remove daughter and non-daughter");
    $mother->$remove_method( @daughters[4,6] );
    is( daughter_names($mother), 'C H I', "$remove_method - remove sequential interior daughters");
    $mother->$remove_method( @daughters[2,7,8] );
    is( daughter_names($mother), '', "$remove_method - remove all daughters");

}

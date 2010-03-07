#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 12 * 2;
use Tree::DAG_Node;

my @synonymous_methods = qw( remove_daughter remove_daughters );

sub daughter_names {
    my ($node) = @_;
    return node_names($node->daughters);
}

sub node_names {
    my (@nodes) = @_;
    return join ' ', map { $_->name } @nodes;
}

sub build_tree {
    # Build tree for testing; OK for values 0-26
    my ($daughter_count) = @_;
    my $mother = Tree::DAG_Node->new( { name => 'mother' } );
    my @daughters = ();
    if ($daughter_count) {
        for my $d ( 1..$daughter_count ) {
            my $daughter = Tree::DAG_Node->new( { name => chr( 64 + $d ) } );
            $mother->add_daughters( $daughter );
            push( @daughters, $daughter );
        }
    }
    return ($mother, @daughters);
}

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
    $mother->$remove_method( $daughters[1], $daughters[3], $daughters[5] );
    is( daughter_names($mother), 'A C E G H I J K', "$remove_method - remove non-sequential interior daughters");
    $mother->$remove_method( $daughters[0] );
    is( daughter_names($mother), 'C E G H I J K', "$remove_method - remove first daughter (not only child)");
    $mother->$remove_method( $daughters[10] );
    is( daughter_names($mother), 'C E G H I J', "$remove_method - remove last daughter (not only child)");
    $mother->$remove_method( $daughters[9], $node_X );
    is( daughter_names($mother), 'C E G H I', "$remove_method - remove daughter and non-daughter");
    $mother->$remove_method( $daughters[4], $daughters[6] );
    is( daughter_names($mother), 'C H I', "$remove_method - remove sequential interior daughters");
    $mother->$remove_method( $daughters[2], $daughters[7], $daughters[8] );
    is( daughter_names($mother), '', "$remove_method - remove all daughters");

}


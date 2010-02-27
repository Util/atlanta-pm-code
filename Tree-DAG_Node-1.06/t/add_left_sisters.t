#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 5 * 2;
use Tree::DAG_Node;

my @synonymous_methods = qw( add_left_sister add_left_sisters );

sub daughter_names {
    my ($node) = @_;
#     return join ' ', map { $_->name } $node->daughters;
    return node_names($node->daughters);
}

sub node_names {
    my (@nodes) = @_;
    return join ' ', map { $_->name } @nodes;
}

for my $method_name ( @synonymous_methods ) {
    # Create a new root node, and its children.
    my $mother = Tree::DAG_Node->new( { name => 'mother' } );
    my $node_A = Tree::DAG_Node->new( { name => 'A' } );
    my $node_B = Tree::DAG_Node->new( { name => 'B' } );
    my $node_C = Tree::DAG_Node->new( { name => 'C' } );
    my $node_D = Tree::DAG_Node->new( { name => 'D' } );

    # Create 2 unlinked nodes, that will be added later.
    my $node_X = Tree::DAG_Node->new( { name => 'X' } );
    my $node_Y = Tree::DAG_Node->new( { name => 'Y' } );

    # Create list for return value of tested methods
    my @returned_nodes;

    # Verifying examples in method doc.
    # XXX 4 calls instead of one, due to docs underspecifying add_daughters().
    $mother->add_daughters( $node_A );
    $mother->add_daughters( $node_B );
    $mother->add_daughters( $node_C );
    $mother->add_daughters( $node_D );
    is( daughter_names($mother), 'A B C D', "$method_name - Initial order is correct");

    @returned_nodes = $node_B->$method_name( );
    is( daughter_names($mother), 'A B C D', "$method_name - Empty LIST causes no change");
    is( node_names(@returned_nodes), '', "$method_name - Addition of empty list returns empty list" );

    @returned_nodes = $node_B->$method_name( $node_X, $node_Y );
    is( daughter_names($mother), 'A X Y B C D', "$method_name - Result is as documented" );
    is( node_names(@returned_nodes), 'X Y', "$method_name - Returned result is as documented" );
}

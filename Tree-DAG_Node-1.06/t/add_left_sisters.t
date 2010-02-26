#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 3 * 2;
use Tree::DAG_Node;

sub daughter_list {
    my ($node) = @_;
    return join ' ', map { $_->name } $node->daughters;
}

for my $sister_method_name ( qw( add_left_sister add_left_sisters ) ) {
    # Create a new root node, and its children.
    my $mother = Tree::DAG_Node->new( { name => 'mother' } );
    my $node_A = Tree::DAG_Node->new( { name => 'A' } );
    my $node_B = Tree::DAG_Node->new( { name => 'B' } );
    my $node_C = Tree::DAG_Node->new( { name => 'C' } );
    my $node_D = Tree::DAG_Node->new( { name => 'D' } );

    # Create 2 unlinked nodes, that will be added later.
    my $node_X = Tree::DAG_Node->new( { name => 'X' } );
    my $node_Y = Tree::DAG_Node->new( { name => 'Y' } );


    # Verifying examples in method doc.
    # XXX 4 calls instead of one, due to docs underspecifying add_daughters().
    $mother->add_daughters( $node_A );
    $mother->add_daughters( $node_B );
    $mother->add_daughters( $node_C );
    $mother->add_daughters( $node_D );
    is( daughter_list($mother), 'A B C D', "$sister_method_name - Initial order is correct");


    $node_B->$sister_method_name( );
    is( daughter_list($mother), 'A B C D', "$sister_method_name - Empty LIST causes no change");


    $node_B->$sister_method_name( $node_X, $node_Y );

    is( daughter_list($mother), 'A X Y B C D', "$sister_method_name - Result is as documented" );
    
}

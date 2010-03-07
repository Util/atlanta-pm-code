#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 5;
use Tree::DAG_Node;

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


# Create a 0 daughter tree
my($mother, @daughters) = build_tree(0);
is( $mother->left_sister( ), undef, "root node has no sisters");

# Create a 1 daughter tree
($mother, @daughters) = build_tree(1);
is( $daughters[0]->left_sister( ), undef, "only child has no sisters");

# Create a 5 daughter tree
($mother, @daughters) = build_tree(5);
is( $daughters[0]->left_sister( ), undef, "oldest child has no left sisters");
is( node_names($daughters[2]->left_sister( )), 'B', "left sister for middle child");
is( node_names($daughters[4]->left_sister( )), 'D', "left sister for last child");


#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 4;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;
my @returned_nodes;

{
    %nodes = tree_simple(0);
    my($nodeX) = node_pool('X');
    @returned_nodes = $nodes{root}->daughters;
    is( scalar(@returned_nodes), 0, 'Childless node returns empty list' );
    # XXX This should test daughters() when called with a param => Carp::croak
    eval {
        $nodes{root}->daughters($nodeX);
    };
    @returned_nodes = $nodes{root}->daughters;
    is( scalar(@returned_nodes), 0, 'daughters() does not add children' );
}

{
    %nodes = tree_simple(1);
    @returned_nodes = $nodes{root}->daughters;
    is( node_names(@returned_nodes), 'A', 'Node with one child returns one element' );
}

{
    %nodes = tree_simple(4);
    @returned_nodes = $nodes{root}->daughters;
    is( node_names(@returned_nodes), 'A B C D', 'Node with four children returns four elements' );
}

__END__


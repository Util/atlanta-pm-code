#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 4;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

{
    %nodes = tree_simple(0);
    my @returned_nodes = $nodes{root}->daughters;
    is( scalar(@returned_nodes), 0, 'Childless node returns empty list' );
}

{
    %nodes = tree_simple(1);
    my @returned_nodes = $nodes{root}->daughters;
    is( node_names(@returned_nodes), 'A', 'Node with one child returns one element' );
}

### Can this be merged with enclosure above?
{
    my $mother   = Tree::DAG_Node->new({name => 'mother'});
    my $daughter = Tree::DAG_Node->new({name => 'Sally'});
    eval {
        $mother->daughters($daughter);
    };
    my @d = $mother->daughters;
    is( scalar(@d), 0, 'daughters() does not add children' );
}

{
    %nodes = tree_simple(4);
    my @returned_nodes = $nodes{root}->daughters;
    is( node_names(@returned_nodes), 'A B C D', 'Node with four children returns four elements' );
}


__END__

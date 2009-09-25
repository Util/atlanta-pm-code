#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 1;
use Tree::DAG_Node;

# Create a new root node, and all the participants.

my $mother = Tree::DAG_Node->new({name => 'mother'});
my $node_A = Tree::DAG_Node->new({name => 'A'});
my $node_B = Tree::DAG_Node->new({name => 'B'});
my $node_C = Tree::DAG_Node->new({name => 'C'});
my $node_D = Tree::DAG_Node->new({name => 'D'});
my $node_X = Tree::DAG_Node->new({name => 'X'});
my $node_Y = Tree::DAG_Node->new({name => 'Y'});

# Build the initial tree, as in add_sisters_right docs.
#        |       
#    <mother>    
#  /---+---+---\ 
#  |   |   |   | 
# <A> <B> <C> <D>

$mother->add_daughters( $node_A, $node_B, $node_C, $node_D );

my @returned_nodes = $node_B->add_right_sisters( $node_X, $node_Y );
is( scalar(@returned_nodes), 2, 'Number of nodes returned eq number passed' );


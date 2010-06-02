#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 1;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Test root() with a complex tree
my %nodes = tree_complex();
my @node_list = keys(%nodes);

is( scalar(grep { $nodes{$_}->root() ne $nodes{root} } @node_list), 0, 'All nodes of tree have correct root()');

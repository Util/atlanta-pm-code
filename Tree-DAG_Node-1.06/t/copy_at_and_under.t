#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes = tree_complex();

# Make copy of tree
my $copy = $nodes{root}->copy_at_and_under();
is( display_child_tree($copy), 'root { A { AA AB { ABA ABB ABC } AC } B { BA } C { CA { CAA CAB } CB CC } }', 'Entire 4-generation tree replicated from root node');

# Make copy of sub-tree of a non-root node 
$copy = $nodes{AB}->copy_at_and_under();
is( display_child_tree($copy), 'AB { ABA ABB ABC }', '2-generation sub-tree replicated');


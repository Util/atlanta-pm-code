#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 3;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my %nodes;

# Create a 1 daughter tree
%nodes = tree_simple(1);

# Verify that the first daughter node is Added
is(ref($nodes{A}->mother), ref($nodes{root}), 'Child has a mother');

# Test removal of single child from the root node
my $removed_node = $nodes{A}->unlink_from_mother( );
is($nodes{A}->mother, undef, 'Child no longer has a mother');
is(ref($removed_node), ref($nodes{root}), 'Correct mother reference was returned by unlink_from_mother');


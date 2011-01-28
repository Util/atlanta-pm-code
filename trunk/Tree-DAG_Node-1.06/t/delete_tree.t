#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 4;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Test delete_tree() with root of a complex tree
my %nodes = tree_complex();
my @node_list = keys(%nodes);
$nodes{root}->delete_tree();
is( scalar(grep { ref($_) eq 'DEADNODE' } @node_list), 0, 'All nodes of tree were destroyed by delete_tree');

# Test for destruction of name attribute - all attributes should be destroyed
my $junk_to_silence_warning = $DEADNODE::nodes; # See PLANNING.
is( $DEADNODE::nodes->{ABC}, (), 'Node names were destroyed by delete_tree');

# Test DEADNODE::delete_tree
$nodes{ABC}->delete_tree();
is( ref($nodes{ABC}), 'DEADNODE', 'Can delete a deleted node');

# Test delete_tree() with non-root of a complex tree
%nodes = tree_complex();
$nodes{AC}->delete_tree();
is( scalar(grep { ref($_) eq 'DEADNODE' } @node_list), 0, 'All nodes of tree were destroyed by delete_tree');

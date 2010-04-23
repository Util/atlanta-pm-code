#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 3;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Create a 1 daughter tree
my ($mother, @daughters) = build_tree(1);

# Verify that the first daughter node is Added
is(ref($daughters[0]->mother), ref($mother), 'Child has a mother');

# Now remove the single child from the root node
my $removed_mother = $daughters[0]->unlink_from_mother( );
is($daughters[0]->mother, undef, 'Child no longer has a mother');
is(ref($removed_mother), ref($mother), 'Correct mother reference was returned by subroutine');


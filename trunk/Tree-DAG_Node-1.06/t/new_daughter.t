#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 3;
use Tree::DAG_Node;

# Create a new root node
#     |    
#  <Mother>

my $mother = Tree::DAG_Node->new({name => 'mother'});

# Create the daughter node to the root node
#    |    
# <Mother>
#    |    
# <Sally> 

my $daughter_one = $mother->new_daughter({name => 'Sally'});

# Verify that the first daughter node is Added
my @mothers_daughters = $mother->daughters;
is(@mothers_daughters, 1, 'Single child added');
is(scalar $mother->daughters, 1, 'Single child loaded');

# Verify the name of the first daughter node
is($mothers_daughters[0]->name, $daughter_one->name, 'First daughters name is Sally');

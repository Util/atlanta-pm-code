#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 3;
use Tree::DAG_Node;

my $mother = Tree::DAG_Node->new({name => 'mother'});

# Create a new root node
#     |    
#  <Mother>

my $daughter_one = $mother->new_daughter({name => 'Sally'});

# Create the daughter node to the root node
#    |    
# <Mother>
#    |    
# <Sally> 

# Verify that the first daughter node is Added
my @mothers_daughters = $mother->daughters;

# Verify the name of the first daughter node
is($mothers_daughters[0]->name, $daughter_one->name, 'First daughters name is Sally');

# Add a new daughter to be first in the mother's daughters list
my $daughter_two = $mother-> new_daughter_left({name=> 'Bobby'});

#        |           
#     <Mother>        
#    /-------\   
#    |       | 
# <Bobby> <Sally>

# Get the updated mother's daughters list
@mothers_daughters = $mother->daughters;

# Verify that the first daughter is now Bobby and the second daughter is Sally
is($mothers_daughters[0]->name, $daughter_two->name, 'First daughters name is now Bobby');
is($mothers_daughters[1]->name, $daughter_one->name, 'Second daughters name is Sally');

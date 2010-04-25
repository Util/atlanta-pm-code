#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  NOTE: new_daughter.t and new_daughter_left.t are
###  (and should remain) NEARLY identical
###

# Create a new root node
my $mother = Tree::DAG_Node->new({name => 'mother'});

# Create a first child of the root node
#
# <Mother>
#    |    
# <Sally> 

my $daughter_one = $mother->new_daughter({name => 'Sally'});

# Verify the resulting tree structure
is( display_child_tree($mother), 'mother { Sally }', 'Daughter added to existing mother with existing daughter');

# Add a new last child to the root node
my $daughter_two = $mother-> new_daughter({name=> 'Bobby'});

#     <Mother>        
#    /-------\   
#    |       | 
# <Sally> <Bobby>

# Verify the resulting tree structure
is( display_child_tree($mother), 'mother { Sally Bobby }', 'Daughter added to existing mother with existing daughter');

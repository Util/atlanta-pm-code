#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 4;
use Tree::DAG_Node;

# Create a new root node
#     |    
#  <Mother>

my $mother = Tree::DAG_Node->new({name => 'mother'});

# Create a new daughter node
my $daughter_one = Tree::DAG_Node->new({name => 'Sally'});

# Add the daughter node to the root node
#    |    
# <Mother>
#    |    
# <Sally> 
$mother->add_daughter( $daughter_one );

# Verify that the first daughter node is Added
is( scalar($mother->daughters), 1, 'Single child loaded');

# Now remove the single child from the root node
#    |    
# <Mother>
$mother->remove_daughter( $daughter_one );
is( scalar($mother->daughters), 0, 'Root nodes child removed');

# Create 3 more daughter nodes
my $daughter_two = Tree::DAG_Node->new({name => 'Luci'});
my $daughter_three = Tree::DAG_Node->new({name => 'Kendra'});
my $daughter_four = Tree::DAG_Node->new({name => 'Bobby'});

# Add two of the daughters to an array that will be used to test add_daughters_left
my @daughters = ( $daughter_two, $daughter_three, $daughter_four ); 

# call add_daughters to add daughters Two, Three and Four to the root node
#            |           
#        <Mother>        
#    /-------+-------\   
#    |       |       |   
# <Luci> <Kendra> <Bobby>
$mother->add_daughters( @daughters );

# Verify that daughters two and three were added and that daughter one still exists
is( scalar($mother->daughters), 3, 'Three children loaded');

# Now remove the children from the root node
#    |    
# <Mother>
$mother->remove_daughters( @daughters );
is( scalar($mother->daughters), 0, 'Root nodes children removed');

#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 6;
use Tree::DAG_Node;
do 't/utility.pl' or die;

my @synonymous_methods = qw( add_daughters_left add_daughter_left );
### Need to wrap tests in a for loop to cover synonyms (see add_left_sisters
###   for an example)

# Create mother node
my $mother = Tree::DAG_Node->new({name => 'mother'});

$mother->add_daughters_left( );
is( display_child_tree($mother), 'mother', "adding null list with no daughters is a no-op");

# Create second node; add as daughter to the root node
#
# <Mother>
#    |    
# <Sally> 

my $daughter_one = Tree::DAG_Node->new({name => 'Sally'});
$mother->add_daughter( $daughter_one );

# Verify that the daughter node was added
is( node_names($mother->daughters), 'Sally', "added child to mother");

# Call add_daughters_left with no LIST and verify that the object remains unchanged.
$mother->add_daughters_left( );
is( node_names($mother->daughters), 'Sally', "adding null list is no-op");

# Create 3 more daughter nodes
my $daughter_two = Tree::DAG_Node->new({name => 'Luci'});
my $daughter_three = Tree::DAG_Node->new({name => 'Kendra'});
my $daughter_four = Tree::DAG_Node->new({name => 'Bobby'});

# Add two of the daughters to an array that will be used to test add_daughters_left
my @daughters = ( $daughter_two, $daughter_three ); 

# call add_daughters_left to add daughters Two and Three to the root node
#
#        <Mother>        
#    /-------+-------\   
#    |       |       |   
# <Kendra> <Luci> <Sally>

###  Does the documentation support this test?!?
###    Do the docs require that order be preserved?

$mother->add_daughters_left( @daughters );

# Verify that daughters two and three were added and that daughter one still exists
is( node_names($mother->daughters), 'Kendra Luci Sally', "two daughters added to left");

# Call add_daughter_left with no node and verify that the object remained unchanged.
$mother->add_daughter_left( );
### is( node_names($mother->daughters), 'Kendra Luci Sally', "adding null list to 3 daughtrers is a no-op");
is( display_child_tree($mother), 'mother { Kendra Luci Sally }', "adding null list to 3 daughters is a no-op");

# Add the forth daughter by calling add_daughter_left
#
#            <Mother>            
#    /-------+-------+-------\   
#    |       |       |       |   
# <Bobby> <Kendra> <Luci> <Sally>

$mother->add_daughter_left( $daughter_four );

# Verify that daughter four is now the first daughter
is( node_names($mother->daughters), 'Bobby Kendra Luci Sally', "two daughters added to left");


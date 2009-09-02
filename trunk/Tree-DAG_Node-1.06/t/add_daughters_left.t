#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 9;
use Tree::DAG_Node;

# Create a new root node
#     |    
#  <Mother>

my $mother = Tree::DAG_Node->new({name => 'mother'});
my $copy_mother = Tree::DAG_Node->new({name => 'mother'});

# Create a new daughter node
my $daughter_one = Tree::DAG_Node->new({name => 'Sally'});
my $daughter_copy = Tree::DAG_Node->new({name => 'Sally'});

# Add the daughter node to the root node
#    |    
# <Mother>
#    |    
# <Sally> 

$mother->add_daughter( $daughter_one );
$copy_mother->add_daughter( $daughter_copy );

# Verify that the first daughter node is Added
my @mothers_daughters = $mother->daughters;
is(@mothers_daughters, 1, 'Single child added');
is(scalar $mother->daughters, 1, 'Single child loaded');

# Verify the name of the first daughter node
is($mothers_daughters[0]->name, $daughter_one->name, 'First daughters name is Sally');

# Call add_daughters_left with no LIST and verify that the object remained unchainged.
$mother->add_daughters_left( );
is_deeply($mother, $copy_mother, 'Mother is unchanged after call to add_daughters_left with no LIST');

# Create 3 more daughter nodes
my $daughter_two = Tree::DAG_Node->new({name => 'Luci'});
my $daughter_three = Tree::DAG_Node->new({name => 'Kendra'});
my $daughter_four = Tree::DAG_Node->new({name => 'Bobby'});

my $copy_daughter_two = Tree::DAG_Node->new({name => 'Luci'});
my $copy_daughter_three = Tree::DAG_Node->new({name => 'Kendra'});
my $copy_daughter_four = Tree::DAG_Node->new({name => 'Bobby'});

# Add two of the daughters to an array that will be used to test add_daughters_left
my @daughters = ( $daughter_two, $daughter_three ); 
my @copy_daughters = ( $copy_daughter_two, $copy_daughter_three ); 

# call add_daughters_left to add daughters Two and Three to the root node
#            |           
#        <Mother>        
#    /-------+-------\   
#    |       |       |   
# <Kendra> <Luci> <Sally>

$mother->add_daughters_left( @daughters );
$copy_mother->add_daughters_left( @copy_daughters);

# Get a list of the daughters
@mothers_daughters = $mother->daughters;

# Verify that daughters two and three were added and that daughter one still exists
is($mothers_daughters[0]->name, $daughter_three->name, 'First daughters name is now Kendra');
is($mothers_daughters[1]->name, $daughter_two->name, 'Second daughters name is Luci');
is($mothers_daughters[2]->name, $daughter_one->name, 'Third daughters name is Sally');

# Call add_daughter_left with no node and verify that the object remained unchainged.
$mother->add_daughter_left( );
is_deeply($mother, $copy_mother, 'Mother is unchanged after call to add_daughter_left with no node');

# Add the forth daughter by calling add_daughter_left
#                |               
#            <Mother>            
#    /-------+-------+-------\   
#    |       |       |       |   
# <Bobby> <Kendra> <Luci> <Sally>

$mother->add_daughter_left( $daughter_four );

# Update the list of the roots daughters
@mothers_daughters = $mother->daughters;

# Verify that daughter four is not the first daughter
is($mothers_daughters[0]->name, $daughter_four->name, 'First daughters name is now Bobby');


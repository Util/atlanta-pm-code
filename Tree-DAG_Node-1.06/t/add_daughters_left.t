#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 7;
use Tree::DAG_Node;

# Create a new root node
my $mother = Tree::DAG_Node->new();

# Create a new daughter node
my $daughter_one = Tree::DAG_Node->new({name => 'Sally'});

# Add the daughter node to the root node
$mother->add_daughter( $daughter_one );

# Create 3 more daughter nodes
my $daughter_two = Tree::DAG_Node->new({name => 'Luci'});
my $daughter_three = Tree::DAG_Node->new({name => 'Kendra'});
my $daughter_four = Tree::DAG_Node->new({name => 'Bobby'});

# Add two of the daughters to an array that will be used to test add_daughters_left
my @daughters = ( $daughter_two, $daughter_three ); 

# Verify that the first daughter node is Added
my @mothers_daughters = $mother->daughters;
is(@mothers_daughters, 1, 'Single child added');
is(scalar $mother->daughters, 1, 'Single child loaded');

# Verify the name of the first daughter node
is($mothers_daughters[0]->name, $daughter_one->name, 'First daughters name is Sally');

# Add daughters Two and Three to the root node
$mother->add_daughters_left( @daughters );

# Get a list of the daughters
@mothers_daughters = $mother->daughters;

# Verify that daughters two and three were added and that daughter one still exists
is($mothers_daughters[0]->name, $daughter_three->name, 'First daughters name is now Kendra');
is($mothers_daughters[1]->name, $daughter_two->name, 'Second daughters name is Luci');
is($mothers_daughters[2]->name, $daughter_one->name, 'Third daughters name is Sally');

# Add the forth daughter to test add_daughter_left
$mother->add_daughter_left( $daughter_four );

# Update the list of the roots daughters
@mothers_daughters = $mother->daughters;

# Verify that daughter four is not the first daughter
is($mothers_daughters[0]->name, $daughter_four->name, 'First daughters name is now Bobby');

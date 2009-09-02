#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 3;
use Tree::DAG_Node;

# Create a new root node
#     |    
#  <Mother>

my $mother = Tree::DAG_Node->new({name => 'mother'});

# Create a new daughter node
my $daughter = Tree::DAG_Node->new({name => 'Sally'});

# Add the daughter node to the root node
#    |    
# <Mother>
#    |    
# <Sally> 
$mother->add_daughter( $daughter );

# Verify that the first daughter node is Added
is(ref($daughter->mother), ref($mother), 'Child has a mother');

# Now remove the single child from the root node
#    |    
# <Mother>
my $removed_mother = $daughter->unlink_from_mother( );
is($daughter->mother, undef, 'Child no longer has a mother');
is(ref($removed_mother), ref($mother), 'Correct mother reference was returned by subroutine');


#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 11;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  Does not test 2nd form of address()
###

# Create a 0 daughter tree
my($mother, @daughters) = build_tree(0);
is( $mother->address(), '0', "root node has address 0");

# Create a 3 daughter tree
($mother, @daughters) = build_tree(3);
is( $mother->address(), '0', "root node has address 0");
is( $daughters[0]->address(), '0:0', "child A has address 0:0");
is( $daughters[1]->address(), '0:1', "child B has address 0:1");
is( $daughters[2]->address(), '0:2', "child C has address 0:2");

# Create children for 'B'
add_children($daughters[1], 'BA', 'BB', 'BC');
# Create children for 'BA'
my @gchildren = $daughters[1]->daughters();
add_children($gchildren[0], 'BAA', 'BAB', 'BAC');
is( $mother->address(), '0', "root node has address 0");
is( $daughters[1]->address(), '0:1', "child B has address 0:1");
is( $gchildren[0]->address(), '0:1:0', "grandchild BA has address 0:1:0");
is( $gchildren[1]->address(), '0:1:1', "grandchild BB has address 0:1:1");
is( $gchildren[2]->address(), '0:1:2', "grandchild BC has address 0:1:2");
is( ($gchildren[0]->daughters())[1]->address(), '0:1:0:1', "great-grandchild BAB has address 0:1:0:1");


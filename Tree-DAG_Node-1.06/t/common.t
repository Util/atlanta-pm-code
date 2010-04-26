#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 6;
use Tree::DAG_Node;
do 't/utility.pl' or die;

# Create a 3 daughter tree
my($mother, @daughters) = build_tree(3);
# Create grandchildren (children for 'B')
add_children($daughters[1], 'BA', 'BB', 'BC');
# Create great-grandchildren (children for 'BA')
my @gchildren = $daughters[1]->daughters();
add_children($gchildren[0], 'BAA', 'BAB', 'BAC');


# return lowest node in tree that is ancestor-or-self of $node and LIST
is( ($daughters[1]->common($daughters[0]))->address(), '0', "commonality of siblings is mother");
is( ($gchildren[0]->common($daughters[0]))->address(), '0', "commonality of aunt/neice is aunt's mother");
is( ($mother->common($gchildren[2]))->address(), '0', "commonality of mother/granddaughter is mother");
is( ($daughters[1]->common($gchildren[2]))->address(), '0:1', "commonality of mother/daughter is mother");

# if LIST is empty, return $node
is( ($gchildren[2]->common( ))->address(), '0:1:2', "commonality with null list is an identity");

# Create non-relative (xenos is Greek for foreigner)
my $xenos = Tree::DAG_Node->new( );

# If nodes are not common to a tree, undef is returned
is( $gchildren[2]->common($xenos), undef, "unrelated nodes have no commonality");


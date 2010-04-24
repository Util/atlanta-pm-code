#!/usr/bin/perl
use strict;
use warnings;
use Test::More tests => 6 * 2;
use Tree::DAG_Node;
do 't/utility.pl' or die;

###
###  NOTE: add_daughters.t and add_daughters_left.t
###  should be NEARLY identical
###

my @synonymous_methods = qw( add_daughters_left add_daughter_left );

for my $add_daughter_method ( @synonymous_methods ) {

    # Create mother node
    my $mother = Tree::DAG_Node->new({name => 'mother'});

    $mother->$add_daughter_method( );
    is( display_child_tree($mother), 'mother', "$add_daughter_method: adding null list is a no-op (no initial daughters)");

    # Create second node; add as daughter to the root node
    #
    # <Mother>
    #    |
    # <Sally>

    my $daughter_one = Tree::DAG_Node->new({name => 'Sally'});
    $mother->add_daughter( $daughter_one );

    # Verify that the daughter node was added
    is( node_names($mother->daughters), 'Sally', "$add_daughter_method: added child to mother");

    # Call method with no LIST and verify that the object remains unchanged.
    $mother->$add_daughter_method( );
    is( node_names($mother->daughters), 'Sally', "$add_daughter_method: adding null list is a no-op (1 initial daughter)");

    # Create 3 more daughter nodes
    my $daughter_two = Tree::DAG_Node->new({name => 'Luci'});
    my $daughter_three = Tree::DAG_Node->new({name => 'Kendra'});
    my $daughter_four = Tree::DAG_Node->new({name => 'Bobby'});

    # call method to add daughters Two and Three to the root node
    #
    #        <Mother>
    #    /-------+-------\
    #    |       |       |
    # <Kendra> <Luci> <Sally>

    ###  Does the documentation support this test?!?
    ###    Do the docs require that order be preserved?

    $mother->$add_daughter_method( $daughter_two, $daughter_three );

    # Verify that daughters two and three were added and that daughter one still exists
    is( node_names($mother->daughters), 'Kendra Luci Sally', "$add_daughter_method: two daughters added to left");

    # Call add_daughter_left with no node and verify that the object remained unchanged.
    $mother->add_daughter_left( );
    is( display_child_tree($mother), 'mother { Kendra Luci Sally }', "$add_daughter_method: adding null list is a no-op (3 initial daughter)");

    # Add the forth daughter by calling add_daughter_left
    #
    #            <Mother>
    #    /-------+-------+-------\
    #    |       |       |       |
    # <Bobby> <Kendra> <Luci> <Sally>

    $mother->add_daughter_left( $daughter_four );

    # Verify that daughter four is now the first daughter
    is( node_names($mother->daughters), 'Bobby Kendra Luci Sally', "$add_daughter_method: two daughters added to left");

}

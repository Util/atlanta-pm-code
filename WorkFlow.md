# Introduction #

As I sat down to write tests for the coding group I had to sit and look at documentation, command-line history and just think back to everything that was covered by Bruce during previous months meetings. Once I had finally written some tests and pushed them out to the group repository I asked for feedback and Bruce gave me a couple of pointers for future success.

During this whole process I took notes to make sure I wouldn't have the initial troubles of trying to remember all the steps.

Below is a synthesis of the notes I've taken and experience from writing a test. I hope this benefits the coding group going forward.

If I have incorrectly stated something or missed anything please let me know and feel free to update the wiki page.

# Details #

**Pull the latest code from the repository**

This is covered on the Source tab.

Once you have the code do the following to create the makefile and compile the module.

```
[woody@laptop atlanta-pm-code]$ perl Makefile.PL 
Checking if your kit is complete...
Looks good
Writing Makefile for Tree::DAG_Node

[woody@laptop atlanta-pm-code]$ make
cp lib/Tree/DAG_Node.pm blib/lib/Tree/DAG_Node.pm
Manifying blib/man3/Tree::DAG_Node.3pm

[woody@laptop atlanta-pm-code]$ 
```

**Code Coverage**

Make sure to have Devel::Cover installed. This perl module provide tools for checking the code coverage.

To install:
```
[root@laptop atlanta-pm-code]$ cpan Devel::Cover
...
[woody@laptop atlanta-pm-code]$
```

Once installed run the command to generate the test coverage information, 'cover -test'

```
[woody@laptop atlanta-pm-code]$ cover -test
Deleting database /home/woody/atlanta-pm-code/cover_db
cover: running make test OPTIMIZE=-O0\ -fprofile-arcs\ -ftest-coverage OTHERLDFLAGS=-fprofile-arcs\ -ftest-coverage
cp lib/Tree/DAG_Node.pm blib/lib/Tree/DAG_Node.pm
PERL_DL_NONLAZY=1 /usr/bin/perl "-MExtUtils::Command::MM" "-e" "test_harness(0, 'blib/lib', 'blib/arch')" t/*.t
t/00_about_verbose.t ......... ok   
t/01_old_junk.t .............. ok   
t/02_add_daughter_wrapper.t .. ok   
t/copy_at_and_under.t ........ ok   
t/copy_tree.t ................ ok   
t/mother.t ................... ok   
t/new.t ...................... ok   
All tests successful.
Files=7, Tests=34, 22 wallclock secs ( 0.05 usr  0.07 sys +  9.44 cusr 10.24 csys = 19.80 CPU)
Result: PASS
Reading database from /home/woody/atlanta-pm-code/cover_db


---------------------------- ------ ------ ------ ------ ------ ------ ------
File                           stmt   bran   cond    sub    pod   time  total
---------------------------- ------ ------ ------ ------ ------ ------ ------
...l/5.10.0/Devel/Symdump.pm    0.0    0.0    0.0    0.0  100.0    n/a    2.2
...rl/5.10.0/Pod/Coverage.pm    0.0    0.0    0.0    0.0  100.0    n/a    2.3
.../Coverage/CountParents.pm    0.0    0.0    n/a    0.0    n/a    n/a    0.0
blib/lib/Tree/DAG_Node.pm      22.2   15.5    9.7   30.8   92.1  100.0   23.0
Total                          15.1   11.7    6.2   23.3   93.3  100.0   16.9
---------------------------- ------ ------ ------ ------ ------ ------ ------


Writing HTML output to /home/woody/atlanta-pm-code/cover_db/coverage.html ...
done.

[woody@laptop atlanta-pm-code]$
```

Using your browser of choice, load the page "$HOME/atlanta-pm-code/cover\_db/coverage.html" to examine the code coverage.

Click on the link: 'blib/lib/Tree/DAG\_Node.pm'

At the top you can see the percentage of code coverage.

![http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/headers.png](http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/headers.png)

I believe that the main focus is on the first three columns.

| line | | Line number of the code |
|:-----|:|:------------------------|
| stmt | Statement coverage | How many times that statement was tested. |
| bran | Branch coverage | Shows if the tests covered both choices of a branching statement. |
| cond | Condition coverage | Shows if the tests covered all possibilities of a logical condition. |
| sub | Subroutine coverage | Shows how much of the subroutine was tested. |


Here is an example of an untested subroutine:

![http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/coverage.png](http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/coverage.png)


**Create or take ownership of an issue**

If you see an existing issue you want to take ownership of do so or look at the code coverage and find out which subroutines have not been tested yet and create a new Issue stating that subroutine has not been tested.

For the example above we will create a new issue for subroutines 'add\_daughters\_left' & 'add\_daughter\_left' not being tested.

![http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/add_issue.png](http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/add_issue.png)

Submit the issue and take note of the issue number that you just created. You will need it later when you go to push your test back out to the SVN repository.

**Write the tests for the subroutine**

The tests exist under the "t/" directory. The current standard is to use the subroutine name as the filename of the test with the ".t" extension.

```
vi t/add_daughters_left.t

#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 7;
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
my @mothers_daughters = $mother->daughters;
is(@mothers_daughters, 1, 'Single child added');
is(scalar $mother->daughters, 1, 'Single child loaded');

# Verify the name of the first daughter node
is($mothers_daughters[0]->name, $daughter_one->name, 'First daughters name is Sally');

# Create 3 more daughter nodes
my $daughter_two = Tree::DAG_Node->new({name => 'Luci'});
my $daughter_three = Tree::DAG_Node->new({name => 'Kendra'});
my $daughter_four = Tree::DAG_Node->new({name => 'Bobby'});

# Add two of the daughters to an array that will be used to test add_daughters_left
my @daughters = ( $daughter_two, $daughter_three ); 

# call add_daughters_left to add daughters Two and Three to the root node
#            |           
#        <Mother>        
#    /-------+-------\   
#    |       |       |   
# <Kendra> <Luci> <Sally>

$mother->add_daughters_left( @daughters );

# Get a list of the daughters
@mothers_daughters = $mother->daughters;

# Verify that daughters two and three were added and that daughter one still exists
is($mothers_daughters[0]->name, $daughter_three->name, 'First daughters name is now Kendra');
is($mothers_daughters[1]->name, $daughter_two->name, 'Second daughters name is Luci');
is($mothers_daughters[2]->name, $daughter_one->name, 'Third daughters name is Sally');

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

```


**Test the new test**

Run the new test:

```
[woody@laptop atlanta-pm-code]$ prove -lv t/add_daughters_left.t 
t/add_daughters_left.t .. 
1..7
ok 1 - Single child added
ok 2 - Single child loaded
ok 3 - First daughters name is Sally
ok 4 - First daughters name is now Kendra
ok 5 - Second daughters name is Luci
ok 6 - Third daughters name is Sally
ok 7 - First daughters name is now Bobby
ok
All tests successful.
Files=1, Tests=7,  1 wallclock secs ( 0.00 usr +  0.00 sys =  0.00 CPU)
Result: PASS

[woody@laptop atlanta-pm-code]$
```

Re-Run the cover command to see how much the new tests affected the coverage.

```
[woody@laptop atlanta-pm-code]$ cover -test
Deleting database /home/woody/atlanta-pm-code/cover_db
cover: running make test OPTIMIZE=-O0\ -fprofile-arcs\ -ftest-coverage OTHERLDFLAGS=-fprofile-arcs\ -ftest-coverage
PERL_DL_NONLAZY=1 /usr/bin/perl "-MExtUtils::Command::MM" "-e" "test_harness(0, 'blib/lib', 'blib/arch')" t/*.t
t/00_about_verbose.t ......... ok   
t/01_old_junk.t .............. ok   
t/02_add_daughter_wrapper.t .. ok   
t/add_daughters_left.t ....... ok   
t/copy_at_and_under.t ........ ok   
t/copy_tree.t ................ ok   
t/mother.t ................... ok   
All tests successful.
Files=7, Tests=33, 16 wallclock secs ( 0.01 usr  0.01 sys +  1.42 cusr  0.93 csys =  2.37 CPU)
Result: PASS
Reading database from /home/woody/atlanta-pm-code/cover_db


---------------------------- ------ ------ ------ ------ ------ ------ ------
File                           stmt   bran   cond    sub    pod   time  total
---------------------------- ------ ------ ------ ------ ------ ------ ------
blib/lib/Tree/DAG_Node.pm      22.9   14.9    6.5   34.1   92.1  100.0   23.2
Total                          22.9   14.9    6.5   34.1   92.1  100.0   23.2
---------------------------- ------ ------ ------ ------ ------ ------ ------


Writing HTML output to /home/woody/atlanta-pm-code/cover_db/coverage.html ...
done.

[woody@laptop atlanta-pm-code]$
```

Refresh the coverage webpage and verify that your tests have covered the subroutine.

![http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/coverage_updated.png](http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/coverage_updated.png)

**Add your test to the repository**

Once you are satisfied that your tests are good add them to the repository.

```
[woody@laptop atlanta-pm-code]$ svn add t/add_daughters_left.t 
A         t/add_daughters_left.t

[woody@laptop atlanta-pm-code]$
```

Then commit your test to the repository with a comment stating what issue it was created for to resolve.

```
[woody@laptop atlanta-pm-code]$ svn commit -m "Test t/add_daughters_left.t created for Issue #11" t/add_daughters_left.t 
Adding         t/add_daughters_left.t
Transmitting file data .
Committed revision 47.

[woody@laptop atlanta-pm-code]$
```


**Update and Close the Issue**

Update the issue with stating the test was added in the revision number that was shown when you committed the test and change the status to "Fixed".

![http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/issue_updated.png](http://atlanta-pm-code.googlecode.com/svn/wiki/Workflow.attach/issue_updated.png)

**Wash, rinse, repeat**
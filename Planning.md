# PLANNING #

Two tests - using 1 child, using 2

also, passing nothing causes no change, returns empty string, and kills no babies.


$node->add\_left\_sisters( LIST )

This adds the elements in LIST (in that order) as immediate left sisters of $node. In other words, given that B's mother's daughter-list is (A,B,C,D), calling B->add\_left\_sisters(X,Y) makes B's mother's daughter-list (A,X,Y,B,C,D).

If LIST is empty, this is a no-op, and returns empty-list.

This is basically implemented as a call to $node->replace\_with(LIST, $node), and so all replace\_with's limitations and caveats apply.

The return value of $node->add\_left\_sisters( LIST ) is the elements of LIST that got added, as returned by replace\_with -- minus the copies of $node you'd get from a straight call to $node->replace\_with(LIST, $node).

2:

> initial setup

> create mother 'M'

> create 2 daughters of mother 'A' 'B'

> create 2 unlinked nodes, that will be added later 'X' 'Y'

Do the test as documented
> add to the left of first or second?
> Try both!

```
# Get the updated mother's daughters list
@mothers_daughters = $mother->daughters;

# Get the updated mother's daughters list
@mothers_daughters_names = map { $_->name() } $mother->daughters;
$mothers_daughters_names = join ' ', map { $_->name() } $mother->daughters;

is( $mothers_daughters_names, 'A X Y B', 'add_left_sisters, inserted mid-list');
...
is( $mothers_daughters_names, 'X Y A B', 'add_left_sisters, inserted front-of-list');
```

Test for ordering

Add this document as a "planning" doc to the repo!



---


**2010-02-25**

New issue: $mother->add\_daughters( LIST ) docs does not specify that the order of the elements in LIST is preserved, only that successive calls will append to the right.

add\_left\_sisters - need to address last example of return value after further study.

Change **2 to refer to method name array.**

add\_right\_sisters - port new code in add\_left\_sisters, and vice versa.


---


**Tests**

List of methods in Tree::DAG\_Node
(+ means a test file has been created; - means the method is entirely untested)

| - | $node->new |
|:--|:-----------|
| + | $node->daughters |
| + | $node->mother |
| + | $node->new\_daughter( LIST ) |
| + | $node->new\_daughter\_left( LIST ) |
| ? | $node->add\_daughter( LIST ) |
| + | $node->add\_daughter\_left( LIST ) |
| + | $node->remove\_daughter( LIST ) |
| + | $node->unlink\_from\_mother |
| - | $node->replace\_with( LIST ) |
| - | $node->replace\_with\_daughters |
| + | $node->add\_left\_sisters( LIST ) |
| + | $node->add\_left\_sister( LIST ) |
| + | $node->add\_right\_sisters( LIST ) |
| + | $node->add\_right\_sister( LIST ) |
| - | $node->name or $node->name(SCALAR) |
| - | $node->attributes or $node->attributes(SCALAR) |
| - | $node->attribute or $node->attribute(SCALAR) |
| - | $node->is\_node |
| - | $node->ancestors |
| - | $node->root |
| - | $node->is\_daughter\_of($node2) |
| - | $node->self\_and\_descendants |
| - | $node->descendants |
| - | $node->leaves\_under |
| - | $node->depth\_under |
| - | $node->generation |
| - | $node->generation\_under(NODE2) |
| - | $node->self\_and\_sisters |
| - | $node->sisters |
| - | $node->left\_sister |
| - | $node->left\_sisters |
| - | $node->right\_sister |
| - | $node->right\_sisters |
| - | $node->my\_daughter\_index |
| - | $node->address or $anynode->address(ADDRESS) |
| - | $node->common(LIST) |
| - | $node->common\_ancestor(LIST) |
| - | $node->walk\_down({ callback => \&foo, callbackback => \&foo, ... }) |
| - | $node->tree\_to\_lol\_notation({...options...}) |
| - | $node->tree\_to\_lol |
| - | $node->tree\_to\_simple\_lol |
| - | $node->tree\_to\_simple\_lol\_notation({...options...}) |
| + | $node->copy\_tree or $node->copy\_tree({...options...}) |
| + | $node->copy\_at\_and\_under or $node->copy\_at\_and\_under({...options...}) |
| - | $node->delete\_tree |
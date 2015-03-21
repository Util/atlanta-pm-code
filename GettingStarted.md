

# Introduction #

The Atlanta PM code group has decided to adopt the [Tree-DAG\_Node](http://search.cpan.org/perldoc?Tree::DAG_Node) CPAN module.

# Prerequisites #

In order to work on this project, you will need the following software installed:

  * Perl - [Home](http://perl.com/) - [Download](http://www.perl.com/download.csp#binary) - [Documentation](http://www.perl.org/docs.html)

  * Subversion - [Home](http://subversion.tigris.org/) - [Download](http://subversion.tigris.org/getting.html) - [Subversion Book](http://svnbook.red-bean.com/)
    * Binary packages are available for most platforms (Windows, Linux, OS X, etc.).

  * A text editor
    * [Vim](http://www.vim.org/download.php) - FOSS - POSIX/Mac OS X/Windows
    * [Emacs](http://www.gnu.org/software/emacs/) - FOSS - POSIX/Mac OS X/Windows
    * [TextMate](http://macromates.com/) - Commercial - Mac OS X
    * [E](http://www.e-texteditor.com/) - Commercial - Windows
    * [TextWrangler](http://barebones.com/products/textwrangler/) - Free - Mac OS X
    * [BBEdit](http://barebones.com/products/bbedit/)- Commercial - Mac OS X
    * [Smultron](http://smultron.sourceforge.net/) - FOSS - Mac OS X

Aditionally, you will need Google Code credentials (username/[password](http://code.google.com/hosting/settings)). Contact one of the Project owners to join the group. Note: even if your Google Code username is identical to your Gmail address, your Google Code password will always be different from your Gmail password.

# Obtain the project source code #

After you have subversion, you can checkout the source code.

With the `svn` command line client, type the following:
```
svn checkout https://atlanta-pm-code.googlecode.com/svn/trunk/Tree-DAG_Node-1.06/ atlanta-pm-code --username YourGoogleCodeUsername
```

With GUI clients, you should be able to checkout the source code by providing the subversion URL (https://atlanta-pm-code.googlecode.com/svn/trunk/) and your Google Code credentials (username/[password](http://code.google.com/hosting/settings)).

# Overview of Test Coverage #

http://search.cpan.org/~pjcj/Devel-Cover-0.64/lib/Devel/Cover/Tutorial.pod

Nitty gritty: install Devel::Cover via cpan, toggle switches, or other method of your choosing; type "cover -test" in directory with code base (parent of "t"); stand back

# Other resources (by author) #

[Ian Langworth](http://langworth.com/): [Perl testing reference card](http://langworth.com/pub/notes/perltestref.html) (discussed at Sep 2008 meeting), [Perl Testing: A Developer's Notebook](http://www.amazon.com/exec/obidos/ASIN/0596100922/) (book)

[Gabor Szabo](https://www.linkedin.com/profile?viewProfile=&key=82476): [Automatic Testing with Perl](http://www.pti.co.il/talks/perl_in_testing/) ([downloadable version](http://www.pti.co.il/talks.html)), [blog entries on testing](http://www.szabgab.com/blog/tags/testing.html)
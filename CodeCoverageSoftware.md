# Introduction #

There are some CPAN modules that are used to determine the test coverage for a source program.

# Details #

After you have checked out the source (see GettingStarted), you need to install some CPAN modules.  Change into the testing\_tools sub directory.  The most up to date instructions are located in README in that directory.

# Installing Perl Modules #
CPAN is a internet repository of Perl Modules that are available for installation.  To install a given module, download and extract the tarball.  Cd into the extracted source and run the following commands:

  * perl Makefile.PL
    * Checks for any pre-requisites and generates a Makefile for you.
  * make
    * Compiles the source code (if required), creates Perl module files, POD documentation, etc
  * make test
    * Runs the tests that are included with the perl module to test/verify your compilation
  * [sudo](sudo.md) make install
    * Installs the perl module in the standard module directory so that your perl programs can find those modules.  Sudo is required if you are not running make install as root.
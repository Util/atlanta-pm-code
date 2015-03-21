This is a work in progress. More soon.


---


# Introduction #

These are notes on how to use the svnX GUI client (a Mac only client) to access the atlanta-pm-code repository.

# Configuration #

## Install svn ##

I'm still running Tiger (10.4), so `svn` is not included with the OS. If you are running Leopard (10.5), you can skip this step.

There are three binary distributions of `svn` for the Mac. If you use Fink or MacPorts, you may want to look at the page on [getting svn](http://subversion.tigris.org/getting.html#osx). Otherwise, there are no prerequisites for using the [package from CollabNet](http://www.collab.net/downloads/community/).

I installed the subversion 1.4.4 package from another source in 2007. The current version from CollabNet is 1.5.1. I think it installs in `/usr/local` by default.

## Install svnX ##

Download the [svnX client](http://www.lachoseinteractive.net/en/community/subversion/svnx/), mount the disk image, and drag the application to one of your Application folder hierarchies. SvnX is distributed under an open source license.

Other clients are listed on the [subversion site](http://subversion.tigris.org/links.html#clients).

In the Preferences, make sure that the path to the `svn` binaries is correct. Also, set the "Diff application" to your preference. I think FileMerge from Apple's Developer Tools is the default, but svnX can also use TextWrangler, BBEdit, XCode, and other text editors (some of these editors include `svn` support of their own).

## Decide where to put your working copies ##

You may already have a location suitable for your working copies. If not, create a  directory for the purpose. I created `~/Documents/atlanta-perl-mongers`.

## Configure svnX for the atlanta-pm-code repository ##

In svnX, choose "Repositories" in the "Windows" menu. In the "Repositories" window, click the "+" button. Give the new entry a name (like "Atlanta Perl Mongers Code Group") and enter `https://atlanta-pm-code.googlecode.com/svn/trunk/` for the path.

The "User" and "Pass" are your Google identity on Google Code and your [googlecode.com password](http://code.google.com/hosting/settings) (this is distinct from the password you use for Gmail, Google docs, or other Google services).

## Configure svnX for your working copy ##

My `svn` installation does not seem to come with a list of trusted certificate authorities, so I get a warning that "The certificate is not issued by a trusted authority." If yours comes with such a list, you can probably skip ahead to the GUI configuration part of this section.

To handle this issue, open Terminal.app (from the Utilites directory), change (`cd`) into the directory where you want to place your working copy (`~/Documents/atlanta-perl-mongers` for me), and checkout the source tree manually. When the warning occurs, you'll get an opportunity to accept the certificate temporarily or permanently. You can verify the certificate in your browser by going to `https://atlanta-pm-code.googlecode.com/svn/trunk/` and entering your Google code credentials. Once there, you should be able to examine the certificate; in Firefox 3, double click the lock in the status bar (bottom right) to get more information about the certificate. After verifying it manually, I chose to accept it permanently. Here's the transcript from my initial checkout:
```
$ cd ~/Documents/atlanta-perl-mongers
$ svn checkout https://atlanta-pm-code.googlecode.com/svn/trunk/ atlanta-pm-code --username stephen.cristol
Error validating server certificate for 'https://atlanta-pm-code.googlecode.com:443':
 - The certificate is not issued by a trusted authority. Use the
   fingerprint to validate the certificate manually!
Certificate information:
 - Hostname: googlecode.com
 - Valid: from May 28 15:48:13 2008 GMT until Jun 21 13:09:43 2010 GMT
 - Issuer: Certification Services Division, Thawte Consulting cc, Cape Town, Western Cape, ZA
 - Fingerprint: b1:3a:d5:38:56:27:52:9f:ba:6c:70:1e:a9:ab:4a:1a:8b:da:ff:ec
(R)eject, accept (t)emporarily or accept (p)ermanently? p

Authentication realm: <https://atlanta-pm-code.googlecode.com:443> Google Code Subversion Repository
Password for 'stephen.cristol': 
A    atlanta-pm-code/Tree-DAG_Node-1.06
A    atlanta-pm-code/Tree-DAG_Node-1.06/t
[...1000+ lines deleted...]
A    atlanta-pm-code/testing_tools/Template-Toolkit-2.19/examples/lib/examples/splash/tabsbox
svn: REPORT request failed on '/svn/!svn/vcc/default'
svn: REPORT of '/svn/!svn/vcc/default': 200 OK (https://atlanta-pm-code.googlecode.com)
$
```
If you accept a certificate permanently, it is stored in a file named from the SHA1 fingerprint of the certificate in `~/.subversion/auth/svn.ssl.server/`.

In svnX, choose "Working Copies" in the "Windows" menu. In the "Working Copies" window, click the "+" button. Give the new entry a name (like "APM Code"). Next to the path field, click the magnifying glass and select the directory where you want to place your working copy. I don't know if it is necessary, but I replicated my Google code credentials in this entry ("User" and "Pass").

Double click the entry you created (in the list at the top of the window) to open a working copy browser. This lets you examine the code in the working copy you checked out. In my limited experience, this will not match my expectation of what is in the tree (often things are shown in red). Click the refresh button and the browser will synchronize with the working copy.

## Notes ##

  * As one relatively new to `svn`, I find it helpful to disable "flat mode" in the working copy browser (uncheck the "flat mode" check box).

  * Double clicking on a repository in the list at the top of the "Repositories" window will open a repository browser. This lets you examine the source code repository. It is the same information you can get through the web based [source browser](http://code.google.com/p/atlanta-pm-code/source/browse/), but has richer navigation features.

  * Google code stores wiki entries in the same subversion repository used for the project code. At times, this will cause the revision number to advance beyond the changes in the code repository.

  * You can check out subsets of the repository using the repository browser. Select the branch of the tree you want in the bottom pane of the browser and click the "svn checkout" button. This may prompt you for a new location to store it and create a new entry in the working copy browser.

To be covered in an update:
  * Doing `diff`s
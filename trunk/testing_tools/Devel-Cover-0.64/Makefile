# This Makefile is for the Devel::Cover extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.30 (Revision: Revision: 4535 ) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#
#   MakeMaker Parameters:

#     ABSTRACT => q[Code coverage metrics for Perl]
#     AUTHOR => q[Paul Johnson (pjcj@cpan.org)]
#     DIR => []
#     EXE_FILES => [q[cover], q[gcov2perl], q[cpancover]]
#     NAME => q[Devel::Cover]
#     PREREQ_PM => { Digest::MD5=>q[0], Storable=>q[0] }
#     VERSION => q[0.64]
#     clean => { FILES=>q[t/*] }
#     depend => { distdir=>q[BUGS CHANGES Cover.xs MANIFEST MANIFEST.SKIP META.yml Makefile.PL README TODO all_versions buildperl cover cpancover create_gold gcov2perl lib/Devel/Cover.pm lib/Devel/Cover/Annotation/Random.pm lib/Devel/Cover/Annotation/Svk.pm lib/Devel/Cover/Branch.pm lib/Devel/Cover/Condition.pm lib/Devel/Cover/Condition_and_2.pm lib/Devel/Cover/Condition_and_3.pm lib/Devel/Cover/Condition_or_2.pm lib/Devel/Cover/Condition_or_3.pm lib/Devel/Cover/Condition_xor_4.pm lib/Devel/Cover/Criterion.pm lib/Devel/Cover/DB.pm lib/Devel/Cover/DB/File.pm lib/Devel/Cover/DB/Structure.pm lib/Devel/Cover/Inc.pm lib/Devel/Cover/Op.pm lib/Devel/Cover/Pod.pm lib/Devel/Cover/Report/Compilation.pm lib/Devel/Cover/Report/Html.pm lib/Devel/Cover/Report/Html_basic.pm lib/Devel/Cover/Report/Html_minimal.pm lib/Devel/Cover/Report/Html_subtle.pm lib/Devel/Cover/Report/Sort.pm lib/Devel/Cover/Report/Text.pm lib/Devel/Cover/Report/Text2.pm lib/Devel/Cover/Statement.pm lib/Devel/Cover/Subroutine.pm lib/Devel/Cover/Test.pm lib/Devel/Cover/Time.pm lib/Devel/Cover/Truth_Table.pm lib/Devel/Cover/Tutorial.pod lib/Devel/Cover/Web.pm scanuncov session.vim test_output/cover/alias.5.006001 test_output/cover/alias1.5.006001 test_output/cover/alias1.5.008 test_output/cover/branch_return_sub.5.006001 test_output/cover/branch_return_sub.5.008 test_output/cover/change.5.006001 test_output/cover/cond_and.5.006001 test_output/cover/cond_and.5.008 test_output/cover/cond_and.5.008001 test_output/cover/cond_branch.5.006001 test_output/cover/cond_branch.5.008 test_output/cover/cond_branch.5.008001 test_output/cover/cond_or.5.006001 test_output/cover/cond_or.5.006002 test_output/cover/cond_or.5.008 test_output/cover/cond_or.5.008001 test_output/cover/cond_or.5.009005 test_output/cover/cond_or.5.010000 test_output/cover/cond_xor.5.006001 test_output/cover/cond_xor.5.008 test_output/cover/cond_xor.5.008001 test_output/cover/default_param.5.006001 test_output/cover/default_param.5.008 test_output/cover/default_param.5.008001 test_output/cover/deparse.5.006001 test_output/cover/deparse.5.008 test_output/cover/destroy.5.006001 test_output/cover/dynamic_subs.5.006001 test_output/cover/dynamic_subs.5.008 test_output/cover/dynamic_subs.5.008001 test_output/cover/dynamic_subs.5.008002 test_output/cover/eval1.5.006001 test_output/cover/eval1.5.008 test_output/cover/eval2.5.006001 test_output/cover/eval2.5.008 test_output/cover/eval3.5.006001 test_output/cover/eval3.5.008 test_output/cover/eval_sub.t.5.006001 test_output/cover/eval_sub.t.5.008 test_output/cover/eval_use.t.5.006001 test_output/cover/eval_use.t.5.008 test_output/cover/exec.5.006001 test_output/cover/fork.5.006001 test_output/cover/if.5.006001 test_output/cover/if.5.008 test_output/cover/inc_sub.5.006001 test_output/cover/inc_sub.5.008 test_output/cover/inc_sub.5.009005 test_output/cover/md5.5.006001 test_output/cover/module1.5.006001 test_output/cover/module1.5.008 test_output/cover/module1.5.008001 test_output/cover/module2.5.006001 test_output/cover/module2.5.008 test_output/cover/module2.5.008001 test_output/cover/module_ignore.5.006001 test_output/cover/module_ignore.5.008 test_output/cover/module_ignore.5.008001 test_output/cover/module_import.5.006001 test_output/cover/module_import.5.008 test_output/cover/module_import.5.008001 test_output/cover/module_relative.5.006001 test_output/cover/module_relative.5.008 test_output/cover/module_relative.5.008001 test_output/cover/overload_bool.5.006001 test_output/cover/overload_bool.5.008 test_output/cover/overloaded.5.006001 test_output/cover/overloaded.5.008 test_output/cover/pod.5.006001 test_output/cover/pod.5.008 test_output/cover/pod_nocp.5.006001 test_output/cover/pod_nocp.5.008 test_output/cover/require.5.006001 test_output/cover/require.5.008 test_output/cover/skip.5.006001 test_output/cover/sort.5.006001 test_output/cover/sort.5.008 test_output/cover/special_blocks.5.006001 test_output/cover/special_blocks.5.008 test_output/cover/special_blocks.5.008001 test_output/cover/special_blocks.5.009005 test_output/cover/statement.5.006001 test_output/cover/subs_only.5.006001 test_output/cover/t0.5.006001 test_output/cover/t0.5.008 test_output/cover/t0.5.008001 test_output/cover/t1.5.006001 test_output/cover/t1.5.008 test_output/cover/t2.5.006001 test_output/cover/t2.5.008 test_output/cover/t2.5.008001 test_output/cover/trivial.5.006001 test_output/cover/uncoverable.5.006001 tests/.uncoverable tests/Alias1.pm tests/E2.pm tests/E3.pm tests/E4.pm tests/IncSub.pm tests/Module1.pm tests/Module2.pm tests/Module_import.pm tests/PodMod.pm tests/alias tests/alias1 tests/branch_return_sub tests/change.t tests/cond_and tests/cond_branch tests/cond_or tests/cond_or.pl tests/cond_xor tests/default_param tests/deparse tests/destroy tests/dynamic_subs tests/eval1 tests/eval2 tests/eval3 tests/eval_sub.t tests/eval_use.t tests/exec tests/fork tests/if tests/inc_sub tests/md5.t tests/module1 tests/module2 tests/module_ignore tests/module_import tests/module_relative tests/overload_bool tests/overloaded tests/pod tests/pod_nocp tests/random/dir/file tests/require tests/skip tests/sort tests/special_blocks tests/statement tests/subs_only tests/t0 tests/t1 tests/t2 tests/trivial tests/uncoverable typemap] }
#     dist => { COMPRESS=>q[gzip --best --force] }
#     realclean => { FILES=>q[lib/Devel/Cover/Inc.pm cover_db t] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /System/Library/Perl/5.8.8/darwin-thread-multi-2level/Config.pm)

# They may have been overridden via Makefile.PL or on the command line
AR = ar
CC = cc
CCCDLFLAGS =  
CCDLFLAGS =  
DLEXT = bundle
DLSRC = dl_dlopen.xs
LD = cc -mmacosx-version-min=10.5
LDDLFLAGS = -arch i386 -arch ppc -bundle -undefined dynamic_lookup -L/usr/local/lib
LDFLAGS = -arch i386 -arch ppc -L/usr/local/lib
LIBC = /usr/lib/libc.dylib
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = darwin
OSVERS = 9.0
RANLIB = /usr/bin/ar ts
SITELIBEXP = /Library/Perl/5.8.8
SITEARCHEXP = /Library/Perl/5.8.8/darwin-thread-multi-2level
SO = dylib
EXE_EXT = 
FULL_AR = /usr/bin/ar
VENDORARCHEXP = /Network/Library/Perl/5.8.8/darwin-thread-multi-2level
VENDORLIBEXP = /Network/Library/Perl/5.8.8


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = Devel::Cover
NAME_SYM = Devel_Cover
VERSION = 0.64
VERSION_MACRO = VERSION
VERSION_SYM = 0_64
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.64
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3pm
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /
SITEPREFIX = /usr/local
VENDORPREFIX = /usr/local
INSTALLPRIVLIB = /System/Library/Perl/5.8.8
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /Library/Perl/5.8.8
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = /Network/Library/Perl/5.8.8
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /System/Library/Perl/5.8.8/darwin-thread-multi-2level
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /Library/Perl/5.8.8/darwin-thread-multi-2level
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = /Network/Library/Perl/5.8.8/darwin-thread-multi-2level
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/local/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = /usr/local/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLMAN1DIR = /usr/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/local/share/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = /usr/local/share/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/local/share/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = /usr/local/share/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /System/Library/Perl/5.8.8
PERL_ARCHLIB = /System/Library/Perl/5.8.8/darwin-thread-multi-2level
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /System/Library/Perl/5.8.8/darwin-thread-multi-2level/CORE
PERL = /usr/bin/perl
FULLPERL = /usr/bin/perl
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /System/Library/Perl/5.8.8/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.30
MM_REVISION = Revision: 4535 

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = Devel/Cover
BASEEXT = Cover
PARENT_NAME = Devel
DLBASE = $(BASEEXT)
VERSION_FROM = 
OBJECT = $(BASEEXT)$(OBJ_EXT)
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = Cover.xs
C_FILES  = Cover.c
O_FILES  = Cover.o
H_FILES  = 
MAN1PODS = cover \
	cpancover \
	gcov2perl
MAN3PODS = lib/Devel/Cover.pm \
	lib/Devel/Cover/Annotation/Random.pm \
	lib/Devel/Cover/Annotation/Svk.pm \
	lib/Devel/Cover/Branch.pm \
	lib/Devel/Cover/Condition.pm \
	lib/Devel/Cover/Condition_and_2.pm \
	lib/Devel/Cover/Condition_and_3.pm \
	lib/Devel/Cover/Condition_or_2.pm \
	lib/Devel/Cover/Condition_or_3.pm \
	lib/Devel/Cover/Condition_xor_4.pm \
	lib/Devel/Cover/Criterion.pm \
	lib/Devel/Cover/DB.pm \
	lib/Devel/Cover/DB/File.pm \
	lib/Devel/Cover/DB/Structure.pm \
	lib/Devel/Cover/Op.pm \
	lib/Devel/Cover/Pod.pm \
	lib/Devel/Cover/Report/Compilation.pm \
	lib/Devel/Cover/Report/Html.pm \
	lib/Devel/Cover/Report/Html_basic.pm \
	lib/Devel/Cover/Report/Html_minimal.pm \
	lib/Devel/Cover/Report/Html_subtle.pm \
	lib/Devel/Cover/Report/Sort.pm \
	lib/Devel/Cover/Report/Text.pm \
	lib/Devel/Cover/Report/Text2.pm \
	lib/Devel/Cover/Statement.pm \
	lib/Devel/Cover/Subroutine.pm \
	lib/Devel/Cover/Time.pm \
	lib/Devel/Cover/Truth_Table.pm \
	lib/Devel/Cover/Tutorial.pod \
	lib/Devel/Cover/Web.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/Devel
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/Devel

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = $(INST_ARCHAUTODIR)/$(BASEEXT)$(LIB_EXT)
INST_DYNAMIC     = $(INST_ARCHAUTODIR)/$(DLBASE).$(DLEXT)
INST_BOOT        = $(INST_ARCHAUTODIR)/$(BASEEXT).bs

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/Devel/Cover.pm \
	lib/Devel/Cover/Annotation/Random.pm \
	lib/Devel/Cover/Annotation/Svk.pm \
	lib/Devel/Cover/Branch.pm \
	lib/Devel/Cover/Condition.pm \
	lib/Devel/Cover/Condition_and_2.pm \
	lib/Devel/Cover/Condition_and_3.pm \
	lib/Devel/Cover/Condition_or_2.pm \
	lib/Devel/Cover/Condition_or_3.pm \
	lib/Devel/Cover/Condition_xor_4.pm \
	lib/Devel/Cover/Criterion.pm \
	lib/Devel/Cover/DB.pm \
	lib/Devel/Cover/DB/File.pm \
	lib/Devel/Cover/DB/Structure.pm \
	lib/Devel/Cover/Inc.pm \
	lib/Devel/Cover/Op.pm \
	lib/Devel/Cover/Pod.pm \
	lib/Devel/Cover/Report/Compilation.pm \
	lib/Devel/Cover/Report/Html.pm \
	lib/Devel/Cover/Report/Html_basic.pm \
	lib/Devel/Cover/Report/Html_minimal.pm \
	lib/Devel/Cover/Report/Html_subtle.pm \
	lib/Devel/Cover/Report/Sort.pm \
	lib/Devel/Cover/Report/Text.pm \
	lib/Devel/Cover/Report/Text2.pm \
	lib/Devel/Cover/Statement.pm \
	lib/Devel/Cover/Subroutine.pm \
	lib/Devel/Cover/Test.pm \
	lib/Devel/Cover/Time.pm \
	lib/Devel/Cover/Truth_Table.pm \
	lib/Devel/Cover/Tutorial.pod \
	lib/Devel/Cover/Web.pm

PM_TO_BLIB = lib/Devel/Cover/Statement.pm \
	blib/lib/Devel/Cover/Statement.pm \
	lib/Devel/Cover/Subroutine.pm \
	blib/lib/Devel/Cover/Subroutine.pm \
	lib/Devel/Cover/Report/Sort.pm \
	blib/lib/Devel/Cover/Report/Sort.pm \
	lib/Devel/Cover/DB/Structure.pm \
	blib/lib/Devel/Cover/DB/Structure.pm \
	lib/Devel/Cover/Condition_or_2.pm \
	blib/lib/Devel/Cover/Condition_or_2.pm \
	lib/Devel/Cover/Report/Html.pm \
	blib/lib/Devel/Cover/Report/Html.pm \
	lib/Devel/Cover/Op.pm \
	blib/lib/Devel/Cover/Op.pm \
	lib/Devel/Cover/Inc.pm \
	blib/lib/Devel/Cover/Inc.pm \
	lib/Devel/Cover/Pod.pm \
	blib/lib/Devel/Cover/Pod.pm \
	lib/Devel/Cover/Annotation/Random.pm \
	blib/lib/Devel/Cover/Annotation/Random.pm \
	lib/Devel/Cover/Condition_and_2.pm \
	blib/lib/Devel/Cover/Condition_and_2.pm \
	lib/Devel/Cover/Report/Html_minimal.pm \
	blib/lib/Devel/Cover/Report/Html_minimal.pm \
	lib/Devel/Cover/Time.pm \
	blib/lib/Devel/Cover/Time.pm \
	lib/Devel/Cover/Condition_or_3.pm \
	blib/lib/Devel/Cover/Condition_or_3.pm \
	lib/Devel/Cover/Report/Html_subtle.pm \
	blib/lib/Devel/Cover/Report/Html_subtle.pm \
	lib/Devel/Cover/DB/File.pm \
	blib/lib/Devel/Cover/DB/File.pm \
	lib/Devel/Cover/Condition_xor_4.pm \
	blib/lib/Devel/Cover/Condition_xor_4.pm \
	lib/Devel/Cover/Web.pm \
	blib/lib/Devel/Cover/Web.pm \
	lib/Devel/Cover/Branch.pm \
	blib/lib/Devel/Cover/Branch.pm \
	lib/Devel/Cover/Condition_and_3.pm \
	blib/lib/Devel/Cover/Condition_and_3.pm \
	lib/Devel/Cover.pm \
	blib/lib/Devel/Cover.pm \
	lib/Devel/Cover/Report/Html_basic.pm \
	blib/lib/Devel/Cover/Report/Html_basic.pm \
	lib/Devel/Cover/Report/Text.pm \
	blib/lib/Devel/Cover/Report/Text.pm \
	lib/Devel/Cover/Report/Text2.pm \
	blib/lib/Devel/Cover/Report/Text2.pm \
	lib/Devel/Cover/Report/Compilation.pm \
	blib/lib/Devel/Cover/Report/Compilation.pm \
	lib/Devel/Cover/DB.pm \
	blib/lib/Devel/Cover/DB.pm \
	lib/Devel/Cover/Truth_Table.pm \
	blib/lib/Devel/Cover/Truth_Table.pm \
	lib/Devel/Cover/Tutorial.pod \
	blib/lib/Devel/Cover/Tutorial.pod \
	lib/Devel/Cover/Criterion.pm \
	blib/lib/Devel/Cover/Criterion.pm \
	lib/Devel/Cover/Test.pm \
	blib/lib/Devel/Cover/Test.pm \
	lib/Devel/Cover/Condition.pm \
	blib/lib/Devel/Cover/Condition.pm \
	lib/Devel/Cover/Annotation/Svk.pm \
	blib/lib/Devel/Cover/Annotation/Svk.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 1.50
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)'



# --- MakeMaker tool_xsubpp section:

XSUBPPDIR = /System/Library/Perl/5.8.8/ExtUtils
XSUBPP = $(XSUBPPDIR)$(DFSEP)xsubpp
XSUBPPRUN = $(PERLRUN) $(XSUBPP)
XSPROTOARG = 
XSUBPPDEPS = /System/Library/Perl/5.8.8/ExtUtils/typemap typemap $(XSUBPP)
XSUBPPARGS = -typemap /System/Library/Perl/5.8.8/ExtUtils/typemap -typemap typemap
XSUBPP_EXTRA_ARGS = 


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(SHELL) -c true
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) "-MExtUtils::Command" -e mkpath
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) "-MExtUtils::Command" -e eqtime
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install({@ARGV}, '\''$(VERBINST)'\'', 0, '\''$(UNINST)'\'');'
DOC_INSTALL = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e perllocal_install
UNINSTALL = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e uninstall
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e warn_if_old_packlist
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(PERLRUN) "-MExtUtils::MY" -e "MY->fixin(shift)"


# --- MakeMaker makemakerdflt section:
makemakerdflt: all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best --force
SUFFIX = .gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Devel-Cover
DISTVNAME = Devel-Cover-0.64


# --- MakeMaker macro section:


# --- MakeMaker depend section:
distdir : BUGS CHANGES Cover.xs MANIFEST MANIFEST.SKIP META.yml Makefile.PL README TODO all_versions buildperl cover cpancover create_gold gcov2perl lib/Devel/Cover.pm lib/Devel/Cover/Annotation/Random.pm lib/Devel/Cover/Annotation/Svk.pm lib/Devel/Cover/Branch.pm lib/Devel/Cover/Condition.pm lib/Devel/Cover/Condition_and_2.pm lib/Devel/Cover/Condition_and_3.pm lib/Devel/Cover/Condition_or_2.pm lib/Devel/Cover/Condition_or_3.pm lib/Devel/Cover/Condition_xor_4.pm lib/Devel/Cover/Criterion.pm lib/Devel/Cover/DB.pm lib/Devel/Cover/DB/File.pm lib/Devel/Cover/DB/Structure.pm lib/Devel/Cover/Inc.pm lib/Devel/Cover/Op.pm lib/Devel/Cover/Pod.pm lib/Devel/Cover/Report/Compilation.pm lib/Devel/Cover/Report/Html.pm lib/Devel/Cover/Report/Html_basic.pm lib/Devel/Cover/Report/Html_minimal.pm lib/Devel/Cover/Report/Html_subtle.pm lib/Devel/Cover/Report/Sort.pm lib/Devel/Cover/Report/Text.pm lib/Devel/Cover/Report/Text2.pm lib/Devel/Cover/Statement.pm lib/Devel/Cover/Subroutine.pm lib/Devel/Cover/Test.pm lib/Devel/Cover/Time.pm lib/Devel/Cover/Truth_Table.pm lib/Devel/Cover/Tutorial.pod lib/Devel/Cover/Web.pm scanuncov session.vim test_output/cover/alias.5.006001 test_output/cover/alias1.5.006001 test_output/cover/alias1.5.008 test_output/cover/branch_return_sub.5.006001 test_output/cover/branch_return_sub.5.008 test_output/cover/change.5.006001 test_output/cover/cond_and.5.006001 test_output/cover/cond_and.5.008 test_output/cover/cond_and.5.008001 test_output/cover/cond_branch.5.006001 test_output/cover/cond_branch.5.008 test_output/cover/cond_branch.5.008001 test_output/cover/cond_or.5.006001 test_output/cover/cond_or.5.006002 test_output/cover/cond_or.5.008 test_output/cover/cond_or.5.008001 test_output/cover/cond_or.5.009005 test_output/cover/cond_or.5.010000 test_output/cover/cond_xor.5.006001 test_output/cover/cond_xor.5.008 test_output/cover/cond_xor.5.008001 test_output/cover/default_param.5.006001 test_output/cover/default_param.5.008 test_output/cover/default_param.5.008001 test_output/cover/deparse.5.006001 test_output/cover/deparse.5.008 test_output/cover/destroy.5.006001 test_output/cover/dynamic_subs.5.006001 test_output/cover/dynamic_subs.5.008 test_output/cover/dynamic_subs.5.008001 test_output/cover/dynamic_subs.5.008002 test_output/cover/eval1.5.006001 test_output/cover/eval1.5.008 test_output/cover/eval2.5.006001 test_output/cover/eval2.5.008 test_output/cover/eval3.5.006001 test_output/cover/eval3.5.008 test_output/cover/eval_sub.t.5.006001 test_output/cover/eval_sub.t.5.008 test_output/cover/eval_use.t.5.006001 test_output/cover/eval_use.t.5.008 test_output/cover/exec.5.006001 test_output/cover/fork.5.006001 test_output/cover/if.5.006001 test_output/cover/if.5.008 test_output/cover/inc_sub.5.006001 test_output/cover/inc_sub.5.008 test_output/cover/inc_sub.5.009005 test_output/cover/md5.5.006001 test_output/cover/module1.5.006001 test_output/cover/module1.5.008 test_output/cover/module1.5.008001 test_output/cover/module2.5.006001 test_output/cover/module2.5.008 test_output/cover/module2.5.008001 test_output/cover/module_ignore.5.006001 test_output/cover/module_ignore.5.008 test_output/cover/module_ignore.5.008001 test_output/cover/module_import.5.006001 test_output/cover/module_import.5.008 test_output/cover/module_import.5.008001 test_output/cover/module_relative.5.006001 test_output/cover/module_relative.5.008 test_output/cover/module_relative.5.008001 test_output/cover/overload_bool.5.006001 test_output/cover/overload_bool.5.008 test_output/cover/overloaded.5.006001 test_output/cover/overloaded.5.008 test_output/cover/pod.5.006001 test_output/cover/pod.5.008 test_output/cover/pod_nocp.5.006001 test_output/cover/pod_nocp.5.008 test_output/cover/require.5.006001 test_output/cover/require.5.008 test_output/cover/skip.5.006001 test_output/cover/sort.5.006001 test_output/cover/sort.5.008 test_output/cover/special_blocks.5.006001 test_output/cover/special_blocks.5.008 test_output/cover/special_blocks.5.008001 test_output/cover/special_blocks.5.009005 test_output/cover/statement.5.006001 test_output/cover/subs_only.5.006001 test_output/cover/t0.5.006001 test_output/cover/t0.5.008 test_output/cover/t0.5.008001 test_output/cover/t1.5.006001 test_output/cover/t1.5.008 test_output/cover/t2.5.006001 test_output/cover/t2.5.008 test_output/cover/t2.5.008001 test_output/cover/trivial.5.006001 test_output/cover/uncoverable.5.006001 tests/.uncoverable tests/Alias1.pm tests/E2.pm tests/E3.pm tests/E4.pm tests/IncSub.pm tests/Module1.pm tests/Module2.pm tests/Module_import.pm tests/PodMod.pm tests/alias tests/alias1 tests/branch_return_sub tests/change.t tests/cond_and tests/cond_branch tests/cond_or tests/cond_or.pl tests/cond_xor tests/default_param tests/deparse tests/destroy tests/dynamic_subs tests/eval1 tests/eval2 tests/eval3 tests/eval_sub.t tests/eval_use.t tests/exec tests/fork tests/if tests/inc_sub tests/md5.t tests/module1 tests/module2 tests/module_ignore tests/module_import tests/module_relative tests/overload_bool tests/overloaded tests/pod tests/pod_nocp tests/random/dir/file tests/require tests/skip tests/sort tests/special_blocks tests/statement tests/subs_only tests/t0 tests/t1 tests/t2 tests/trivial tests/uncoverable typemap


# --- MakeMaker cflags section:

CCFLAGS = -arch i386 -arch ppc -g -pipe -fno-common -DPERL_DARWIN -no-cpp-precomp -fno-strict-aliasing -Wdeclaration-after-statement -I/usr/local/include
OPTIMIZE = -O3
PERLTYPE = 
MPOLLUTE = 


# --- MakeMaker const_loadlibs section:

# Devel::Cover might depend on some other libraries:
# See ExtUtils::Liblist for details
#


# --- MakeMaker const_cccmd section:
CCCMD = $(CC) -c $(PASTHRU_INC) $(INC) \
	$(CCFLAGS) $(OPTIMIZE) \
	$(PERLTYPE) $(MPOLLUTE) $(DEFINE_VERSION) \
	$(XS_DEFINE_VERSION)

# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	OPTIMIZE="$(OPTIMIZE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:

.c.i:
	cc -E -c $(PASTHRU_INC) $(INC) \
	$(CCFLAGS) $(OPTIMIZE) \
	$(PERLTYPE) $(MPOLLUTE) $(DEFINE_VERSION) \
	$(XS_DEFINE_VERSION) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c > $*.i

.c.s:
	$(CCCMD) -S $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c

.c$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c

.C$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.C

.cpp$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cpp

.cxx$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cxx

.cc$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cc


# --- MakeMaker xs_c section:

.xs.c:
	$(XSUBPPRUN) $(XSPROTOARG) $(XSUBPPARGS) $(XSUBPP_EXTRA_ARGS) $*.xs > $*.xsc && $(MV) $*.xsc $*.c


# --- MakeMaker xs_o section:

.xs$(OBJ_EXT):
	$(XSUBPPRUN) $(XSPROTOARG) $(XSUBPPARGS) $*.xs > $*.xsc && $(MV) $*.xsc $*.c
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) 755 $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) 755 $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) 755 $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) 755 $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) 755 $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) 755 $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) 755 $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) 755 $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:
BOOTSTRAP = $(BASEEXT).bs

# As Mkbootstrap might not write a file (if none is required)
# we use touch to prevent make continually trying to remake it.
# The DynaLoader only reads a non-empty file.
$(BOOTSTRAP) : $(FIRST_MAKEFILE) $(BOOTDEP) $(INST_ARCHAUTODIR)$(DFSEP).exists
	$(NOECHO) $(ECHO) "Running Mkbootstrap for $(NAME) ($(BSLOADLIBS))"
	$(NOECHO) $(PERLRUN) \
		"-MExtUtils::Mkbootstrap" \
		-e "Mkbootstrap('$(BASEEXT)','$(BSLOADLIBS)');"
	$(NOECHO) $(TOUCH) $@
	$(CHMOD) $(PERM_RW) $@

$(INST_BOOT) : $(BOOTSTRAP) $(INST_ARCHAUTODIR)$(DFSEP).exists
	$(NOECHO) $(RM_RF) $@
	- $(CP) $(BOOTSTRAP) $@
	$(CHMOD) $(PERM_RW) $@


# --- MakeMaker dynamic_lib section:

# This section creates the dynamically loadable $(INST_DYNAMIC)
# from $(OBJECT) and possibly $(MYEXTLIB).
ARMAYBE = :
OTHERLDFLAGS = 
INST_DYNAMIC_DEP = 
INST_DYNAMIC_FIX = 

$(INST_DYNAMIC): $(OBJECT) $(MYEXTLIB) $(BOOTSTRAP) $(INST_ARCHAUTODIR)$(DFSEP).exists $(EXPORT_LIST) $(PERL_ARCHIVE) $(PERL_ARCHIVE_AFTER) $(INST_DYNAMIC_DEP)
	$(RM_F) $@
	$(LD)  $(LDDLFLAGS) $(LDFROM) $(OTHERLDFLAGS) -o $@ $(MYEXTLIB)	\
	  $(PERL_ARCHIVE) $(LDLOADLIBS) $(PERL_ARCHIVE_AFTER) $(EXPORT_LIST)	\
	  $(INST_DYNAMIC_FIX)
	$(CHMOD) $(PERM_RWX) $@


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:

$(INST_STATIC) : $(OBJECT) $(MYEXTLIB) $(INST_ARCHAUTODIR)$(DFSEP).exists
	$(RM_RF) $@
	$(FULL_AR) $(AR_STATIC_ARGS) $@ $(OBJECT) && $(RANLIB) $@
	$(CHMOD) $(PERM_RWX) $@
	$(NOECHO) $(ECHO) "$(EXTRALIBS)" > $(INST_ARCHAUTODIR)/extralibs.ld


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	cover \
	gcov2perl \
	cpancover \
	lib/Devel/Cover/DB/File.pm \
	lib/Devel/Cover/Statement.pm \
	lib/Devel/Cover/Subroutine.pm \
	lib/Devel/Cover/Report/Sort.pm \
	lib/Devel/Cover/DB/Structure.pm \
	lib/Devel/Cover/Web.pm \
	lib/Devel/Cover/Condition_xor_4.pm \
	lib/Devel/Cover/Condition_or_2.pm \
	lib/Devel/Cover/Branch.pm \
	lib/Devel/Cover/Op.pm \
	lib/Devel/Cover/Report/Html.pm \
	lib/Devel/Cover/Condition_and_3.pm \
	lib/Devel/Cover.pm \
	lib/Devel/Cover/Report/Html_basic.pm \
	lib/Devel/Cover/Report/Text.pm \
	lib/Devel/Cover/Pod.pm \
	lib/Devel/Cover/Report/Text2.pm \
	lib/Devel/Cover/Annotation/Random.pm \
	lib/Devel/Cover/Condition_and_2.pm \
	lib/Devel/Cover/Report/Html_minimal.pm \
	lib/Devel/Cover/Report/Compilation.pm \
	lib/Devel/Cover/DB.pm \
	lib/Devel/Cover/Truth_Table.pm \
	lib/Devel/Cover/Tutorial.pod \
	lib/Devel/Cover/Time.pm \
	lib/Devel/Cover/Condition_or_3.pm \
	lib/Devel/Cover/Criterion.pm \
	lib/Devel/Cover/Report/Html_subtle.pm \
	lib/Devel/Cover/Condition.pm \
	lib/Devel/Cover/Annotation/Svk.pm \
	lib/Devel/Cover/DB/File.pm \
	lib/Devel/Cover/Statement.pm \
	lib/Devel/Cover/Subroutine.pm \
	lib/Devel/Cover/Report/Sort.pm \
	lib/Devel/Cover/DB/Structure.pm \
	lib/Devel/Cover/Web.pm \
	lib/Devel/Cover/Condition_xor_4.pm \
	lib/Devel/Cover/Condition_or_2.pm \
	lib/Devel/Cover/Branch.pm \
	lib/Devel/Cover/Op.pm \
	lib/Devel/Cover/Report/Html.pm \
	lib/Devel/Cover/Condition_and_3.pm \
	lib/Devel/Cover.pm \
	lib/Devel/Cover/Report/Html_basic.pm \
	lib/Devel/Cover/Report/Text.pm \
	lib/Devel/Cover/Pod.pm \
	lib/Devel/Cover/Report/Text2.pm \
	lib/Devel/Cover/Annotation/Random.pm \
	lib/Devel/Cover/Condition_and_2.pm \
	lib/Devel/Cover/Report/Html_minimal.pm \
	lib/Devel/Cover/Report/Compilation.pm \
	lib/Devel/Cover/DB.pm \
	lib/Devel/Cover/Truth_Table.pm \
	lib/Devel/Cover/Tutorial.pod \
	lib/Devel/Cover/Time.pm \
	lib/Devel/Cover/Condition_or_3.pm \
	lib/Devel/Cover/Criterion.pm \
	lib/Devel/Cover/Report/Html_subtle.pm \
	lib/Devel/Cover/Condition.pm \
	lib/Devel/Cover/Annotation/Svk.pm
	$(NOECHO) $(POD2MAN) --section=1 --perm_rw=$(PERM_RW) \
	  cover $(INST_MAN1DIR)/cover.$(MAN1EXT) \
	  gcov2perl $(INST_MAN1DIR)/gcov2perl.$(MAN1EXT) \
	  cpancover $(INST_MAN1DIR)/cpancover.$(MAN1EXT) 
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/Devel/Cover/DB/File.pm $(INST_MAN3DIR)/Devel::Cover::DB::File.$(MAN3EXT) \
	  lib/Devel/Cover/Statement.pm $(INST_MAN3DIR)/Devel::Cover::Statement.$(MAN3EXT) \
	  lib/Devel/Cover/Subroutine.pm $(INST_MAN3DIR)/Devel::Cover::Subroutine.$(MAN3EXT) \
	  lib/Devel/Cover/Report/Sort.pm $(INST_MAN3DIR)/Devel::Cover::Report::Sort.$(MAN3EXT) \
	  lib/Devel/Cover/DB/Structure.pm $(INST_MAN3DIR)/Devel::Cover::DB::Structure.$(MAN3EXT) \
	  lib/Devel/Cover/Web.pm $(INST_MAN3DIR)/Devel::Cover::Web.$(MAN3EXT) \
	  lib/Devel/Cover/Condition_xor_4.pm $(INST_MAN3DIR)/Devel::Cover::Condition_xor_4.$(MAN3EXT) \
	  lib/Devel/Cover/Condition_or_2.pm $(INST_MAN3DIR)/Devel::Cover::Condition_or_2.$(MAN3EXT) \
	  lib/Devel/Cover/Branch.pm $(INST_MAN3DIR)/Devel::Cover::Branch.$(MAN3EXT) \
	  lib/Devel/Cover/Op.pm $(INST_MAN3DIR)/Devel::Cover::Op.$(MAN3EXT) \
	  lib/Devel/Cover/Report/Html.pm $(INST_MAN3DIR)/Devel::Cover::Report::Html.$(MAN3EXT) \
	  lib/Devel/Cover/Condition_and_3.pm $(INST_MAN3DIR)/Devel::Cover::Condition_and_3.$(MAN3EXT) \
	  lib/Devel/Cover.pm $(INST_MAN3DIR)/Devel::Cover.$(MAN3EXT) \
	  lib/Devel/Cover/Report/Html_basic.pm $(INST_MAN3DIR)/Devel::Cover::Report::Html_basic.$(MAN3EXT) \
	  lib/Devel/Cover/Report/Text.pm $(INST_MAN3DIR)/Devel::Cover::Report::Text.$(MAN3EXT) \
	  lib/Devel/Cover/Pod.pm $(INST_MAN3DIR)/Devel::Cover::Pod.$(MAN3EXT) \
	  lib/Devel/Cover/Report/Text2.pm $(INST_MAN3DIR)/Devel::Cover::Report::Text2.$(MAN3EXT) \
	  lib/Devel/Cover/Annotation/Random.pm $(INST_MAN3DIR)/Devel::Cover::Annotation::Random.$(MAN3EXT) \
	  lib/Devel/Cover/Condition_and_2.pm $(INST_MAN3DIR)/Devel::Cover::Condition_and_2.$(MAN3EXT) \
	  lib/Devel/Cover/Report/Html_minimal.pm $(INST_MAN3DIR)/Devel::Cover::Report::Html_minimal.$(MAN3EXT) \
	  lib/Devel/Cover/Report/Compilation.pm $(INST_MAN3DIR)/Devel::Cover::Report::Compilation.$(MAN3EXT) \
	  lib/Devel/Cover/DB.pm $(INST_MAN3DIR)/Devel::Cover::DB.$(MAN3EXT) \
	  lib/Devel/Cover/Truth_Table.pm $(INST_MAN3DIR)/Devel::Cover::Truth_Table.$(MAN3EXT) \
	  lib/Devel/Cover/Tutorial.pod $(INST_MAN3DIR)/Devel::Cover::Tutorial.$(MAN3EXT) \
	  lib/Devel/Cover/Time.pm $(INST_MAN3DIR)/Devel::Cover::Time.$(MAN3EXT) \
	  lib/Devel/Cover/Condition_or_3.pm $(INST_MAN3DIR)/Devel::Cover::Condition_or_3.$(MAN3EXT) \
	  lib/Devel/Cover/Criterion.pm $(INST_MAN3DIR)/Devel::Cover::Criterion.$(MAN3EXT) \
	  lib/Devel/Cover/Report/Html_subtle.pm $(INST_MAN3DIR)/Devel::Cover::Report::Html_subtle.$(MAN3EXT) \
	  lib/Devel/Cover/Condition.pm $(INST_MAN3DIR)/Devel::Cover::Condition.$(MAN3EXT) \
	  lib/Devel/Cover/Annotation/Svk.pm $(INST_MAN3DIR)/Devel::Cover::Annotation::Svk.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:

EXE_FILES = cover gcov2perl cpancover

pure_all :: $(INST_SCRIPT)/cover $(INST_SCRIPT)/gcov2perl $(INST_SCRIPT)/cpancover
	$(NOECHO) $(NOOP)

realclean ::
	$(RM_F) \
	  $(INST_SCRIPT)/cover $(INST_SCRIPT)/gcov2perl \
	  $(INST_SCRIPT)/cpancover 

$(INST_SCRIPT)/cover : cover $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/cover
	$(CP) cover $(INST_SCRIPT)/cover
	$(FIXIN) $(INST_SCRIPT)/cover
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/cover

$(INST_SCRIPT)/gcov2perl : gcov2perl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/gcov2perl
	$(CP) gcov2perl $(INST_SCRIPT)/gcov2perl
	$(FIXIN) $(INST_SCRIPT)/gcov2perl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/gcov2perl

$(INST_SCRIPT)/cpancover : cpancover $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/cpancover
	$(CP) cpancover $(INST_SCRIPT)/cpancover
	$(FIXIN) $(INST_SCRIPT)/cpancover
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/cpancover



# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts core.[0-9][0-9][0-9][0-9] \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld Cover.c \
	  blibdirs.ts core.[0-9][0-9][0-9][0-9][0-9] \
	  *perl.core core.*perl.*.? \
	  $(MAKE_APERL_FILE) perl \
	  $(BASEEXT).def core.[0-9][0-9][0-9] \
	  mon.out lib$(BASEEXT).def \
	  perlmain.c perl.exe \
	  so_locations $(BASEEXT).exp 
	- $(RM_RF) \
	  t/* blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(OBJECT) $(MAKEFILE_OLD) \
	  $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  cover_db lib/Devel/Cover/Inc.pm \
	  $(DISTVNAME) t 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '# http://module-build.sourceforge.net/META-spec.html' > META_new.yml
	$(NOECHO) $(ECHO) '#XXXXXXX This is a prototype!!!  It will change in the future!!! XXXXX#' >> META_new.yml
	$(NOECHO) $(ECHO) 'name:         Devel-Cover' >> META_new.yml
	$(NOECHO) $(ECHO) 'version:      0.64' >> META_new.yml
	$(NOECHO) $(ECHO) 'version_from: ' >> META_new.yml
	$(NOECHO) $(ECHO) 'installdirs:  site' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    Digest::MD5:                   0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Storable:                      0' >> META_new.yml
	$(NOECHO) $(ECHO) '' >> META_new.yml
	$(NOECHO) $(ECHO) 'distribution_type: module' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by: ExtUtils::MakeMaker version 6.30' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ *.orig */*~ */*.orig



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';'

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{META.yml} => q{Module meta-data (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"'



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"'
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: all pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: all pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: all pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: all pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE:
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:

PERL_HDRS = \
	$(PERL_INC)/EXTERN.h		\
	$(PERL_INC)/INTERN.h		\
	$(PERL_INC)/XSUB.h		\
	$(PERL_INC)/av.h		\
	$(PERL_INC)/cc_runtime.h	\
	$(PERL_INC)/config.h		\
	$(PERL_INC)/cop.h		\
	$(PERL_INC)/cv.h		\
	$(PERL_INC)/dosish.h		\
	$(PERL_INC)/embed.h		\
	$(PERL_INC)/embedvar.h		\
	$(PERL_INC)/fakethr.h		\
	$(PERL_INC)/form.h		\
	$(PERL_INC)/gv.h		\
	$(PERL_INC)/handy.h		\
	$(PERL_INC)/hv.h		\
	$(PERL_INC)/intrpvar.h		\
	$(PERL_INC)/iperlsys.h		\
	$(PERL_INC)/keywords.h		\
	$(PERL_INC)/mg.h		\
	$(PERL_INC)/nostdio.h		\
	$(PERL_INC)/op.h		\
	$(PERL_INC)/opcode.h		\
	$(PERL_INC)/patchlevel.h	\
	$(PERL_INC)/perl.h		\
	$(PERL_INC)/perlio.h		\
	$(PERL_INC)/perlsdio.h		\
	$(PERL_INC)/perlsfio.h		\
	$(PERL_INC)/perlvars.h		\
	$(PERL_INC)/perly.h		\
	$(PERL_INC)/pp.h		\
	$(PERL_INC)/pp_proto.h		\
	$(PERL_INC)/proto.h		\
	$(PERL_INC)/regcomp.h		\
	$(PERL_INC)/regexp.h		\
	$(PERL_INC)/regnodes.h		\
	$(PERL_INC)/scope.h		\
	$(PERL_INC)/sv.h		\
	$(PERL_INC)/thrdvar.h		\
	$(PERL_INC)/thread.h		\
	$(PERL_INC)/unixish.h		\
	$(PERL_INC)/util.h

$(OBJECT) : $(PERL_HDRS)

Cover.c : $(XSUBPPDEPS)


# --- MakeMaker makefile section:

$(OBJECT) : $(FIRST_MAKEFILE)

# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	false



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE)

test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: pure_all $(MAP_TARGET)
	PERL_DL_NONLAZY=1 ./$(MAP_TARGET) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_static :: pure_all $(MAP_TARGET)
	PERL_DL_NONLAZY=1 ./$(MAP_TARGET) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)



# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd:
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="0,64,0,0">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <TITLE>$(DISTNAME)</TITLE>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Code coverage metrics for Perl</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Paul Johnson (pjcj@cpan.org)</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Digest-MD5" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Storable" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <OS NAME="$(OSNAME)" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="darwin-thread-multi-2level" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', '\''$(PM_FILTER)'\'')' \
	  lib/Devel/Cover/Statement.pm blib/lib/Devel/Cover/Statement.pm \
	  lib/Devel/Cover/Subroutine.pm blib/lib/Devel/Cover/Subroutine.pm \
	  lib/Devel/Cover/Report/Sort.pm blib/lib/Devel/Cover/Report/Sort.pm \
	  lib/Devel/Cover/DB/Structure.pm blib/lib/Devel/Cover/DB/Structure.pm \
	  lib/Devel/Cover/Condition_or_2.pm blib/lib/Devel/Cover/Condition_or_2.pm \
	  lib/Devel/Cover/Report/Html.pm blib/lib/Devel/Cover/Report/Html.pm \
	  lib/Devel/Cover/Op.pm blib/lib/Devel/Cover/Op.pm \
	  lib/Devel/Cover/Inc.pm blib/lib/Devel/Cover/Inc.pm \
	  lib/Devel/Cover/Pod.pm blib/lib/Devel/Cover/Pod.pm \
	  lib/Devel/Cover/Annotation/Random.pm blib/lib/Devel/Cover/Annotation/Random.pm \
	  lib/Devel/Cover/Condition_and_2.pm blib/lib/Devel/Cover/Condition_and_2.pm \
	  lib/Devel/Cover/Report/Html_minimal.pm blib/lib/Devel/Cover/Report/Html_minimal.pm \
	  lib/Devel/Cover/Time.pm blib/lib/Devel/Cover/Time.pm \
	  lib/Devel/Cover/Condition_or_3.pm blib/lib/Devel/Cover/Condition_or_3.pm \
	  lib/Devel/Cover/Report/Html_subtle.pm blib/lib/Devel/Cover/Report/Html_subtle.pm \
	  lib/Devel/Cover/DB/File.pm blib/lib/Devel/Cover/DB/File.pm \
	  lib/Devel/Cover/Condition_xor_4.pm blib/lib/Devel/Cover/Condition_xor_4.pm \
	  lib/Devel/Cover/Web.pm blib/lib/Devel/Cover/Web.pm \
	  lib/Devel/Cover/Branch.pm blib/lib/Devel/Cover/Branch.pm \
	  lib/Devel/Cover/Condition_and_3.pm blib/lib/Devel/Cover/Condition_and_3.pm \
	  lib/Devel/Cover.pm blib/lib/Devel/Cover.pm \
	  lib/Devel/Cover/Report/Html_basic.pm blib/lib/Devel/Cover/Report/Html_basic.pm \
	  lib/Devel/Cover/Report/Text.pm blib/lib/Devel/Cover/Report/Text.pm \
	  lib/Devel/Cover/Report/Text2.pm blib/lib/Devel/Cover/Report/Text2.pm \
	  lib/Devel/Cover/Report/Compilation.pm blib/lib/Devel/Cover/Report/Compilation.pm \
	  lib/Devel/Cover/DB.pm blib/lib/Devel/Cover/DB.pm \
	  lib/Devel/Cover/Truth_Table.pm blib/lib/Devel/Cover/Truth_Table.pm \
	  lib/Devel/Cover/Tutorial.pod blib/lib/Devel/Cover/Tutorial.pod \
	  lib/Devel/Cover/Criterion.pm blib/lib/Devel/Cover/Criterion.pm \
	  lib/Devel/Cover/Test.pm blib/lib/Devel/Cover/Test.pm \
	  lib/Devel/Cover/Condition.pm blib/lib/Devel/Cover/Condition.pm \
	  lib/Devel/Cover/Annotation/Svk.pm blib/lib/Devel/Cover/Annotation/Svk.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:

SET_VERSION = $(PERL) -pi \
    -e 's/(^\s*(?:our\s+)\$$VERSION = ")\d+\.\d+(";)/$${1}0.64$$2/;' \
    -e 's/(Version )\d+\.\d+( - ).*/$${1}0.64$${2}10th April 2008/;' \
    -e 's/(Devel::Cover Version )\d+\.\d+/$${1}0.64/;' \
    -e 's/(\buse Devel::Cover(?:::\w+)*\s+)\d+\.\d+/$${1}0.64/;'

tags : BUGS CHANGES Cover.xs MANIFEST MANIFEST.SKIP META.yml Makefile.PL README TODO all_versions buildperl cover cpancover create_gold gcov2perl lib/Devel/Cover.pm lib/Devel/Cover/Annotation/Random.pm lib/Devel/Cover/Annotation/Svk.pm lib/Devel/Cover/Branch.pm lib/Devel/Cover/Condition.pm lib/Devel/Cover/Condition_and_2.pm lib/Devel/Cover/Condition_and_3.pm lib/Devel/Cover/Condition_or_2.pm lib/Devel/Cover/Condition_or_3.pm lib/Devel/Cover/Condition_xor_4.pm lib/Devel/Cover/Criterion.pm lib/Devel/Cover/DB.pm lib/Devel/Cover/DB/File.pm lib/Devel/Cover/DB/Structure.pm lib/Devel/Cover/Inc.pm lib/Devel/Cover/Op.pm lib/Devel/Cover/Pod.pm lib/Devel/Cover/Report/Compilation.pm lib/Devel/Cover/Report/Html.pm lib/Devel/Cover/Report/Html_basic.pm lib/Devel/Cover/Report/Html_minimal.pm lib/Devel/Cover/Report/Html_subtle.pm lib/Devel/Cover/Report/Sort.pm lib/Devel/Cover/Report/Text.pm lib/Devel/Cover/Report/Text2.pm lib/Devel/Cover/Statement.pm lib/Devel/Cover/Subroutine.pm lib/Devel/Cover/Test.pm lib/Devel/Cover/Time.pm lib/Devel/Cover/Truth_Table.pm lib/Devel/Cover/Tutorial.pod lib/Devel/Cover/Web.pm scanuncov session.vim test_output/cover/alias.5.006001 test_output/cover/alias1.5.006001 test_output/cover/alias1.5.008 test_output/cover/branch_return_sub.5.006001 test_output/cover/branch_return_sub.5.008 test_output/cover/change.5.006001 test_output/cover/cond_and.5.006001 test_output/cover/cond_and.5.008 test_output/cover/cond_and.5.008001 test_output/cover/cond_branch.5.006001 test_output/cover/cond_branch.5.008 test_output/cover/cond_branch.5.008001 test_output/cover/cond_or.5.006001 test_output/cover/cond_or.5.006002 test_output/cover/cond_or.5.008 test_output/cover/cond_or.5.008001 test_output/cover/cond_or.5.009005 test_output/cover/cond_or.5.010000 test_output/cover/cond_xor.5.006001 test_output/cover/cond_xor.5.008 test_output/cover/cond_xor.5.008001 test_output/cover/default_param.5.006001 test_output/cover/default_param.5.008 test_output/cover/default_param.5.008001 test_output/cover/deparse.5.006001 test_output/cover/deparse.5.008 test_output/cover/destroy.5.006001 test_output/cover/dynamic_subs.5.006001 test_output/cover/dynamic_subs.5.008 test_output/cover/dynamic_subs.5.008001 test_output/cover/dynamic_subs.5.008002 test_output/cover/eval1.5.006001 test_output/cover/eval1.5.008 test_output/cover/eval2.5.006001 test_output/cover/eval2.5.008 test_output/cover/eval3.5.006001 test_output/cover/eval3.5.008 test_output/cover/eval_sub.t.5.006001 test_output/cover/eval_sub.t.5.008 test_output/cover/eval_use.t.5.006001 test_output/cover/eval_use.t.5.008 test_output/cover/exec.5.006001 test_output/cover/fork.5.006001 test_output/cover/if.5.006001 test_output/cover/if.5.008 test_output/cover/inc_sub.5.006001 test_output/cover/inc_sub.5.008 test_output/cover/inc_sub.5.009005 test_output/cover/md5.5.006001 test_output/cover/module1.5.006001 test_output/cover/module1.5.008 test_output/cover/module1.5.008001 test_output/cover/module2.5.006001 test_output/cover/module2.5.008 test_output/cover/module2.5.008001 test_output/cover/module_ignore.5.006001 test_output/cover/module_ignore.5.008 test_output/cover/module_ignore.5.008001 test_output/cover/module_import.5.006001 test_output/cover/module_import.5.008 test_output/cover/module_import.5.008001 test_output/cover/module_relative.5.006001 test_output/cover/module_relative.5.008 test_output/cover/module_relative.5.008001 test_output/cover/overload_bool.5.006001 test_output/cover/overload_bool.5.008 test_output/cover/overloaded.5.006001 test_output/cover/overloaded.5.008 test_output/cover/pod.5.006001 test_output/cover/pod.5.008 test_output/cover/pod_nocp.5.006001 test_output/cover/pod_nocp.5.008 test_output/cover/require.5.006001 test_output/cover/require.5.008 test_output/cover/skip.5.006001 test_output/cover/sort.5.006001 test_output/cover/sort.5.008 test_output/cover/special_blocks.5.006001 test_output/cover/special_blocks.5.008 test_output/cover/special_blocks.5.008001 test_output/cover/special_blocks.5.009005 test_output/cover/statement.5.006001 test_output/cover/subs_only.5.006001 test_output/cover/t0.5.006001 test_output/cover/t0.5.008 test_output/cover/t0.5.008001 test_output/cover/t1.5.006001 test_output/cover/t1.5.008 test_output/cover/t2.5.006001 test_output/cover/t2.5.008 test_output/cover/t2.5.008001 test_output/cover/trivial.5.006001 test_output/cover/uncoverable.5.006001 tests/.uncoverable tests/Alias1.pm tests/E2.pm tests/E3.pm tests/E4.pm tests/IncSub.pm tests/Module1.pm tests/Module2.pm tests/Module_import.pm tests/PodMod.pm tests/alias tests/alias1 tests/branch_return_sub tests/change.t tests/cond_and tests/cond_branch tests/cond_or tests/cond_or.pl tests/cond_xor tests/default_param tests/deparse tests/destroy tests/dynamic_subs tests/eval1 tests/eval2 tests/eval3 tests/eval_sub.t tests/eval_use.t tests/exec tests/fork tests/if tests/inc_sub tests/md5.t tests/module1 tests/module2 tests/module_ignore tests/module_import tests/module_relative tests/overload_bool tests/overloaded tests/pod tests/pod_nocp tests/random/dir/file tests/require tests/skip tests/sort tests/special_blocks tests/statement tests/subs_only tests/t0 tests/t1 tests/t2 tests/trivial tests/uncoverable typemap
	 ptags BUGS CHANGES Cover.xs MANIFEST MANIFEST.SKIP META.yml Makefile.PL README TODO all_versions buildperl cover cpancover create_gold gcov2perl lib/Devel/Cover.pm lib/Devel/Cover/Annotation/Random.pm lib/Devel/Cover/Annotation/Svk.pm lib/Devel/Cover/Branch.pm lib/Devel/Cover/Condition.pm lib/Devel/Cover/Condition_and_2.pm lib/Devel/Cover/Condition_and_3.pm lib/Devel/Cover/Condition_or_2.pm lib/Devel/Cover/Condition_or_3.pm lib/Devel/Cover/Condition_xor_4.pm lib/Devel/Cover/Criterion.pm lib/Devel/Cover/DB.pm lib/Devel/Cover/DB/File.pm lib/Devel/Cover/DB/Structure.pm lib/Devel/Cover/Inc.pm lib/Devel/Cover/Op.pm lib/Devel/Cover/Pod.pm lib/Devel/Cover/Report/Compilation.pm lib/Devel/Cover/Report/Html.pm lib/Devel/Cover/Report/Html_basic.pm lib/Devel/Cover/Report/Html_minimal.pm lib/Devel/Cover/Report/Html_subtle.pm lib/Devel/Cover/Report/Sort.pm lib/Devel/Cover/Report/Text.pm lib/Devel/Cover/Report/Text2.pm lib/Devel/Cover/Statement.pm lib/Devel/Cover/Subroutine.pm lib/Devel/Cover/Test.pm lib/Devel/Cover/Time.pm lib/Devel/Cover/Truth_Table.pm lib/Devel/Cover/Tutorial.pod lib/Devel/Cover/Web.pm scanuncov session.vim test_output/cover/alias.5.006001 test_output/cover/alias1.5.006001 test_output/cover/alias1.5.008 test_output/cover/branch_return_sub.5.006001 test_output/cover/branch_return_sub.5.008 test_output/cover/change.5.006001 test_output/cover/cond_and.5.006001 test_output/cover/cond_and.5.008 test_output/cover/cond_and.5.008001 test_output/cover/cond_branch.5.006001 test_output/cover/cond_branch.5.008 test_output/cover/cond_branch.5.008001 test_output/cover/cond_or.5.006001 test_output/cover/cond_or.5.006002 test_output/cover/cond_or.5.008 test_output/cover/cond_or.5.008001 test_output/cover/cond_or.5.009005 test_output/cover/cond_or.5.010000 test_output/cover/cond_xor.5.006001 test_output/cover/cond_xor.5.008 test_output/cover/cond_xor.5.008001 test_output/cover/default_param.5.006001 test_output/cover/default_param.5.008 test_output/cover/default_param.5.008001 test_output/cover/deparse.5.006001 test_output/cover/deparse.5.008 test_output/cover/destroy.5.006001 test_output/cover/dynamic_subs.5.006001 test_output/cover/dynamic_subs.5.008 test_output/cover/dynamic_subs.5.008001 test_output/cover/dynamic_subs.5.008002 test_output/cover/eval1.5.006001 test_output/cover/eval1.5.008 test_output/cover/eval2.5.006001 test_output/cover/eval2.5.008 test_output/cover/eval3.5.006001 test_output/cover/eval3.5.008 test_output/cover/eval_sub.t.5.006001 test_output/cover/eval_sub.t.5.008 test_output/cover/eval_use.t.5.006001 test_output/cover/eval_use.t.5.008 test_output/cover/exec.5.006001 test_output/cover/fork.5.006001 test_output/cover/if.5.006001 test_output/cover/if.5.008 test_output/cover/inc_sub.5.006001 test_output/cover/inc_sub.5.008 test_output/cover/inc_sub.5.009005 test_output/cover/md5.5.006001 test_output/cover/module1.5.006001 test_output/cover/module1.5.008 test_output/cover/module1.5.008001 test_output/cover/module2.5.006001 test_output/cover/module2.5.008 test_output/cover/module2.5.008001 test_output/cover/module_ignore.5.006001 test_output/cover/module_ignore.5.008 test_output/cover/module_ignore.5.008001 test_output/cover/module_import.5.006001 test_output/cover/module_import.5.008 test_output/cover/module_import.5.008001 test_output/cover/module_relative.5.006001 test_output/cover/module_relative.5.008 test_output/cover/module_relative.5.008001 test_output/cover/overload_bool.5.006001 test_output/cover/overload_bool.5.008 test_output/cover/overloaded.5.006001 test_output/cover/overloaded.5.008 test_output/cover/pod.5.006001 test_output/cover/pod.5.008 test_output/cover/pod_nocp.5.006001 test_output/cover/pod_nocp.5.008 test_output/cover/require.5.006001 test_output/cover/require.5.008 test_output/cover/skip.5.006001 test_output/cover/sort.5.006001 test_output/cover/sort.5.008 test_output/cover/special_blocks.5.006001 test_output/cover/special_blocks.5.008 test_output/cover/special_blocks.5.008001 test_output/cover/special_blocks.5.009005 test_output/cover/statement.5.006001 test_output/cover/subs_only.5.006001 test_output/cover/t0.5.006001 test_output/cover/t0.5.008 test_output/cover/t0.5.008001 test_output/cover/t1.5.006001 test_output/cover/t1.5.008 test_output/cover/t2.5.006001 test_output/cover/t2.5.008 test_output/cover/t2.5.008001 test_output/cover/trivial.5.006001 test_output/cover/uncoverable.5.006001 tests/.uncoverable tests/Alias1.pm tests/E2.pm tests/E3.pm tests/E4.pm tests/IncSub.pm tests/Module1.pm tests/Module2.pm tests/Module_import.pm tests/PodMod.pm tests/alias tests/alias1 tests/branch_return_sub tests/change.t tests/cond_and tests/cond_branch tests/cond_or tests/cond_or.pl tests/cond_xor tests/default_param tests/deparse tests/destroy tests/dynamic_subs tests/eval1 tests/eval2 tests/eval3 tests/eval_sub.t tests/eval_use.t tests/exec tests/fork tests/if tests/inc_sub tests/md5.t tests/module1 tests/module2 tests/module_ignore tests/module_import tests/module_relative tests/overload_bool tests/overloaded tests/pod tests/pod_nocp tests/random/dir/file tests/require tests/skip tests/sort tests/special_blocks tests/statement tests/subs_only tests/t0 tests/t1 tests/t2 tests/trivial tests/uncoverable typemap

BUGS CHANGES Cover.xs MANIFEST MANIFEST.SKIP META.yml TODO all_versions buildperl cover cpancover create_gold gcov2perl lib/Devel/Cover.pm lib/Devel/Cover/Annotation/Random.pm lib/Devel/Cover/Annotation/Svk.pm lib/Devel/Cover/Branch.pm lib/Devel/Cover/Condition.pm lib/Devel/Cover/Condition_and_2.pm lib/Devel/Cover/Condition_and_3.pm lib/Devel/Cover/Condition_or_2.pm lib/Devel/Cover/Condition_or_3.pm lib/Devel/Cover/Condition_xor_4.pm lib/Devel/Cover/Criterion.pm lib/Devel/Cover/DB.pm lib/Devel/Cover/DB/File.pm lib/Devel/Cover/DB/Structure.pm lib/Devel/Cover/Inc.pm lib/Devel/Cover/Op.pm lib/Devel/Cover/Pod.pm lib/Devel/Cover/Report/Compilation.pm lib/Devel/Cover/Report/Html.pm lib/Devel/Cover/Report/Html_basic.pm lib/Devel/Cover/Report/Html_minimal.pm lib/Devel/Cover/Report/Html_subtle.pm lib/Devel/Cover/Report/Sort.pm lib/Devel/Cover/Report/Text.pm lib/Devel/Cover/Report/Text2.pm lib/Devel/Cover/Statement.pm lib/Devel/Cover/Subroutine.pm lib/Devel/Cover/Test.pm lib/Devel/Cover/Time.pm lib/Devel/Cover/Truth_Table.pm lib/Devel/Cover/Tutorial.pod lib/Devel/Cover/Web.pm scanuncov session.vim test_output/cover/alias.5.006001 test_output/cover/alias1.5.006001 test_output/cover/alias1.5.008 test_output/cover/branch_return_sub.5.006001 test_output/cover/branch_return_sub.5.008 test_output/cover/change.5.006001 test_output/cover/cond_and.5.006001 test_output/cover/cond_and.5.008 test_output/cover/cond_and.5.008001 test_output/cover/cond_branch.5.006001 test_output/cover/cond_branch.5.008 test_output/cover/cond_branch.5.008001 test_output/cover/cond_or.5.006001 test_output/cover/cond_or.5.006002 test_output/cover/cond_or.5.008 test_output/cover/cond_or.5.008001 test_output/cover/cond_or.5.009005 test_output/cover/cond_or.5.010000 test_output/cover/cond_xor.5.006001 test_output/cover/cond_xor.5.008 test_output/cover/cond_xor.5.008001 test_output/cover/default_param.5.006001 test_output/cover/default_param.5.008 test_output/cover/default_param.5.008001 test_output/cover/deparse.5.006001 test_output/cover/deparse.5.008 test_output/cover/destroy.5.006001 test_output/cover/dynamic_subs.5.006001 test_output/cover/dynamic_subs.5.008 test_output/cover/dynamic_subs.5.008001 test_output/cover/dynamic_subs.5.008002 test_output/cover/eval1.5.006001 test_output/cover/eval1.5.008 test_output/cover/eval2.5.006001 test_output/cover/eval2.5.008 test_output/cover/eval3.5.006001 test_output/cover/eval3.5.008 test_output/cover/eval_sub.t.5.006001 test_output/cover/eval_sub.t.5.008 test_output/cover/eval_use.t.5.006001 test_output/cover/eval_use.t.5.008 test_output/cover/exec.5.006001 test_output/cover/fork.5.006001 test_output/cover/if.5.006001 test_output/cover/if.5.008 test_output/cover/inc_sub.5.006001 test_output/cover/inc_sub.5.008 test_output/cover/inc_sub.5.009005 test_output/cover/md5.5.006001 test_output/cover/module1.5.006001 test_output/cover/module1.5.008 test_output/cover/module1.5.008001 test_output/cover/module2.5.006001 test_output/cover/module2.5.008 test_output/cover/module2.5.008001 test_output/cover/module_ignore.5.006001 test_output/cover/module_ignore.5.008 test_output/cover/module_ignore.5.008001 test_output/cover/module_import.5.006001 test_output/cover/module_import.5.008 test_output/cover/module_import.5.008001 test_output/cover/module_relative.5.006001 test_output/cover/module_relative.5.008 test_output/cover/module_relative.5.008001 test_output/cover/overload_bool.5.006001 test_output/cover/overload_bool.5.008 test_output/cover/overloaded.5.006001 test_output/cover/overloaded.5.008 test_output/cover/pod.5.006001 test_output/cover/pod.5.008 test_output/cover/pod_nocp.5.006001 test_output/cover/pod_nocp.5.008 test_output/cover/require.5.006001 test_output/cover/require.5.008 test_output/cover/skip.5.006001 test_output/cover/sort.5.006001 test_output/cover/sort.5.008 test_output/cover/special_blocks.5.006001 test_output/cover/special_blocks.5.008 test_output/cover/special_blocks.5.008001 test_output/cover/special_blocks.5.009005 test_output/cover/statement.5.006001 test_output/cover/subs_only.5.006001 test_output/cover/t0.5.006001 test_output/cover/t0.5.008 test_output/cover/t0.5.008001 test_output/cover/t1.5.006001 test_output/cover/t1.5.008 test_output/cover/t2.5.006001 test_output/cover/t2.5.008 test_output/cover/t2.5.008001 test_output/cover/trivial.5.006001 test_output/cover/uncoverable.5.006001 tests/.uncoverable tests/Alias1.pm tests/E2.pm tests/E3.pm tests/E4.pm tests/IncSub.pm tests/Module1.pm tests/Module2.pm tests/Module_import.pm tests/PodMod.pm tests/alias tests/alias1 tests/branch_return_sub tests/change.t tests/cond_and tests/cond_branch tests/cond_or tests/cond_or.pl tests/cond_xor tests/default_param tests/deparse tests/destroy tests/dynamic_subs tests/eval1 tests/eval2 tests/eval3 tests/eval_sub.t tests/eval_use.t tests/exec tests/fork tests/if tests/inc_sub tests/md5.t tests/module1 tests/module2 tests/module_ignore tests/module_import tests/module_relative tests/overload_bool tests/overloaded tests/pod tests/pod_nocp tests/random/dir/file tests/require tests/skip tests/sort tests/special_blocks tests/statement tests/subs_only tests/t0 tests/t1 tests/t2 tests/trivial tests/uncoverable typemap : Makefile.PL
	 $(SET_VERSION) BUGS CHANGES Cover.xs MANIFEST MANIFEST.SKIP META.yml TODO all_versions buildperl cover cpancover create_gold gcov2perl lib/Devel/Cover.pm lib/Devel/Cover/Annotation/Random.pm lib/Devel/Cover/Annotation/Svk.pm lib/Devel/Cover/Branch.pm lib/Devel/Cover/Condition.pm lib/Devel/Cover/Condition_and_2.pm lib/Devel/Cover/Condition_and_3.pm lib/Devel/Cover/Condition_or_2.pm lib/Devel/Cover/Condition_or_3.pm lib/Devel/Cover/Condition_xor_4.pm lib/Devel/Cover/Criterion.pm lib/Devel/Cover/DB.pm lib/Devel/Cover/DB/File.pm lib/Devel/Cover/DB/Structure.pm lib/Devel/Cover/Inc.pm lib/Devel/Cover/Op.pm lib/Devel/Cover/Pod.pm lib/Devel/Cover/Report/Compilation.pm lib/Devel/Cover/Report/Html.pm lib/Devel/Cover/Report/Html_basic.pm lib/Devel/Cover/Report/Html_minimal.pm lib/Devel/Cover/Report/Html_subtle.pm lib/Devel/Cover/Report/Sort.pm lib/Devel/Cover/Report/Text.pm lib/Devel/Cover/Report/Text2.pm lib/Devel/Cover/Statement.pm lib/Devel/Cover/Subroutine.pm lib/Devel/Cover/Test.pm lib/Devel/Cover/Time.pm lib/Devel/Cover/Truth_Table.pm lib/Devel/Cover/Tutorial.pod lib/Devel/Cover/Web.pm scanuncov session.vim test_output/cover/alias.5.006001 test_output/cover/alias1.5.006001 test_output/cover/alias1.5.008 test_output/cover/branch_return_sub.5.006001 test_output/cover/branch_return_sub.5.008 test_output/cover/change.5.006001 test_output/cover/cond_and.5.006001 test_output/cover/cond_and.5.008 test_output/cover/cond_and.5.008001 test_output/cover/cond_branch.5.006001 test_output/cover/cond_branch.5.008 test_output/cover/cond_branch.5.008001 test_output/cover/cond_or.5.006001 test_output/cover/cond_or.5.006002 test_output/cover/cond_or.5.008 test_output/cover/cond_or.5.008001 test_output/cover/cond_or.5.009005 test_output/cover/cond_or.5.010000 test_output/cover/cond_xor.5.006001 test_output/cover/cond_xor.5.008 test_output/cover/cond_xor.5.008001 test_output/cover/default_param.5.006001 test_output/cover/default_param.5.008 test_output/cover/default_param.5.008001 test_output/cover/deparse.5.006001 test_output/cover/deparse.5.008 test_output/cover/destroy.5.006001 test_output/cover/dynamic_subs.5.006001 test_output/cover/dynamic_subs.5.008 test_output/cover/dynamic_subs.5.008001 test_output/cover/dynamic_subs.5.008002 test_output/cover/eval1.5.006001 test_output/cover/eval1.5.008 test_output/cover/eval2.5.006001 test_output/cover/eval2.5.008 test_output/cover/eval3.5.006001 test_output/cover/eval3.5.008 test_output/cover/eval_sub.t.5.006001 test_output/cover/eval_sub.t.5.008 test_output/cover/eval_use.t.5.006001 test_output/cover/eval_use.t.5.008 test_output/cover/exec.5.006001 test_output/cover/fork.5.006001 test_output/cover/if.5.006001 test_output/cover/if.5.008 test_output/cover/inc_sub.5.006001 test_output/cover/inc_sub.5.008 test_output/cover/inc_sub.5.009005 test_output/cover/md5.5.006001 test_output/cover/module1.5.006001 test_output/cover/module1.5.008 test_output/cover/module1.5.008001 test_output/cover/module2.5.006001 test_output/cover/module2.5.008 test_output/cover/module2.5.008001 test_output/cover/module_ignore.5.006001 test_output/cover/module_ignore.5.008 test_output/cover/module_ignore.5.008001 test_output/cover/module_import.5.006001 test_output/cover/module_import.5.008 test_output/cover/module_import.5.008001 test_output/cover/module_relative.5.006001 test_output/cover/module_relative.5.008 test_output/cover/module_relative.5.008001 test_output/cover/overload_bool.5.006001 test_output/cover/overload_bool.5.008 test_output/cover/overloaded.5.006001 test_output/cover/overloaded.5.008 test_output/cover/pod.5.006001 test_output/cover/pod.5.008 test_output/cover/pod_nocp.5.006001 test_output/cover/pod_nocp.5.008 test_output/cover/require.5.006001 test_output/cover/require.5.008 test_output/cover/skip.5.006001 test_output/cover/sort.5.006001 test_output/cover/sort.5.008 test_output/cover/special_blocks.5.006001 test_output/cover/special_blocks.5.008 test_output/cover/special_blocks.5.008001 test_output/cover/special_blocks.5.009005 test_output/cover/statement.5.006001 test_output/cover/subs_only.5.006001 test_output/cover/t0.5.006001 test_output/cover/t0.5.008 test_output/cover/t0.5.008001 test_output/cover/t1.5.006001 test_output/cover/t1.5.008 test_output/cover/t2.5.006001 test_output/cover/t2.5.008 test_output/cover/t2.5.008001 test_output/cover/trivial.5.006001 test_output/cover/uncoverable.5.006001 tests/.uncoverable tests/Alias1.pm tests/E2.pm tests/E3.pm tests/E4.pm tests/IncSub.pm tests/Module1.pm tests/Module2.pm tests/Module_import.pm tests/PodMod.pm tests/alias tests/alias1 tests/branch_return_sub tests/change.t tests/cond_and tests/cond_branch tests/cond_or tests/cond_or.pl tests/cond_xor tests/default_param tests/deparse tests/destroy tests/dynamic_subs tests/eval1 tests/eval2 tests/eval3 tests/eval_sub.t tests/eval_use.t tests/exec tests/fork tests/if tests/inc_sub tests/md5.t tests/module1 tests/module2 tests/module_ignore tests/module_import tests/module_relative tests/overload_bool tests/overloaded tests/pod tests/pod_nocp tests/random/dir/file tests/require tests/skip tests/sort tests/special_blocks tests/statement tests/subs_only tests/t0 tests/t1 tests/t2 tests/trivial tests/uncoverable typemap

README : lib/Devel/Cover.pm
	 TERMCAP= COLUMNS=80 pod2text -s lib/Devel/Cover.pm | \
    $(PERL) -n \
    -e 'print if (/NAME/         ... /^[A-Z ]+$$/) =~ /^\d+$$/;' \
    -e 'print if (/SYNOPSIS/     ... /^[A-Z ]+$$/) =~ /^\d+$$/;' \
    -e 'print if (/DESCRIPTION/  ... /^[A-Z ]+$$/) =~ /^\d+$$/;' \
    -e 'print if (/REQUIREMENTS/ ... /^[A-Z ]+$$/) =~ /^\d+$$/;' \
    > README

ppm : ppd pure_all
	 tar cf Devel-Cover.tar blib
	 gzip --best --force Devel-Cover.tar
	 $(PERL) -pi.bak \
    -e 's/(OS NAME=")[^"]*/$$1MSWin32/;' \
    -e 's/(ARCHITECTURE NAME=")[^"]*/$$1MSWin32-x86-multi-thread/;' \
    -e 's/(CODEBASE HREF=")[^"]*/$$1Devel-Cover.tar.gz/;' \
    Devel-Cover.ppd

TAINT = -T
COVER_OPTIONS =

_run : pure_all
	 $(PERL) $(TAINT) -Iblib/lib -Iblib/arch -MDevel::Cover=-merge,0,`$(PERL) -e '$$l = qx|grep __COVER__ $$ARGV[0]|; $$l =~ /__COVER__\s+criteria\s+(.*)/; ($$c = $$1 || "all") =~ s/\s+/,/g; $$p = "$$1," if $$l =~ /__COVER__\s+test_parameters\s+(.*)/; print "$$p-coverage,$$c"' tests/$(TEST)`,$(COVER_OPTIONS) tests/$(TEST)

COVER_PARAMETERS = $(PERL) -e '$$l = qx|grep __COVER__ $$ARGV[0]|; $$u = "-uncoverable_file $$1" if $$l =~ /__COVER__\s+uncoverable_file\s+(.*)/; ($$p) = $$l =~ /__COVER__\s+cover_parameters\s+(.*)/; print "$$u $$p"' tests/$(TEST)

html : _run
	 $(PERL) -Mblib cover `$(COVER_PARAMETERS)` -report html

basic : _run
	 $(PERL) -Mblib cover `$(COVER_PARAMETERS)` -report html_basic

out : _run
	 $(PERL) -Mblib cover `$(COVER_PARAMETERS)` -report text > $(TEST).out

text : out
	 $(VISUAL) $(TEST).out

wrun : pure_all
	 $(PERL) $(TAINT) -Iblib/lib -Iblib/arch -MDevel::Cover=-ignore,blib,-merge,0 tests/$(TEST)

DB = cover_db

dump :
	 $(PERL) -Mblib cover -dump_db $(DB)

FONT = 8x13
FONT = -sun-screen-medium-r-normal-*-*-70-*-*-m-*-sun-fontspecific
FONT = "Bitstream Vera Sans Mono 8"

diff : out
	 $(PERL) -i -pe '$$t = index $$_, "time   code" if !defined $$t || $$t < 0; substr $$_, $$t, 7, "" if /^line  err   stmt/ ..  /^--------/ and length > $$t' $(TEST).out
	 gvim -d -font $(FONT) `$(PERL) -Mblib -MDevel::Cover::Test -e '$$t = Devel::Cover::Test->new("$(TEST)", run_test_at_end => 0); print $$t->cover_gold'` $(TEST).out

gold : pure_all
	 $(PERL) create_gold $(TEST)

all_test :
	 exec $(PERL) all_versions make test

all_gold :
	 rm -rf test_output
	 exec $(PERL) all_versions make gold

mani :
	 $(PERL) -i.bak -ne '$$d = "test_output/cover"; print unless /^$$d/; END { open M, ">>MANIFEST"; opendir D, $$d; print M "$$d/$$_\n" for sort grep -f "$$d/$$_", readdir D }' MANIFEST

ok :
	 @perlbug -a pjcj@cpan.org -s 'Installation of Devel::Cover 0.64' -okay  || echo "Please send your report manually to pjcj@cpan.org"

nok :
	 @perlbug -a pjcj@cpan.org -s 'Installation of Devel::Cover 0.64' -nokay || echo "Please send your report manually to pjcj@cpan.org"
    

# End.

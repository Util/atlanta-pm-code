# $Id: Makefile.PL 125 2005-10-24 04:55:20Z andy $
use ExtUtils::MakeMaker;

WriteMakefile (
    'NAME'           => 'Test::Pod',
    'VERSION_FROM'   => 'Pod.pm',
    'PREREQ_PM'      => {
        'Pod::Simple'           => '2.04',
        'Test::More'            => '0.62',
        'Test::Builder::Tester' => '1.02',
        'File::Spec'            => 0,
    },
    clean => { FILES => 'Test-Pod-*' },
);


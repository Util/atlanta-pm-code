use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => "Test::Differences",
    VERSION_FROM  => "Differences.pm",
    PREREQ_PM     => {
        "Text::Diff" => 0.34,
    },
);


sub MY::libscan {
   package MY ;
   my $self = shift ;
   my ( $path ) = @_ ;
   return '' if /\.sw[a-z]$/ ;
   return '' unless length $self->SUPER::libscan( $path ) ;
   return $path ;
}


use 5;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = eval $ExtUtils::MakeMaker::VERSION;

WriteMakefile(
    NAME              => 'Data::Dumper::Again',
    VERSION_FROM      => 'lib/Data/Dumper/Again.pm',
    PREREQ_PM         => {
        Data::Dumper        => 0,
        Carp                => 0,
        Class::Accessor     => 0,

        Test::More          => 0,
    },
    PL_FILES          => {},
    ($] >= 5.005 ? (
        'ABSTRACT_FROM' => 'lib/Data/Dumper/Again.pod',
        'AUTHOR'        => 'Adriano R. Ferreira <ferreira@cpan.org>'
    ) : ()),
    ($EUMM_VERSION >= 6.31 ? (
        LICENSE => 'perl', 
        EXTRA_META => "recommends:\n    Test::Pod:                     1.18\n    Test::Pod::Coverage:                    1.04\n",
    ) :())

);

use 5.006000;
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share 'module' => 'App::cariboubutton', 'share';
#install_share 'module' => 'App::cariboubutton', 'share';
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'App::cariboubutton',
    VERSION_FROM      => 'scripts/cariboubutton.pl', # finds $VERSION, requires EU::MM from perl >= 5.5
    CONFIGURE_REQUIRES => {'ExtUtils::MakeMaker' => 0, 'File::ShareDir::Install' => 0},
    PREREQ_PM         => {'Gtk3' => 0}, # e.g., Module::Name => 1.1
    ABSTRACT_FROM     => 'scripts/cariboubutton.pl', # retrieve abstract from module
    EXE_FILES	      => ['scripts/cariboubutton.pl'],
    INSTALLDIRS       => 'vendor',
    AUTHOR            => 'Maximilian Lika <maximilian@(none)>',
    LICENSE           => 'lgpl3',
    #Value must be from legacy list of licenses here
    #http://search.cpan.org/perldoc?Module%3A%3ABuild%3A%3AAPI
);

package MY;
use File::ShareDir::Install 'postamble';

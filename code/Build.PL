#!/usr/bin/perl

#Instala los módulos necesarios para ejecutar los ejemplos de este
#tutorial 

use Module::Build;
my $build = Module::Build->new
  (
   dist_name => 'Perl::Apresurados',
   dist_version => '0.01',
   license => 'perl',
   requires => {
		'perl'           => '5.8.0',
		'Acme::Clouseau'   => 0,
		'Lingua::ES::Silabas'  => 0,
		'File::Slurp' => 0
	       },
   dist_author => { 'J. J. Merelo <jjmerelo@gmail.com>' }
    );
$build->create_build_script;

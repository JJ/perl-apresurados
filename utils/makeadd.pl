#!/usr/bin/perl

#Programa para añadir nuevos ficheros al Makefile

use File::Slurp;

my $text = read_file( 'Makefile' ) ;

my ( $file ) = shift || die "Uso: $0 <fichero>\n";
my ($cmd) = split("/", $file );
my $varname = uc $cmd;
$text =~ s/$varname=/$varname= $file /;
write_file('Makefile',$text);

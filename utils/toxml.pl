#!/usr/bin/perl

use strict;
use warnings;

use File::Slurp;

my $file_to_xml = shift 
  || die "Uso: $0 <nombre de fichero>\n";

my @lineas = read_file( $file_to_xml );

my $first = shift @lineas;


my $texto_completo=join("", @lineas);
$texto_completo=<<EOC.$texto_completo;
<?xml version='1.0' encoding='latin1'?>
<!DOCTYPE article PUBLIC "-//OASIS//DTD DocBook XML V4.4//EN"
               "http://www.oasis-open.org/docbook/xml/4.4/docbookx.dtd">
EOC

# Sustituir los <area>
$texto_completo =~ s{<area +id=\"([^\"]+)\" coords=.(\d+). ?>}
  {<area id="$1" coords='$2' />}g;

$texto_completo =~ s{<area coords="(\d+)" id="([^\"]+)" ?>}
  {<area id="$2" coords='$1' />}g;

# los <graphic>
$texto_completo =~ s{<graphic fileref=\"([^\"]+)\" scale="(\d+)" >}
  {<graphic fileref="$1" scale="$2" />}g;

print $texto_completo;
  

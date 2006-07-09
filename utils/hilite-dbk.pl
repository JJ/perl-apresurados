#!/usr/bin/perl

my $f = shift || die "Uso: $0 <nombre de fichero>\n";

use Syntax::Highlight::Engine::Kate;
my $hl = new Syntax::Highlight::Engine::Kate(
    language => 'Perl',
    substitutions => {
       "<" => "&lt;",
       ">" => "&gt;",
       "&" => "&amp;"
    },
    format_table => {
       Alert => ["<font color=\"#0000ff\">", "</font>"],
       BaseN => ["<font color=\"#007f00\">", "</font>"],
       BString => ["<wordasword>", "</wordasword>"],
       Char => ["", ""],
       Comment => ["<emphasis>", "</emphasis>"],
       DataType => ["<font color=\"#0000ff\">", "</font>"],
       DecVal => ["<font color=\"#00007f\">", "</font>"],
       Error => ["<font color=\"#ff0000\"><b><i>", "</i></b></font>"],
       Float => ["<font color=\"#00007f\">", "</font>"],
       Function => ["<function>", "</function>"],
       IString => ["<font color=\"#ff0000\">", ""],
       Keyword => ["<constant>", "</constant>"],
       Normal => ["", ""],
       Operator => ["", ""],
       Others => ["<font color=\"#b03060\">", "</font>"],
       RegionMarker => ["<font color=\"#96b9ff\"><i>", "</i></font>"],
       Reserved => ["<font color=\"#9b30ff\"><b>", "</b></font>"],
       String => ["", ""],
       Variable => ["<varname>", "<varname>"],
       Warning => ["<font color=\"#0000ff\"><b><i>", "</b></i></font>"],
    },
 );
 
my $str;
open my $fh, "<", $f || die "Algo le pasa al fichero\n";
while (my $in = <$fh>) {
  $str.= $hl->highlightText($in);
}
close $fh || die "Qu� passa aqu�!\n";

#Postproceso
$str =~ s!(<(\w+)>\s+</\2>)!!gs; #sustituir etiquetas vac�as

$f =~ s/\./_/g;
my $outFileN .= "$f.sgml";
open $fh, ">", $outFileN;
print $fh $str;
close $fh || die "Qu� passa aqu�!\n";

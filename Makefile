NAME=perl-apresurados
DISTDIR=$(NAME)
VERSION=1.0
SOURCE=perl-apresurados.sgml
MAIN= $(SOURCE) Makefile start
CODE= code/cambiando.pl  code/trancos-ordenado.pl  code/Build.PL  code/onomastico.pl  code/kk.pl  code/hilite.pl  code/hilite3.pl  code/hilite2.pl  code/clouseau.pl  code/trancos.pl  code/escrito-if.pl  code/escrito3.pl  code/escrito2.pl  code/escrito.pl  code/peta2.pl  code/peta1.pl  code/silabas-devil.pl code/hola.pl code/hola.py code/hola.rb code/hola-y-duerme.pl
UTILS= utils/toxml.pl  utils/add  utils/makeadd.pl  utils/hilite-dbk.pl utils/nocorchetes.pl 
IMG= img/debugging.png  img/ejecutando-terminal.png  img/ejecutando.png img/e-p-i-c.png  img/gvim-perl.png  img/hola_pl_emacs.png
FILES=$(MAIN) $(CODE) $(UTILS) $(IMG) perl-apresurados/

all: html pdf rtf

html: $(SOURCE)
	db2html ${SOURCE}

pdf:  $(SOURCE)
	db2pdf -o $(DISTDIR) ${SOURCE}

rtf:  $(SOURCE)
	db2rtf $(DISTDIR) ${SOURCE}

dist: $(NAME)-$(VERSION).tgz

codetgz : $(CODE)
	tar cvfz $(DISTDIR)/$(NAME)-ejemplos.tgz $(CODE)
 
$(NAME)-$(VERSION).tgz: $(FILES)
	tar cvfz  $(NAME)-$(VERSION).tgz $(FILES)

bk: 
	cp $(SOURCE) perl-apresurados-`date +%F`.sgml
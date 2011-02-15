NAME=perl-apresurados
DISTDIR=$(NAME)
VERSION=1.4
SOURCE=perl-cgi-servidores.sgml
MAIN= $(SOURCE) Makefile start README

CODE= code/escrito-if-escribe.pl  code/baja.pl  code/cambiando.pl  code/trancos-ordenado.pl  code/Build.PL  code/onomastico.pl  code/kk.pl  code/hilite.pl  code/hilite3.pl  code/hilite2.pl  code/clouseau.pl  code/trancos.pl  code/escrito-if.pl  code/escrito3.pl  code/escrito2.pl  code/escrito.pl  code/peta2.pl  code/peta1.pl  code/silabas-devil.pl code/hola.pl code/hola.py code/hola.rb code/hola-y-duerme.pl code/cojuelo.cgi code/cojuelo-trancos.cgi

DC=diablocojuelo.txt
UTILS= utils/toxml.pl  utils/add  utils/makeadd.pl  utils/hilite-dbk.pl utils/nocorchetes.pl 
IMG= img/kregexpeditor.png  img/perl-menu.png  img/ejecutando-terminal.png.png  img/debugging.png  img/ejecutando-terminal.png  img/ejecutando.png img/e-p-i-c.png  img/gvim-perl.png  img/hola_pl_emacs.png

FILES=$(MAIN) $(DC) $(CODE) $(UTILS) $(IMG) perl-apresurados/

SRC=$(MAIN) $(IMG)

all: html pdf rtf

html: $(SOURCE)
	db2html ${SOURCE}

pdf:  $(SOURCE)
	db2pdf -o $(DISTDIR) ${SOURCE}

rtf:  $(SOURCE)
	db2rtf $(DISTDIR) ${SOURCE}

dist: $(NAME)-$(VERSION).tgz

srcdist: $(DISTDIR)/$(NAME)-$(VERSION)-src.tgz

pubdist: html pdf  srcdist codetgz
	tar cvfz $(NAME)-$(VERSION)-dist.tgz $(DISTDIR)

codetgz : $(CODE)
	tar cvfz $(DISTDIR)/$(NAME)-ejemplos.tgz $(CODE) $(DC)
 
$(NAME)-$(VERSION).tgz: $(FILES)
	tar cvfz  $(NAME)-$(VERSION).tgz $(FILES)

$(DISTDIR)/$(NAME)-$(VERSION)-src.tgz: $(SRC)
	tar cvfz  $(DISTDIR)/$(NAME)-$(VERSION)-src.tgz $(SRC)

bk: 
	cp $(SOURCE) perl-apresurados-`date +%F`.sgml
NAME=perl-apresurados
VERSION=1.0
SOURCE=perl-apresurados.sgml
MAIN= $(SOURCE) Makefile start
CODE= code/onomastico.pl  code/kk.pl  code/hilite.pl  code/hilite3.pl  code/hilite2.pl  code/clouseau.pl  code/trancos.pl  code/escrito-if.pl  code/escrito3.pl  code/escrito2.pl  code/escrito.pl  code/peta2.pl  code/peta1.pl  code/silabas-devil.pl code/hola.pl code/hola.py code/hola.rb code/hola-y-duerme.pl
UTILS= utils/makeadd.pl  utils/hilite-dbk.pl utils/nocorchetes.pl 
IMG= img/debugging.png  img/ejecutando-terminal.png  img/ejecutando.png img/e-p-i-c.png  img/gvim-perl.png  img/hola_pl_emacs.png
FILES=$(MAIN) $(CODE) $(UTILS) $(IMG)

all: html pdf rtf

html: $(SOURCE)
	db2html ${SOURCE}

pdf:  $(SOURCE)
	db2pdf ${SOURCE}

rtf:  $(SOURCE)
	db2rtf ${SOURCE}

dist: $(NAME)-$(VERSION).tgz

$(NAME)-$(VERSION).tgz: $(FILES)
	tar cvfz  $(NAME)-$(VERSION).tgz $(FILES)

bk: 
	cp $(SOURCE) perl-apresurados-`date +%F`.sgml
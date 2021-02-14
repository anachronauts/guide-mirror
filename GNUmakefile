.PHONY: all clean install package package-install

PREFIX := /usr/local
DATADIR := $(PREFIX)/share
MANDIR := $(DATADIR)/man
STAGE := stage
PKGDIR := out

all: text-gemini.5.gz anachronauts.7.gz gemini.7.gz

clean:
	-rm *.gz install.log
	-rm -r $(STAGE)

%.gz: %.scd suffix.txt
	cat $^ | scdoc | gzip > $@

install: all
	install -d -Minstall.log $(MANDIR)/man5
	install -Minstall.log text-gemini.5.gz $(MANDIR)/man5
	install -d -Minstall.log $(MANDIR)/man7
	install -Minstall.log anachronauts.7.gz gemini.7.gz $(MANDIR)/man7

package:
	-rm install.log
	-rm -r $(STAGE)
	$(MAKE) PREFIX=$(STAGE)$(PREFIX) install
	cat MANIFEST > $(STAGE)/+MANIFEST
	echo prefix $(PREFIX) >> $(STAGE)/+MANIFEST
	awk '/type=file/ { print substr($$1, index($$1, "$(PREFIX)")) }' install.log > $(STAGE)/plist
	mkdir -p $(PKGDIR)
	pkg create -o "$(PKGDIR)" -r "$(STAGE)" -M "$(STAGE)/+MANIFEST" -p "$(STAGE)/plist"
	pkg repo "$(PKGDIR)"

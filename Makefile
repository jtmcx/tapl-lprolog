TJCC =		tjcc
TJLINK =	tjlink
TJDEPEND =	tjdepend

MODULES=\
 tyarith.mod\
 simple.mod\
 simplebool.mod

all: $(MODULES:.mod=.lp)

%.lpo: %.mod %.sig
	$(TJCC) $<

%.lp: %.lpo
	$(TJLINK) $<

deps.mk: $(MODULES) $(MODULES:.mod=.sig)
	$(TJDEPEND) $(MODULES) > deps.tmp
	mv deps.tmp deps.mk

include deps.mk

clean:
	rm -f $(MODULES:.mod=.lp)
	rm -f $(MODULES:.mod=.lpo)
	rm -f $(MODULES:.mod=.thc)
	rm -f deps.tmp deps.mk

.SUFFIXES: .lp .lpo .sig .mod

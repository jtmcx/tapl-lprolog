TJCC =		tjcc
TJLINK =	tjlink

MODULES=\
 tyarith.mod\
 simplebool.mod

all: $(MODULES:.mod=.lp)

%.lpo: %.mod %.sig
	$(TJCC) $<

%.lp: %.lpo
	$(TJLINK) $<

clean:
	rm -f $(MODULES:.mod=.lp)
	rm -f $(MODULES:.mod=.lpo)
	rm -f $(MODULES:.mod=.thc)

.SUFFIXES: .lp .lpo .sig .mod

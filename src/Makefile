RMLC=rmlc

RMLBUILD=rmlbuild -classic-display

FLAGS=-Is applications,lib,modules \
		-cflags "-I `$(RMLC) -where`/toplevel" \
		-tag annot \
		-pkg lo \
		-tag thread

TARGET=native

all:	iscore.rml.$(TARGET)


iscore.rml.$(TARGET):
		$(RMLBUILD) $(FLAGS) applications/$@
		cp _build/applications/$@ ..


clean:
		$(RMLBUILD) -clean

cleanall: clean
		find . -iname *~ -exec rm {} \;

realclean: cleanall

.PHONY: iscore.rml.$(TARGET) clean cleanall

TARGET = ../.legos/$(LEGO)
LEGO = `basename $(WORKINGDIR)`
WORKINGDIR = $(shell pwd)

all:
	@ln -sfn $(WORKINGDIR)/src $(TARGET)

clean:
	@rm -Rf $(TARGET)

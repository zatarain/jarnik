TARGET = ../.legos/$(LEGO)
LEGO = `basename $(WORKINGDIR)`
WORKINGDIR = $(shell pwd)

all:
	@mkdir -p $(TARGET)
	@cp -Rpf src/* $(TARGET)

clean:
	@rm -Rf $(TARGET)

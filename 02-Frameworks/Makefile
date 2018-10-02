SUBDIRS = $(sort $(dir $(wildcard */.)))

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)
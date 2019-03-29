TRASH=$(shell which trash)
ifeq (, $(TRASH))
	TRASH=$(shell which rm)
endif

URI_ROOT ?= test/
export URI_ROOT
BUILD_ROOT = $(shell racket -l racket/base -t config.rkt -e "(display build-dir)")
BUILD_DIR = $(BUILD_ROOT)$(URI_ROOT)

.PHONY: help serve test-deploy deploy

all: help

help:
	@echo "make serve           -- Start and browse to a local server on localhost:8000."
	@echo "make build           -- Build all the html pages."
	@echo "make test-deploy     -- Push the site to the (test) server."
	@echo "make confirm         -- Confirm that you would like to affect the live site."
	@echo "make deploy     	    -- Push the site to the server."
	@echo "make clean           -- Clean up, clean up."
	@echo "Deleter:             $(TRASH)"
	@echo "Build directory:     $(BUILD_DIR)"

$(BUILD_DIR): css/* resources/* vendor/*
	mkdir -p $@
	rsync -avz resources vendor css $(BUILD_DIR)/

build: $(BUILD_DIR) $(BUILD_DIR)/index.html $(BUILD_DIR)/call-for-papers.html $(BUILD_DIR)/local-info.html #$(BUILD_DIR)/program.html

serve: build
	racket -t serve.rkt

confirm:
	touch Yes_Affect_The_Live_Site

deploy: Yes_Affect_The_Live_Site
	make URI_ROOT="" real_deploy
	rm -f $<

real_deploy: | clean build test-deploy

test-deploy: build
	rsync -avz --exclude test/ --delete $(BUILD_DIR)/ tfp@tfp2019.org:$(URI_ROOT)

$(BUILD_DIR)/program.html: talks.rkt

$(BUILD_DIR)/%.html: %.scrbl config.rkt page-mlang.rkt page-lang.rkt page-template.scrbl
	racket -t $< > $@

clean:
	$(TRASH) -rf $(BUILD_ROOT) || true

distclean: | clean test-deploy

destroy: | clean deploy

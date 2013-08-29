JSLINT_DIRS ?= trunk vkfox-52

jslint: $(shell find $(JSLINT_DIRS) -name '*.js')

%.js: force
	@echo "$*.js"
	@jslint --predef=jQuery,swfobject \
		--bitwise \
		--browser \
		--confusion \
		--evil \
		--nomen \
		--passfail \
		--plusplus \
		--regexp \
		--sloppy \
		--sub \
		--white \
		$*.js

.PHONY: force

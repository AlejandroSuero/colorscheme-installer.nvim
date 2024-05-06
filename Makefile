TESTS_INIT=tests/minimal_init.lua
TESTS_DIR=tests/

.PHONY: test lint

test:
		@nvim \
		--headless \
		--noplugin \
		-u ${TESTS_INIT} \
		-c "PlenaryBustedDirectory ${TESTS_DIR} { minimal_init = '${TESTS_INIT}', sequential = true }"

lint:
	@selene lua/colorscheme-installer tests
	@stylua --color always --check lua/colorscheme-installer tests

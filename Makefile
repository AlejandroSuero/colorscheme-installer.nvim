TESTS_INIT=tests/minimal_init.lua
TESTS_DIR=tests

.PHONY: test lint

test:
		@printf "\nRunning tests\n"
		nvim --headless --noplugin -u ${TESTS_INIT} -c "PlenaryBustedDirectory ${TESTS_DIR} { minimal_init = '${TESTS_INIT}', sequential = true }"

lint:
	@printf "\nRunning luacheck\n"
	luacheck lua/* tests/*
	@printf "\nRunning selene\n"
	selene --display-style=quiet .
	@printf "\nRunning stylua\n"
	stylua --color always --check .

TESTS_INIT=tests/minimal_init.lua
TESTS_DIR=tests

.PHONY: test lint

test:
	@printf "\nRunning tests with 'vusted'\n"
	vusted ./tests

lint:
	@printf "\nRunning luacheck\n"
	luacheck lua/* tests/*
	@printf "\nRunning selene\n"
	selene --display-style=quiet .
	@printf "\nRunning stylua\n"
	stylua --color always --check .

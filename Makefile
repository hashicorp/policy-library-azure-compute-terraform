test:
	sentinel test -verbose $(shell find . -name "$(name)" -type f ! -path "*/testdata/*")

tests:
	sentinel test $(shell find . -name "*.sentinel" -type f ! -path "*/testdata/*")

format:
	sentinel fmt -write=true $(shell find . -name "*.sentinel" -type f)

structure:
	mkdir -p policies/$(name)/test/$(name)
	mkdir -p policies/$(name)/testdata

generate: structure
	cp example/example.sentinel policies/$(name)/$(name).sentinel
	cp example/test/example/*.hcl policies/$(name)/test/$(name)
	cp example/testdata/*.sentinel policies/$(name)/testdata

.PHONY: format test

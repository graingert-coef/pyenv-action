.PHONY: default watch release build format lint test clean

default: release

watch: format
	npm run watch

dist/index.js: lib/pyenv-action.js
	npm run release

lib/pyenv-action.js:
	npm run build

release: clean dist/index.js

build: format
	npm run build

format:
	npm run format

lint:
	npm run lint

test:
	npm run test

test-watch:
	npm run test-watch

clean:
	rm -f dist/index.js

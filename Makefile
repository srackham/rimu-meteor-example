all: lint

lint:
	jshint $(TESTS) meteor-example.js
	jsonlint --quiet smart.json

commit: lint
	git commit -a

push:
	git push -u --tags origin master

.PHONY: all lint commit push

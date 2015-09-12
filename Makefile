.PHONY: default update-readme

default: update-readme

update-readme:
	./README.md.genarator.sh
	git commit -am 'Update README.md'
	git push

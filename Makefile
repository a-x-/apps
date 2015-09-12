.PHONY: default update-readme

git_pop_stash_by_name = $(info Git stash pop)\
	@STASH_MARKER=$1;\
	STASH_HASH="$$(git stash list | grep --color=auto $1 | cut -d : -f 1)";\
	if [ $$STASH_HASH ]; then git stash pop $$STASH_HASH; fi

default: update-readme

update-readme:
	git stash save -q update 2>/dev/null
	git pull --rebase
	$(call git_pop_stash_by_name,update)
	./README.md.genarator.sh
	git add --all
	git commit -am 'Update README.md'
	git push

#!/bin/sh

output=

to_links="| gsed -r 's/(.+)/* [\1](\1)/'"

output="$(cat <<DOC
# apps

## Install all
[./install-all.sh](./install-all.sh)
DOC)"

lists="ls | grep 'list$' | grep -v src"
output+="\n\n## Lists of apps\n\`\`\`sh\n$lists\n\`\`\`\n$(eval $lists $to_links)"

gens="ls | grep gen | grep -v README"
output+="\n\n## Generators of lists\n\`\`\`sh\n$gens\n\`\`\`\n$(eval $gens $to_links)"

output+="\n\n$(cat ALTERNATIVES.md)"

output+="\n\n$(cat TODO.md)"

output+="\n\n----\n_Genarated by \`README.md.genarator.sh\`_"

echo "$output" > README.md

#!/bin/bash

(
	cat <<-EOF
	% Bash Scripting
	% Ethan Clark
	% Information from the [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)
	EOF

	for i in $(find slides -name '*.md' | sort); do
		cat $i
		printf '\n\n------------------\n\n'
	done

	cat <<-EOF
	## These slides were compiled with a bash script!
	\`\`\`bash
	EOF
	cat $BASH_SOURCE | tr \` '\`'
	printf '\n```\n'
) | pandoc -t slidy --self-contained -o slides.html
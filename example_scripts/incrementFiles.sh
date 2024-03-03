#!/bin/bash

for FILE in slides/[0-9][0-9]-*.md; do
    NUMBER="$(grep -oP -m 1 '[0-9][0-9]' <<<"$FILE")"
    if [ "$NUMBER" -gt "$1" ]; then
        mv "$FILE" "$(sed "s/$NUMBER/$(printf %02d $(( 10#$NUMBER + 1 )))/" <<<"$FILE" )"
    fi
done
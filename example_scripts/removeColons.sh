#!/bin/bash

while [ -n "$(find . -name '*:*' -print)" ]; do
  find . -name '*:*' -print0 | xargs -0 -P0 -n64 rename -v ':' '-'
done

while [ -n "$(find . -name '*"*' -print)" ]; do
  find . -name '*"*' -print0 | xargs -0 -P0 -n64 rename -v '"' ''
done

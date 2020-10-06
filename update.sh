#!/bin/bash

set -eux

~/go/bin/hugo -D

git --git-dir=public/.git add -A
git --git-dir=public/.git commit -s -m "Regenerate public"
git --git-dir=public/.git push

git add -A
git commit -s -m "$1"
git push

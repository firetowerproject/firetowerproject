#!/bin/bash

set -eux

git --git-dir=public add -A
git --git-dir=public/.git add -A
git --git-dir=public/.git commit -s -m "Regenerate public"
git --git-dir=public/.git push

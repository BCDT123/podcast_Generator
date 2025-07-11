#!/bin/bash

echo "======================="

git config --globan user.name "${GITHUB_ACTOR}"
git config --globan user.email "${GITHUB_EMAIL}"
git config --globan --add safe.directory /github/workspace

python3 /urs/bin/feed.py

git add -A && git commit -m "update Feed"

git push --set-upstream origin main

echo "======================="
#!/usr/bin/env bash
# sync.sh — pull tracker data from all employee/* branches from Bitbucket,
# merge into GitHub Pages, and deploy the site.
#
# Required env vars (in ~/.zshrc):
#   GITHUB_TOKEN — GitHub personal access token (repo + workflow scope)
#
# Usage: ./sync.sh

set -e

GITHUB_REPO="jasonpkeith29/zone-strategic-framework"
BITBUCKET_REMOTE="ssh://git@bitbucket.athenahealth.com:7999/~jakeith/strategic-framework-exercise.git"
GITHUB_REMOTE="https://${GITHUB_TOKEN}@github.com/${GITHUB_REPO}.git"

if [ -z "$GITHUB_TOKEN" ]; then
  echo "Error: GITHUB_TOKEN is not set. Add it to ~/.zshrc and run 'source ~/.zshrc'."
  exit 1
fi

WORKDIR=$(mktemp -d)
trap "rm -rf $WORKDIR" EXIT

echo "→ Cloning Bitbucket main branch..."
git clone -q --branch master "$BITBUCKET_REMOTE" "$WORKDIR/repo"
cd "$WORKDIR/repo"

echo "→ Fetching all employee and manager branches..."
git fetch -q origin \
  'refs/heads/employee/*:refs/remotes/origin/employee/*' \
  'refs/heads/manager/*:refs/remotes/origin/manager/*' 2>/dev/null || true

BRANCHES=$(git branch -r | grep -E 'origin/(employee|manager)/' | sed 's|origin/||' | tr -d ' ')

if [ -z "$BRANCHES" ]; then
  echo "→ No employee or manager branches found. Nothing to sync."
else
  for branch in $BRANCHES; do
    echo "→ Merging tracker data from $branch..."
    git checkout -q "$branch" 2>/dev/null || git checkout -q -b "$branch" "origin/$branch"
    git checkout master -- tracker-data/ 2>/dev/null || true
    git checkout "$branch" -- tracker-data/ 2>/dev/null || true
    git checkout master
  done
fi

# Commit merged data if anything changed
git add tracker-data/ 2>/dev/null || true
git diff --cached --quiet || git commit -q -m "Sync: merge tracker data — $(date '+%Y-%m-%d %H:%M')"

echo "→ Deploying to GitHub Pages..."
DEPLOY_TMP=$(mktemp -d)
# Deploy the whole repo root (index.html + tracker-data + assets)
cp -r . "$DEPLOY_TMP/site"
rm -rf "$DEPLOY_TMP/site/.git" "$DEPLOY_TMP/site/teams" "$DEPLOY_TMP/site/scripts"
touch "$DEPLOY_TMP/site/.nojekyll"
cd "$DEPLOY_TMP/site"
git init -q
git checkout -q -b main
git add .
git commit -q -m "Deploy — $(date '+%Y-%m-%d %H:%M')"
git push -q --force "$GITHUB_REMOTE" main

echo "✓ Sync complete. Site updated at https://jasonpkeith29.github.io/zone-strategic-framework"

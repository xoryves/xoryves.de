#!/usr/bin/env fish

set BRANCH 'site'
set REV (git rev-parse HEAD)
set REV_LOG (git log -1 --pretty=format:%s $BRANCH)
if test "$REV" = "$REV_LOG"
  echo "already deployed"
  exit 0
end

git stash save
rm -rf output
if not bundle exec nanoc
  echo 'bundle exec nanoc failed!'
  exit 1
end
if not npm run build
  echo 'npm run build failed!'
  exit 1
end
if not git checkout $BRANCH
  echo "missing orphan branch '$BRANCH'"
  exit 1
end
git rm -rf .
git checkout master -- .gitignore
mv output/* . && rm -rf output
git add .
git commit -m "$REV"
git push xoryves $BRANCH

git checkout master
git stash pop

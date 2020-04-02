# build site
rm "./docs" -recurse -force
hugo -d "./docs"

# commit changes
git add .\docs\*
git commit -m 'deploy'

# deploy to github
git push
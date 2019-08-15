hugo -s C:\temp\MoreThanCodeSite
git checkout master
mv C:\temp\MoreThanCodeSite .
git add .
git cm 'Update site'
git push
git checkout redesign-hugo
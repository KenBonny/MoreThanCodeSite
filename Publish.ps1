hugo -d C:\temp\MoreThanCodeSite
git checkout master
Remove-Item .\* -Recurse -Force
##Move-Item C:\temp\MoreThanCodeSite\* .
##git add .
## git cm 'Update site'
## git pull
## git push
##git checkout redesign-hugo
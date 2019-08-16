hugo -d C:\temp\MoreThanCodeSite
git checkout master
Get-ChildItem . -Exclude .\.git\* | Remove-Item -Recurse -Force
Copy-Item C:\temp\MoreThanCodeSite\* .
Remove-Item C:\temp\MoreThanCodeSite
##git add .
## git cm 'Update site'
## git pull
## git push
##git checkout redesign-hugo
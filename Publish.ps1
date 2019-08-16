hugo -d C:\temp\MoreThanCodeSite
git checkout master
Get-ChildItem . -Exclude .\.git\* | Remove-Item -Force -Recurse
Copy-Item C:\temp\MoreThanCodeSite\* . -Force -Recurse
Remove-Item C:\temp\MoreThanCodeSite -Force -Recurse
git add .
git cm 'Update site'
git push -Force
#git checkout redesign-hugo
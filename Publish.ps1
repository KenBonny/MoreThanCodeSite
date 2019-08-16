$tempLocation = "C:\temp\MoreThanCodeSite"
hugo -d $tempLocation
git checkout master
Get-ChildItem . -Exclude .\.git\* | Remove-Item -Force -Recurse
Copy-Item $tempLocation\* . -Force -Recurse
Remove-Item $tempLocation -Force -Recurse
git add .
git cm 'Update site'
git push --force
git checkout develop
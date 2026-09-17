# * build for github
flutter build web --release --base-href /web/ --output=build/github

# auto commit and push
$msg = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

git add .
git commit -m "$msg"
git push
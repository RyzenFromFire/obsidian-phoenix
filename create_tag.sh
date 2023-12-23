tag=$(grep -Po '"version": ".*"' ./manifest.json | grep -Po '(?:(\d+)\.)?(?:(\d+)\.)?(?:(\d+)\.\d+)')
echo "Creating tag '$tag'"
git tag -a $tag -m "$tag"
git push origin $tag
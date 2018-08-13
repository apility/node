set -ex

USERNAME=$DOCKER_USERNAME
IMAGE=node

git pull

docker run --rm -v "$PWD":/app treeder/bump patch
version=`cat VERSION`
echo "version: $version"

./build.sh
git add -A
git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push
git push --tags
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

docker login -u $USERNAME -p $DOCKER_PASSWORD
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version

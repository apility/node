set -ex

USERNAME=apility
IMAGE=node
docker build -t $USERNAME/$IMAGE:latest .

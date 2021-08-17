docker build -t stephengrider/multi-client -f ./client/Dockerfile ./client
docker build -t stephengrider/multi-server -f ./server/Dockerfile ./server
docker build -t stephengrider/multi-worker -f ./worker/Dockerfile ./worker
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
kubectl apply -f k8s 
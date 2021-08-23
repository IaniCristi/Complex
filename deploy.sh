echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t stephengrider/multi-client -f ./client/Dockerfile ./client
docker build -t stephengrider/multi-server -f ./server/Dockerfile ./server
docker build -t stephengrider/multi-worker -f ./worker/Dockerfile ./worker
#curl -u iani:1137055645a9fff6e5f8740fa7be2dda6d "http://localhost:8080/job/k8s/"
minikube delete
minikube start
kubectl config set-context minikube --user=jenkins
kubectl apply -f k8s

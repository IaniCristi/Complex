echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t stephengrider/multi-client -f ./client/Dockerfile ./client
docker build -t stephengrider/multi-server -f ./server/Dockerfile ./server
docker build -t stephengrider/multi-worker -f ./worker/Dockerfile ./worker
#curl -u iani:1137055645a9fff6e5f8740fa7be2dda6d "http://localhost:8080/job/k8s/"
kubectl --kubeconfig=config config set-context --current --user=minikube
kubectl --kubeconfig=config apply -f pgpassword.yaml
kubectl --kubeconfig=config apply -f k8s

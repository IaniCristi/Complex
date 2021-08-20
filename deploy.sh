echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t stephengrider/multi-client -f ./client/Dockerfile ./client
docker build -t stephengrider/multi-server -f ./server/Dockerfile ./server
docker build -t stephengrider/multi-worker -f ./worker/Dockerfile ./worker
#curl -u iani:1137055645a9fff6e5f8740fa7be2dda6d "http://localhost:8080/job/k8s/"
kubectl config set-context minikube
kubectl apply -f jenkins-sa.yaml
kubectl apply -f k8s --token=eyJhbGciOiJSUzI1NiIsImtpZCI6IjQwdVJwN0RtMC1KYWRQbm9kaGZWSzlGWTItMmY4M18yckxGOFpwb2Q1Y2MifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZWNyZXQubmFtZSI6ImplbmtpbnMtdG9rZW4tbXFjcjYiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC5uYW1lIjoiamVua2lucyIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6IjI5YTk5Mzc0LTMyYWUtNGJiZi1hYWIyLTljMTFjMDFmZDYyMCIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpkZWZhdWx0OmplbmtpbnMifQ.49kiHxTkGkxC4fxr1mT_N-Cq-wtVy9mKuLLqu1IGD7RjuiPhi14LyYZc0mlmuejaWgDQERdXr37O7J9V-nodp-DP4msKt0GdtAlbml60pCSGUbP3d32NjXTfrp5ZFblzDUDflSjGp6mwqjbTPT06AHXXVPlZ9cXkxh7eRpfo90TT75C_HADZhAsA7qTmlM14KAPVzDualqDhRvERnN-X-k56lBXeOkbr-tkbB_Azx4ZO0u3ar2BqOx0cpXvHHw8kQTp-kiIKyFTgno-W8bP49LMQguP1EG2JnSwyMwbEYGLHlAdEo2H-5nWh9ms-Ar_biLrjadjF5bGVbg0cdvgEVA

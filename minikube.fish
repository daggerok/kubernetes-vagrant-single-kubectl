#!/usr/local/bin/fish

minikube start
# Starting local Kubernetes cluster...
# Starting VM...
# ...
# Kubectl is now configured to use the cluster.

# kubectl run webapp --image=nginx --port=80
# kubectl get deployments

# set -l host (minikube ip)

# kubectl expose deployment webapp --target-port=80 --type=NodePort
# kubectl get service webapp                                                                                                                                               01:24:03
# NAME      CLUSTER-IP   EXTERNAL-IP   PORT(S)        AGE
# webapp    10.0.0.58    <nodes>       80:30049/TCP   15s
# set -l port 30049

# http "$host:$port"
# nginx respose...

# or simply:
# echo (minikube service webapp --url)

minikube dashboard
minikube stop
minicube delete

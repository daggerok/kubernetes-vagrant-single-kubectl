#!/usr/local/bin/fish

minikube start
# Starting local Kubernetes cluster...
# Starting VM...
# ...
# Kubectl is now configured to use the cluster.

# kubectl run webapp --image=nginx --port=80
# kubectl get deployments

# kubectl get nodes
# NAME          STATUS    AGE       VERSION
# 172.17.4.99   Ready     55m       v1.5.4+coreos.0
# set -l host 172.17.4.99 

# kubectl expose deployment webapp --target-port=80 --type=NodePort
# kubectl get service webapp                                                                                                                                               01:24:03
# NAME      CLUSTER-IP   EXTERNAL-IP   PORT(S)        AGE
# webapp    10.3.0.231   <nodes>       80:32175/TCP   6m
# set -l port 32175

# http "$host:$port"
# nginx respose...

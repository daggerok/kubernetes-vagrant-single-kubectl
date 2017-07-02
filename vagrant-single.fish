#!/usr/local/bin/fish

kubectl config set-credentials vagrant-single-admin \
  --certificate-authority=$PWD/ssl/ca.pem \
  --client-key=$PWD/ssl/admin-key.pem \
  --client-certificate=$PWD/ssl/admin.pem

kubectl config set-context vagrant-single \
  --cluster=vagrant-single-cluster \
  --user=vagrant-single-admin

kubectl config use-context vagrant-single

# kubectl get nodes
# kubectl run webapp --image=nginx --port=80
# kubectl get deployments
# kubectl get pods

#!/bin/bash

read -p "What is your ResourceGroup name?" RG
ResourceGroup=$RG
echo 
read -p "What is your AKS cluster name?" CL
Cluster=$CL
echo

echo "Building app.."

az aks get-credentials --resource-group $RG --name $CL

kubectl apply -f azure-vote.yaml

kubectl apply -f ingress.yaml

echo "Creating a service account for Tiller service... Don't worry, i'll do it for you!"

#kubectl apply -f helm-rbac.yaml

#helm init --service-account tiller --node-selectors "beta.kubernetes.io/os"="linux"

#helm repo update

#echo "Installing Nginx-Ingress..."

#kubectl create namespace ingress-basic

#helm install stable/nginx-ingress \
#    --namespace ingress-basic \
#    --set controller.replicaCount=2 \
#    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
#    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux

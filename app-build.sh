#!/bin/bash

###########################################
#         Autor: Mayara Gouveia           #
#           gb8may@gmail.com              #
#              Release 1.0                #
###########################################


read -p "What is your ResourceGroup name?" RG
ResourceGroup=$RG
echo 
read -p "What is your AKS cluster name?" CL
Cluster=$CL
echo

echo "Building app.."

az aks get-credentials --resource-group $RG --name $CL

kubectl apply -f azure-vote.yaml

echo "Creating a service account for Tiller service... Don't worry, i'll do it for you!"

kubectl apply -f helm-rbac.yaml

helm init --service-account tiller --node-selectors "beta.kubernetes.io/os"="linux"

helm repo update

echo "Installing Nginx-Ingress..."

helm install stable/nginx-ingress \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux

kubectl apply -f ingress.yaml


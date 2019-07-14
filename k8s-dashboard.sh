#!/bin/bash

read -p "What is your ResourceGroup name?" RG
ResourceGroup=$RG
echo 
read -p "What is your AKS cluster name?" CL
Cluster=$CL
echo
echo "Building your dashboard..."
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
az aks browse --resource-group $RG --name $CL

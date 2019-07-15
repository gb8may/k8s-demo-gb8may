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
echo "Building your AKS cluster, it take several minutes..."
echo
az aks create \
    --resource-group $RG \
    --name $CL \
    --node-count 2 \
    --enable-addons monitoring \
    --generate-ssh-keys

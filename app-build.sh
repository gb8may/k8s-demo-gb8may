#!/bin/bash

echo "Building app.."

kubectl apply -f azure-vote.yaml

echo "Creating a service account for Tiller service... Don't worry, i'll do it for you!"

kubectl apply -f helm-rbac.yaml

helm init --service-account tiller --node-selectors "beta.kubernetes.io/os"="linux"


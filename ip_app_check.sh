#!/bin/bash


###########################################
#         Autor: Mayara Gouveia           #
#           gb8may@gmail.com              #
#              Release 1.0                #
###########################################


echo "This are informations about your application's network"

kubectl get svc |grep NAME
kubectl get svc |grep LoadBalancer

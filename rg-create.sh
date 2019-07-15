#!/bin/bash

###########################################
#         Autor: Mayara Gouveia           #
#           gb8may@gmail.com              #
#              Release 1.0                #
###########################################


read -p "What name should i use in your ResourceGroup?" RG
ResourceGroup=$RG
echo 
read -p "In what Location the resource group will be hosted" LO
Location=$LO
echo
echo "Creating your ResourceGroup..."
echo 
az group create --name $RG --location $LO

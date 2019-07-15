---
# Building a demo app on Azure with AKS using Nginx-Ingress
> by Mayara Gouveia - gb8may@gmail.com

If you need, create a resource group using:
```
rg-create.sh
```

Create your cluster using this script:
```
aks-create.sh
```
Build you app using this script:
```
app-build.sh
```
> In our example, we use the service type NodePort instead of LoadBalancer. Nginx-Ingress will work as a LoadBalancer for us.

Start you Kubernetes dashboard using this script:
```
k8s-dashboard.sh
```
Get informations about your application's network:
```
ip_app_check.sh


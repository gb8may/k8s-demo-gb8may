# k8s-demo-gb8may
Demo using Kubernetes with Nginx Ingress

Cluster was created by using this command

az aks create \
    --resource-group gb8mayRG \
    --name gb8mayaks \
    --node-count 2 \
    --enable-addons monitoring \
    --generate-ssh-keys

To start you Kubernetes dashboard:

bash k8s-dashboard.sh

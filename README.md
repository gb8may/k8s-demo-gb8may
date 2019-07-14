# k8s-demo-gb8may

Demo using Kubernetes with Nginx Ingress

Create your cluster using this script:

aks-create.sh

Build you app using this script:

app-build.sh

In our example, we use the service type NodePort instead of LoadBalancer.
Nginx-Ingress will work as a LoadBalancer for us.

Start you Kubernetes dashboard using this script:

k8s-dashboard.sh

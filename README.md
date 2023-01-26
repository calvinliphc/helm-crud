# helm-crud

Based on this [tutorial](https://wkrzywiec.medium.com/how-to-deploy-application-on-kubernetes-with-helm-39f545ad33b8) and this [repo](https://github.com/wkrzywiec/k8s-helm-helmfile/tree/master/helm)

This is designed to work on a local minikube cluster.
You can also run this cluster on a managed Kubernetes service such as GKE or EKS.

If running on minikube, make sure your minikube cluster has ingress enabled by running:

`minikube addons enable ingress`

Then, make sure you have [helm](https://helm.sh/docs/intro/install/) installed on your local machine

Finally, ensure that you have [kubectl](https://kubernetes.io/docs/tasks/tools/) installed and that it is configured for your cluster (either minikube or your managed EKS/GKE cluster). You can run `kubectl config use-context <cluster_name>` to switch to the right context ("minikube" is the default name for minikube cluster config).

To install this app on your cluster, run the following commands:

`helm install -f values/kanban-postgres.yaml postgres ./charts/postgres`

`helm install -f values/adminer.yaml adminer ./charts/app`

`helm install -f values/kanban-app.yaml kanban-app ./charts/app`

`helm install -f values/kanban-ui.yaml kanban-ui ./charts/app`

`helm install -f values/ingress.yaml ingress ./charts/ingress`

Run `minikube ip` to check the IP address of your minikube cluster.
For a managed GKE/EKS cluster, run `kubectl get services` and check the External IP of your ingress controller.
Let's refer to this IP as <CLUSTER_IP>

Visit <CLUSTER_IP> to use the kanban board app, and visit <CLUSTER_IP>/adminer to manage the database.




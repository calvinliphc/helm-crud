# helm-crud

Based on this [tutorial](https://wkrzywiec.medium.com/how-to-deploy-application-on-kubernetes-with-helm-39f545ad33b8) and this [repo](https://github.com/wkrzywiec/k8s-helm-helmfile/tree/master/helm)

This is designed to work on a local minikube cluster.

Make sure your minikube cluster has ingress enabled by running:

`minikube addons enable ingress`

Then, make sure you have [helm](https://helm.sh/docs/intro/install/) installed

Finally, ensure that you have [kubectl](https://kubernetes.io/docs/tasks/tools/) installed and that it is configured for your minikube cluster. You can run `kubectl config use-context minikube` in case you had previously been using kubectl on another cluster. 

To install this app on your cluster, run the following commands:

`helm install -f values/kanban-postgres.yaml postgres ./charts/postgres`

`helm install -f values/adminer.yaml adminer ./charts/app`

`helm install -f values/kanban-app.yaml kanban-app ./charts/app`

`helm install -f values/kanban-ui.yaml kanban-ui ./charts/app`

`helm install -f values/ingress.yaml ingress ./charts/ingress`

Run `minikube ip` to check the IP address of your minikube cluster.

Visit <MINIKUBE_IP> to use the kanban board app, and visit <MINIKUBE_IP/adminer> to manage the database.

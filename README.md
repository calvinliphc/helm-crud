# helm-crud

Based on this [tutorial](https://wkrzywiec.medium.com/how-to-deploy-application-on-kubernetes-with-helm-39f545ad33b8) and this [repo](https://github.com/wkrzywiec/k8s-helm-helmfile/tree/master/helm)

To install this app on your cluster, run the following commands:

`helm install -f kanban-postgres.yaml postgres ./postgres`

`helm install -f adminer.yaml adminer ./app`

`helm install -f kanban-app.yaml kanban-app ./app`

`helm install -f kanban-ui.yaml kanban-ui ./app`

`helm install -f ingress.yaml ingress ./ingress`

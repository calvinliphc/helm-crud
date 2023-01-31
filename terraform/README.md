# Terraform deploy

Deploy the crud application using this Terraform configuration.

From this directory, simply run:

`terraform init`

`terraform apply`

There are 2 variables you can override:
* config_path : by default "~/.kube/config"; path to the kube config for your cluster
* config_context : by default "": name of the specific cluster context within your kube config

*OR*

Change these values in a terraform.tfvars file or pass them into the terraform apply command like so:

`terraform apply -var config_path=/some/path -var config_context=contextname`

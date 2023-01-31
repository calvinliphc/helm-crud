variable "config_path" {
    type = string
    description = "The path to relevant kube config file for your cluster"
    default = "~/.kube/config"
}

variable "config_context" {
    type = string
    description = "Name of relevant context in your kube config"
    default = ""
}
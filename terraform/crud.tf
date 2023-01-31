provider "helm" {
    kubernetes {
        config_path = var.config_path
        config_context = var.config_context
    }
}

resource "helm_release" "postgres" {
  name       = "postgres"

  repository = "https://calvinliphc.github.io/helm-crud"
  chart      = "postgres"

  values = [
    file("../values/kanban-postgres.yaml"),
  ]
}

resource "helm_release" "adminer" {
  name       = "adminer"

  repository = "https://calvinliphc.github.io/helm-crud"
  chart      = "adminer"

  values = [
    file("../values/adminer.yaml"),
  ]
  depends_on = [
    helm_release.postgres
  ]
}

resource "helm_release" "kanban-app" {
  name       = "kanban-app"

  repository = "https://calvinliphc.github.io/helm-crud"
  chart      = "app"

  values = [
    file("../values/kanban-app.yaml"),
  ]
  depends_on = [
    helm_release.postgres
  ]
}

resource "helm_release" "kanban-ui" {
  name       = "kanban-ui"

  repository = "https://calvinliphc.github.io/helm-crud"
  chart      = "app-ui"

  values = [
    file("../values/kanban-ui.yaml"),
  ]
  depends_on = [
    helm_release.kanban-app
  ]
}

resource "helm_release" "ingress" {
  name       = "nginx-ingress-controller"

  repository = "https://calvinliphc.github.io/helm-crud"
  chart      = "ingress"

  values = [
    file("../values/ingress.yaml"),
  ]
}

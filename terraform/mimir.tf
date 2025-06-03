resource "helm_release" "mimir" {
  name             = "mimir"
  namespace        = "monitoring"
  create_namespace = true

  repository = "https://grafana.github.io/helm-charts"
  chart      = "mimir-distributed"
  version    = "5.7.0"

  values = [
    file("values/mimir.yaml")
  ]
}

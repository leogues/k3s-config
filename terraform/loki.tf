resource "helm_release" "loki" {
  name             = "loki"
  namespace        = "monitoring"
  create_namespace = true

  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki"
  version    = "6.30.1"
  values     = [file("values/loki-microservice.yaml")]
}

resource "helm_release" "k8s_monitoring" {
  name             = "k8s-monitoring"
  namespace        = "monitoring"
  create_namespace = true

  repository = "https://grafana.github.io/helm-charts"
  chart      = "k8s-monitoring"
  version    = "2.1.4"
  values = [
    file("values/k8s-monitoring.yaml")
  ]
}

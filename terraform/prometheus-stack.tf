resource "helm_release" "prometheus_stack" {
  name             = "prom-stack"
  namespace        = "monitoring"
  create_namespace = true

  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  version    = "72.9.0"

  values = [
    file("values/prometheus-stack.yaml")
  ]
}

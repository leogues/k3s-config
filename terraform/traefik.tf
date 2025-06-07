resource "helm_release" "traefik" {
  name      = "traefik"
  namespace = "kube-system"

  chart = "${path.module}/charts/traefik-34.2.1+up34.2.0.tgz"

  values = [file("values/k3s-traefik.yaml")]
}

resource "helm_release" "updater" {
  name             = "updater"
  namespace        = "argocd"
  create_namespace = true

  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argocd-image-updater"
  version    = "0.12.1"

  values = [file("values/image-updater.yaml")]

  depends_on = [helm_release.argocd]
}

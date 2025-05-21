resource "helm_release" "postgres_cluster" {
  name             = "postgres"
  namespace        = "database"
  create_namespace = true

  repository = "https://cloudnative-pg.github.io/charts"
  chart      = "cluster"
  version    = "0.3.1"

  values = [file("values/cnpg-cluster.yaml")]

  depends_on = [helm_release.cnpg_operator]
}

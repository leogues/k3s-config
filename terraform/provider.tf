provider "helm" {
  kubernetes {
    config_path = "~/.kube/config-k3s"
  }
}

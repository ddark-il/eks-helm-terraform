provider "helm" {
  kubernetes {
    config_path = "C:\\Users\\ddark\\.kube\\config"
  }
}

resource "helm_release" "docker-repo" {

  name = "docker-repo"

  repository = "https://helm.twun.io"
  chart      = "docker-registry"
  namespace  = "default"


  set {
    name  = "service.type"
    value = "LoadBalancer"
  }

}
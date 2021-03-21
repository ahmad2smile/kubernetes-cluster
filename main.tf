provider "kubernetes" {
  config_path            = "~/.kube/config"
  config_context_cluster = "minikube"
}

resource "kubernetes_pod" "demoapp" {
  metadata {
    name = "demo-app"
    labels = {
      App = "demo-app"
    }
  }

  spec {
    container {
      image = "ghcr.io/benc-uk/nodejs-demoapp"
      name  = "demo-app"

      port {
        container_port = 3000
      }
    }
  }
}

resource "kubernetes_service" "demo-app" {
  metadata {
    name = "demo-app"
  }

  spec {
    selector = {
      App = kubernetes_pod.demoapp.metadata[0].labels.App
    }

    port {
      port        = 80
      target_port = 3000
    }

    type = "NodePort"
  }
}

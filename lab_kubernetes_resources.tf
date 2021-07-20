resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "Long-Live-THe-Bat"
    labels = {
      App = "LongLiveTheBat"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "LongLiveTheBat"
      }
    }
    template {
      metadata {
        labels = {
          App = "LongLiveTheBat"
        }
      }
      spec {
        container {
          image = "nginx:1.7.8"
          name  = "Batman"

          port {
            container_port = 80
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}

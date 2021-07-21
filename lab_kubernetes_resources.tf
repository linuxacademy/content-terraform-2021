resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "long-live-the-bat"
    labels = {
      App = "longlivethebat"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "longlivethebat"
      }
    }
    template {
      metadata {
        labels = {
          App = "longlivethebat"
        }
      }
      spec {
        container {
          image = "nginx:1.7.8"
          name  = "batman"

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

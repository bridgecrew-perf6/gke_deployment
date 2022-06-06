resource "kubernetes_deployment" "app_deployement" {
  metadata {
    name = "${var.metadata_name_deploy}"
  }

spec {
    replicas = "${var.replicas_number}"

    selector {
      match_labels = {
        app= "${var.label_pod}"
      }
    }
    template {
      metadata {
        labels = {
        app= "${var.label_pod}"
        }
      }
     spec {
        container {
        # image du code source de l'application    
        image = "$LOCATION-docker.pkg.dev/$GCLOUD_PROJECT/hello-repo/helloworld-gke:latest"
        name  = "myapp"

        resources {
            limits {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
    }
     }
    }
}
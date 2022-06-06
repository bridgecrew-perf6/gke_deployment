resource "google_container_cluster" "primary" {
  name     = "${var.name}"
  location           = "${var.location}"
  remove_default_node_pool = true
  initial_node_count = "${var.initial_node_count}"

  master_auth {
    #authentication onto the master node  
    username = "${var.username}"
    password = "${var.password}"
 
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    

    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
       
    ]
   labels = {
      foo = "bar"
    }
    tags = ["foo", "bar"]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
  }


variable "username" { 
    default = "juppe" 
    }
variable "password" { 
    default = "xxxxxxxxxxxx"
    }
# appel des modules créés afin que terraform puisse les déployer
    module "gke_cluster" {
    source = "./modules/gke_cluster"
    name               = "python-app-gke"
    username           = "juppe"
    password           = "xxxxxxxxxxxx"
    initial_node_count = 3
    location           = "europe-west3"
 
 
  }

  module "k8s" {
    source = "./modules/k8s_ressources"
      depends_on = ["${module.gke_cluster}"]
  
  ip     = "${module.gke_cluster.ip}"
  username = "${var.username}"
  password = "${var.password}"

  client_certificate     = "${module.gke_cluster.client_certificate}"
  client_key             = "${module.gke_cluster.client_key}"
  cluster_certificate = "${module.gke_cluster.cluster_ca_certificate}"

  }
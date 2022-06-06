variable "name" {
    description = "The name of the cluster"
    # default = "python-app-gke"
}

variable "location" {
  
}

variable "initial_node_count" {
    type = number
    description = "number of nodes"  
    
}

variable "username" {
# description = "username to connect in the cluster" 
 
}

variable "password" {
#  description = "password for the connection into the cluster"  
  
}


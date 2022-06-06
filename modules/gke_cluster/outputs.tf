output "client_certificate" {
    # Certificat public encodé en Base64 utilisé par les clients pour s'authentifier auprès du point de terminaison du cluster.
    value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "client_key" {
    # Clé privée codée en Base64 utilisée par les clients pour s'authentifier auprès du point de terminaison du cluster.
    value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "cluster_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}" 
}

output "ip" {
    #The IP address of this cluster's Kubernetes master
    value = "${google_container_cluster.primary.endpoint}"
}
Ce repo github contient 2 modules :
-	Le module gke_cluster pour la création du cluster 
-	Le module k8s_resources pour déployer les ressources k8s sur le cluster créé précédemment.
Le module gke_cluster contient les fichiers suivants :
cluster.tf pour le déploiement du cluster ; outputs.tf qui contient les attributs ; variables.tf pour la déclaration de variables
Le module k8s_resources permet via le provider « kubernetes » de provisionner les ressources kubernetes dans le cluster GKE crée ; le fichier deployment.tf pour le déploiement d’un objet de type Deployment et le fichier services.tf pour le déploiement d’un objet service (le load balancer) pour exposer l’application sur le port 80.
Le fichier « provider_k8s » permet de déclarer le provider « kubernetes » nécessaire afin de se connecter sur le cluster.
Le fichier « main.tf » pour lancer les modules
Le fichier « provider.tf » pour declarer le provider Google qui téléchargera les plugins.
A la fin du déploiement, sur notre compte Google cloud, nous aurons toutes les ressources provisionnées.

provider "google" {
  project = "web-proj-432412"
  region    = "europe-west2-a"
}

resource "google_container_cluster" "primary" {
  name               = "web-portfolio"
  location           = "europe-west2-a"
  initial_node_count = 1
  enable_legacy_abac = false
}

resource "google_container_node_pool" "general" {
  cluster    = google_container_cluster.primary.name
  location   = google_container_cluster.primary.location
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
    disk_type    = "pd-standard"  # Change to standard disks
    disk_size_gb = 20
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

output "kubeconfig" {
  value = google_container_cluster.primary.endpoint
}

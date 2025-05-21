resource "google_container_cluster" "testgke" {
    name                = var.cluster_name
    location            = var.cluster_location
    initial_node_count  = var.cluster_node_count

    node_config {
      machine_type      = "e2-medium"
    }
}

resource "google_container_node_pool" "testgkenode" {
    name        = "testgkenode"
    cluster     = google_container_cluster.testgke.name
    location    = var.cluster_location
    node_count  = 2

    node_config {
      machine_type = "e2-medium"
    }
}

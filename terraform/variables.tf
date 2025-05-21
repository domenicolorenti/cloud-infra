variable "project_id" {
    type = string
    description = "The ID of the GCP project"
}

variable "region" {
    type = string
    description = "The region to deploy the resources to"
}

variable "cluster_name" {
    type = string
    description = "The name of the GKE cluster"
}

variable "cluster_location" {
    type = string
    description = "The location of the GKE cluster"
}

variable "cluster_node_count" {
    type = number
    description = "The number of nodes in the GKE cluster"
}
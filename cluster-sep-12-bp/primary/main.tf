/**
  * Copyright 2023 Google LLC
  *
  * Licensed under the Apache License, Version 2.0 (the "License");
  * you may not use this file except in compliance with the License.
  * You may obtain a copy of the License at
  *
  *      http://www.apache.org/licenses/LICENSE-2.0
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  */

module "network1" {
  source          = "./modules/embedded/modules/network/vpc"
  deployment_name = var.deployment_name
  project_id      = var.project_id
  region          = var.region
  secondary_ranges = {
    gke-subnet = [{
      ip_cidr_range = "10.4.0.0/14"
      range_name    = "pods"
      }, {
      ip_cidr_range = "10.0.32.0/20"
      range_name    = "services"
    }]
  }
  subnetwork_name = "gke-subnet"
}

module "gke_cluster" {
  source                  = "./modules/embedded/modules/scheduler/gke-cluster"
  deployment_name         = var.deployment_name
  enable_private_endpoint = false
  labels                  = var.labels
  network_id              = module.network1.network_id
  project_id              = var.project_id
  region                  = var.region
  subnetwork_self_link    = module.network1.subnetwork_self_link
}

module "compute_pool" {
  source     = "./modules/embedded/modules/compute/gke-node-pool"
  cluster_id = module.gke_cluster.cluster_id
  labels     = var.labels
  project_id = var.project_id
}

module "job-template" {
  source                   = "./modules/embedded/modules/compute/gke-job-template"
  allocatable_cpu_per_node = flatten([module.compute_pool.allocatable_cpu_per_node])
  command                  = ["echo", "Hello World"]
  has_gpu                  = flatten([module.compute_pool.has_gpu])
  image                    = "busybox"
  labels                   = var.labels
  node_count               = 3
  node_pool_name           = flatten([module.compute_pool.node_pool_name])
  tolerations              = flatten([module.compute_pool.tolerations])
}

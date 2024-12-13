<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Copyright 2023 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 6.13.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | 6.13.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_a3-ultragpu-cluster"></a> [a3-ultragpu-cluster](#module\_a3-ultragpu-cluster) | github.com/GoogleCloudPlatform/cluster-toolkit.git//modules/scheduler/gke-cluster | e0c690b |
| <a name="module_a3-ultragpu-pool"></a> [a3-ultragpu-pool](#module\_a3-ultragpu-pool) | github.com/GoogleCloudPlatform/cluster-toolkit.git//modules/compute/gke-node-pool | e0c690b |
| <a name="module_gke-a3-ultra-net-0"></a> [gke-a3-ultra-net-0](#module\_gke-a3-ultra-net-0) | github.com/GoogleCloudPlatform/cluster-toolkit.git//modules/network/vpc | e0c690b |
| <a name="module_gke-a3-ultra-net-1"></a> [gke-a3-ultra-net-1](#module\_gke-a3-ultra-net-1) | github.com/GoogleCloudPlatform/cluster-toolkit.git//modules/network/vpc | e0c690b |
| <a name="module_gke-a3-ultra-rdma-net"></a> [gke-a3-ultra-rdma-net](#module\_gke-a3-ultra-rdma-net) | github.com/GoogleCloudPlatform/cluster-toolkit.git//community/modules/network/rdma-vpc | 98c49fe |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_a3ultra_node_pool_disk_size_gb"></a> [a3ultra\_node\_pool\_disk\_size\_gb](#input\_a3ultra\_node\_pool\_disk\_size\_gb) | Toolkit deployment variable: a3ultra\_node\_pool\_disk\_size\_gb | `number` | n/a | yes |
| <a name="input_authorized_cidr"></a> [authorized\_cidr](#input\_authorized\_cidr) | Toolkit deployment variable: authorized\_cidr | `string` | n/a | yes |
| <a name="input_deployment_name"></a> [deployment\_name](#input\_deployment\_name) | Toolkit deployment variable: deployment\_name | `string` | n/a | yes |
| <a name="input_extended_reservation"></a> [extended\_reservation](#input\_extended\_reservation) | Toolkit deployment variable: extended\_reservation | `string` | n/a | yes |
| <a name="input_gke_min_version"></a> [gke\_min\_version](#input\_gke\_min\_version) | Toolkit deployment variable: gke\_min\_version | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Toolkit deployment variable: labels | `any` | n/a | yes |
| <a name="input_mtu_size"></a> [mtu\_size](#input\_mtu\_size) | Toolkit deployment variable: mtu\_size | `number` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Toolkit deployment variable: project\_id | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Toolkit deployment variable: region | `string` | n/a | yes |
| <a name="input_static_node_count"></a> [static\_node\_count](#input\_static\_node\_count) | Toolkit deployment variable: static\_node\_count | `number` | n/a | yes |
| <a name="input_system_node_pool_disk_size_gb"></a> [system\_node\_pool\_disk\_size\_gb](#input\_system\_node\_pool\_disk\_size\_gb) | Toolkit deployment variable: system\_node\_pool\_disk\_size\_gb | `number` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Toolkit deployment variable: zone | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instructions_a3-ultragpu-cluster"></a> [instructions\_a3-ultragpu-cluster](#output\_instructions\_a3-ultragpu-cluster) | Generated output from module 'a3-ultragpu-cluster' |
| <a name="output_instructions_a3-ultragpu-pool"></a> [instructions\_a3-ultragpu-pool](#output\_instructions\_a3-ultragpu-pool) | Generated output from module 'a3-ultragpu-pool' |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
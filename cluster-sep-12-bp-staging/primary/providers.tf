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

provider "google" {
  compute_custom_endpoint   = "https://www.googleapis.com/compute/staging_v1/"
  container_custom_endpoint = "https://hpc-toolkit-gke-sandbox-test-container.sandbox.googleapis.com/"
  project                   = var.project_id
  region                    = var.region
  zone                      = var.zone
}

provider "google-beta" {
  compute_custom_endpoint   = "https://www.googleapis.com/compute/staging_v1/"
  container_custom_endpoint = "https://hpc-toolkit-gke-sandbox-test-container.sandbox.googleapis.com/"
  project                   = var.project_id
  region                    = var.region
  zone                      = var.zone
}

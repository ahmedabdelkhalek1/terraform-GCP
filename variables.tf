variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "gcp_credentials" {
  description = "The JSON credentials for GCP"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

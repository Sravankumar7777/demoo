terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.79.0"
    }
  }
}

provider "google" {
  # Configuration options
}

module "cloudstorage" {
  source = "./cloudstorage"
  storage_bucket-name = var.storage_bucket-name
  storage_bucket-location = var.storage_bucket-location
  storage_bucket-project = var.storage_bucket-project
  storage_bucket-forcedestory = var.storage_bucket-forcedestory
  storage_bucket-age = var.storage_bucket-age
  storage_bucket-action_type = var.storage_bucket-action_type
  storage_bucket-age-lc = var.storage_bucket-age-lc
  storage_bucket-action_type-lc = var.storage_bucket-action_type-lc
  retention_policy-is_locked = var.retention_policy-is_locked
  retention_policy-period = var.retention_policy-period
  content_folder-name = var.content_folder-name
  content_folder-type = var.content_folder-type
  access_control_publicrule-role = var.access_control_publicrule-role
  access_control_publicrule-entity = var.access_control_publicrule-entity

}

module "bigquery" {
    source = "./bigquery"
    BQ-dataset-dataset-id = var.BQ-dataset-dataset-id
    BQ-dataset-friendly_name = var.BQ-dataset-friendly_name
    BQ-dataset-description = var.BQ-dataset-description
    BQ-dataset-location = var.BQ-dataset-location
    BQ-dataset-table-expiration = var.BQ-dataset-table-expiration
    BQ-dataset-project = var.BQ-dataset-project
    BQ-table-table_id  = var.BQ-table-table_id
    BQ-table-tp-type = var.BQ-table-tp-type
    BQ-deletion-protection = var.BQ-deletion-protection
    schema = var.BQschema

}

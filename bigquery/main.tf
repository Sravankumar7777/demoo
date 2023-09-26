resource "google_bigquery_dataset" "BQ-dataset" {
  dataset_id                  = var.BQ-dataset-dataset-id
  friendly_name               = var.BQ-dataset-friendly_name
  description                 = var.BQ-dataset-description
  location                    = var.BQ-dataset-location 
  default_table_expiration_ms = var.BQ-dataset-table-expiration 
  project= var.BQ-dataset-project 
  
}

 

resource "google_bigquery_table" "BQ-table" {
  dataset_id = google_bigquery_dataset.BQ-dataset.dataset_id
  table_id   = var.BQ-table-table_id
  project= var.BQ-dataset-project

 

 

  time_partitioning {
    type = var.BQ-table-tp-type
  }


deletion_protection = var.BQ-deletion-protection 

 

  schema = var.BQschema

 

}
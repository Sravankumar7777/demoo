variable "BQ-dataset-dataset-id" {
   type = string
   description = "datasetid of BQ"
}
variable "BQ-dataset-friendly_name" {
  type = string
  description = "name of dataset for BQ"
}
variable "BQ-dataset-description" {
   type = string
   description = "description of dataset"
}
variable "BQ-dataset-location" {
   type = string
   description = "location for dataset"
}
variable "BQ-dataset-table-expiration" {
    type = number
    description = 360000  
}
variable "BQ-dataset-project" {
    type = string
    description = "project id of gcp"
}
variable "BQ-table-table_id" {
  type = string
  description =  "table name"
}
variable "BQ-table-tp-type" {
    type = string
    description = "time partitioning of BQ table"
}
variable "BQ-deletion-protection" {
    type = bool
    description = "deletion protection to the BQ" 
}
variable "BQschema" {

    type = string

    description = "schema"

    default = <<EOF

[

  {

    "name": "permalink",

    "type": "STRING",

    "mode": "NULLABLE",

    "description": "The Permalink"

  },

  {

    "name": "state",

    "type": "STRING",

    "mode": "NULLABLE",

    "description": "State where the head office is located"

  }

]

EOF

}
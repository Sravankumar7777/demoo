variable "storage_bucket-name" {
type = string
description = "the name cloud storage account "
}
 variable "storage_bucket-location" {
type = string
description = "location for storage bucket"
 }
 variable "storage_bucket-project" {
 type = string
 description = "name of the project"
 }
 variable "storage_bucket-forcedestory" {
 type = bool
 description = "value for bucket to destory"  
 }
 variable "storage_bucket-age" {
 type = number
 description = "age of the  bucket"
 }
 variable "storage_bucket-action_type" {
 type = string
 description = "type of the  bucket" 
 }
 variable "storage_bucket-age-lc" {
   type = number
   description = "age of the lifecycle "
 }
 variable "storage_bucket-action_type-lc" {
   type = string
   description = "lifecycle for the type"             
 }
 variable "retention_policy-is_locked" {
   type = bool
   description = "retention policy for bucket"
 }
 variable "retention_policy-period" {
   type = number
   description = "retention period for bucket"
 }
 variable "content_folder-name" {
   type = string
   description = "name of the object"
 }
  variable "content_folder-type" {
   type = string
   description = "folder type in object"
  }
  variable "access_control_publicrule-role" {
   type = string
   description = "access control for public rule name for role" 
  }
  variable "access_control_publicrule-entity" {
   type = string
   description = "public rule name for entity"
  }

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
  type =string 
  description = "table name" 
  
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
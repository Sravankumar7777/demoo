resource "google_storage_bucket" "storage_bucket" {
  name          =  var.storage_bucket-name
  location      =  var.storage_bucket-location
  project       =  var.storage_bucket-project

 

  force_destroy = var.storage_bucket-forcedestory

 

  lifecycle_rule {
    condition {
      age = var.storage_bucket-age
    }
    action {
      type = var.storage_bucket-action_type
    }
  }

 

  lifecycle_rule {
    condition {
      age = var.storage_bucket-age-lc
    }
    action {
      type = var.storage_bucket-action_type-lc
    }
  }


}
   
retention_policy {  
is_locked = var.retention_policy-is_locked 
retention_period = var.retention_policy-period 
}

 

 

resource "google_storage_bucket_object" "content_folder" {
  name     = var.content_folder-name
  content_type = var.content_folder-type
  bucket        = "${google_storage_bucket.storage_bucket.name}"
}

 

resource "google_storage_bucket_access_control" "public_rule" {
  bucket = "${google_storage_bucket.storage_bucket.name}"
  role   = var.access_control_publicrule-role 
  entity = var.access_control_publicrule-entity 
}
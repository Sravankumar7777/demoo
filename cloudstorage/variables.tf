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
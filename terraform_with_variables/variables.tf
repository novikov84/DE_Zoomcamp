variable "credentials" {
  description = "My Credentials"
  default     = "C:\\Users\\Usuario\\keys\\sound-oasis-309708-9e5ae6c4517d.json"
  #ex: if you have a directory where this file is called keys with your service account json file
  #saved there as my-creds.json you could use default = "./keys/my-creds.json"
}

variable "project" {
  description = "Project"
  default     = "sound-oasis-309708"
}

variable "region" {
  description = "Region"
  default     = "us-central1"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuerry Dataset Name"
  default     = "highly_unusual_dataset_name"
}

variable "gcs_bucket_name" {
  description = "My storage Bucket Name"
  default     = "highly_unusual_bucket_name"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
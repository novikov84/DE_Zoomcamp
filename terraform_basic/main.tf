terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = "C:\\Users\\Usuario\\keys\\sound-oasis-309708-9e5ae6c4517d.json"
  project = "sound-oasis-309708"
  region  = "us-central1"
}

resource "google_storage_bucket" "data-lake-bucket" {
  name          = "highly_unusual_bucket_name"
  location      = "US"

  # Optional, but recommended settings:
  storage_class = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  // days
    }
  }

  force_destroy = true
}


resource "google_bigquery_dataset" "dataset" {
  dataset_id =  "highly_unusual_dataset_name"
  project = "sound-oasis-309708"
  location   = "US"
}
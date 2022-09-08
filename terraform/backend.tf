terraform {
  backend "gcs" {
    bucket = google_storage_bucket.backend.name
    prefix = ""
  }
}
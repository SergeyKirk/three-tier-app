terraform {
  backend "gcs" {
    bucket = "three-tier-backend-bucket"
    prefix = ""
  }
}
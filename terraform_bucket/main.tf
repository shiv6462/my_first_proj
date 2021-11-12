resource "google_storage_bucket" "storage_bucket" {
  name          = "my-really-awesome-test-bucket"
  location      = "us-east4"

  project       = "my-first-project-331921"
}

resource "google_storage_bucket_object" "content_folder" {
  name          = "empty-directory/"
  content       = "Not really a directory, but it's empty."
  bucket        = "${google_storage_bucket.storage_bucket.name}"
}
resource "google_storage_bucket" "static-site" {
  name          = "ae_hiring_files_2"
  location      = "US"
  force_destroy = true
  project       = "ce-minaeskaros-da5c"

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}
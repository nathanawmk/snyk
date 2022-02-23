resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  acl = "public-read"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = merge(var.tags, {
    yor_trace = "358b582e-8319-4ce0-b4f7-5316e2d37702"
  })
}

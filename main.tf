resource "aws_s3_bucket" "s3-bucket-adham" {
  bucket = "adham1111111111111111111111"
  acl = "private"
  versioning {
    enabled = true
  }
  lifecycle_rule {
    id = "s3-class&expiration"
    enabled = true

    transition {
      days = 30
      storage_class = "GLACIER"
    }

    expiration {
      days = 365
    }
  }
}

# acl = "private" : meaning only the bucket owner has full control over the bucket and its contents.
# After 30 days (days = 30), objects in the bucket will be transitioned to the GLACIER storage class.
# Glacier is a low-cost storage class
# will be automatically deleted after 365 days (days = 365)

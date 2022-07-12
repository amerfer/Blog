#Starting terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider aws {
    access_key = "ASIA2P6CM4D2IVYWMKUG"
    secret_key = "ZuU6lCRVBM4mmQx2U3hceFTf4yp2YwXFtS9cKbpM"
    region = ""
}

#creating an s3 project
resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.example.bucket

  index_document {
    suffix = "assets/index.html"
  }

}




# resource "aws_s3_bucket" "b" {
#   bucket = "s3-website-test.hashicorp.com"
#   acl    = "public-read"
#   policy = file("policy.json")

#   website {
#     index_document = "index.html"
#   }
# }
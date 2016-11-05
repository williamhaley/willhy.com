provider "aws" {
	profile = "default"
	region  = "us-east-1"
}

resource "aws_s3_bucket" "willhy_com" {
	bucket = "willhy.com"
	acl    = "public-read"
	website {
		index_document = "index.html"
	}
}

resource "aws_s3_bucket_object" "test_index" {
	key          = "index.html"
	bucket       = "${aws_s3_bucket.willhy_com.bucket}"
	content      = "<html><body>hey</body></html>"
	acl          = "public-read"
	content_type = "text/html"
}

resource "aws_s3_bucket" "www_willhy_com" {
	bucket = "www.willhy.com"
	acl    = "public-read"
	website {
		redirect_all_requests_to = "willhy.com"
	}
}


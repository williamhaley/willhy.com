resource "aws_route53_zone" "willhy_com" {
	name = "willhy.com"
}

resource "aws_route53_record" "www_willhy_com" {
	zone_id = "${aws_route53_zone.willhy_com.zone_id}"
	name    = "www.willhy.com"
	type    = "A"

	alias {
		name                   = "${aws_s3_bucket.www_willhy_com.website_domain}"
		zone_id                = "${aws_s3_bucket.www_willhy_com.hosted_zone_id}"
		evaluate_target_health = false
	}
}

resource "aws_route53_record" "willhy_com" {
	zone_id = "${aws_route53_zone.willhy_com.zone_id}"
	name    = "willhy.com"
	type    = "A"

	alias {
		name                   = "${aws_s3_bucket.willhy_com.website_domain}"
		zone_id                = "${aws_s3_bucket.willhy_com.hosted_zone_id}"
		evaluate_target_health = false
	}
}


# willhy.com

Install [terraform](https://www.terraform.io/downloads.html) (`brew install terraform` on macOS).

Install the aws cli using the [bundled installer](http://docs.aws.amazon.com/cli/latest/userguide/installing.html#install-bundle-other-os).

Configure the aws cli with `aws configure`.

# Apply terraform configuration

```
terraform apply tf
```

# Update DNS

Update your DNS provider to use the NS entries provided by the Route 53 zone that terraform created.

You can get the NS entries from Route 53 in the AWS console or using these commands.

```
DNS_NAME=willhy.com; \
ZONE_ID=$(aws route53 list-hosted-zones-by-name --dns-name="$DNS_NAME" --query='HostedZones[*].{Id:Id}' --output=text); \
NS=$(aws route53 get-hosted-zone --id="$ZONE_ID" --query='{NS:DelegationSet.NameServers}' --output='text'); \
echo "$NS"
```

# Deployment

Semaphore CI is used to automatically deploy this blog to S3 for static hosting.

See [this article](http://willhaley.com/blog/getting-my-jekyll-blog-on-aws-s3-with-semaphore-ci/) for details on how this was done.


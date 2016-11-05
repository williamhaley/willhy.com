# willhy.com

Install [terraform](https://www.terraform.io/downloads.html).

Install the aws cli using the [bundled installer](http://docs.aws.amazon.com/cli/latest/userguide/installing.html#install-bundle-other-os).

Configure the aws cli with `aws configure`.

# Apply terraform configuration

```
terraform apply tf
```

# Update DNS

Set your DNS provider to use these NS values.

```
ns-1060.awsdns-04.org
ns-455.awsdns-56.com
ns-1813.awsdns-34.co.uk
ns-883.awsdns-46.net
```


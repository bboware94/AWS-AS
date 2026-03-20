## Create a new bucket

```sh
aws s3api create-bucket --bucket acls-example-1236 --region us-east-1
```

## Turn off Block Public access for Acls

```sh
aws s3api put-public-access-block \
--bucket acls-example-1236 \
--public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```
```sh
aws s3api get-public-access-block  --bucket acls-example-1236
```

## Change bucket Ownership

```sh
aws s3api put-bucket-ownership-controls \
    --bucket acls-example-1236 \
    --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```
## Change ACLs to allow for a user in another AWS Account

aws s3api put-bucket-acl \
--bucket acls-example-1236 \
--access-control-policy file:///workspaces/AWS-AS/s3/acls/policy.json


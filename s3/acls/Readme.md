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

## Access Bucket from other Account

```sh
touch examples.txt
aws s3 cp examples.txt s3://acls-example-1236
aws s3 ls s3://acls-example-1236
```

## Cleanup

```sh
aws s3 rm s3://acls-example-1236/examples.txt
aws s3 rb s3://acls-example-1236
```

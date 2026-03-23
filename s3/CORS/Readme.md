## Create a bucket

```sh
aws s3 mb s3://cors-bb-94
```

## Change block public access

```sh
aws s3api put-public-access-block \
    --bucket cors-bb-94 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-bb-94 --policy file://bucket-policy.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-bb-94 --website-configuration file://bucket-website-policy.json
```

## Upload our index.html file and  include a resource that would be     cross-origin

```sh

```

## Apply a CORS Policy
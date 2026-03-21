## Create a bucket 

aws s3 mb s3://bucket-policy-example-bb

## create bucket policy

aws s3api put-bucket-policy --bucket bucket-policy-example-bb --policy file://policy.json

## In the other account access bucket
touch bb-policy.txt
aws s3 ls s3://bucket-policy-example-bb 
aws s3 cp bb-policy.txt s3://bucket-policy-example-bb

## Clean up

aws s3 rm s3://bucket-policy-example-bb/bb-policy.txt
aws s3 rb s3://bucket-policy-example-bb

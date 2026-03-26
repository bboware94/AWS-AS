# Server-side Encryption(SSE)
# SSE-S3- Amazon manages the Encryption for you 

# SSE-C customer provides the encryption key. S3 holds on to it temporary


## Create a bucket

aws s3 mb s3://encryption-bucket-94

## create a file in the bucket

 echo "hello world" > hello.txt
 aws s3 cp hello.txt s3://encryption-bucket-94

## Put Object with encryption of KMS

aws s3api put-object \
--bucket encryption-bucket-94 \
--key hellonew.txt --body hello.txt 
--server-side-encrytion aws:kms
--sse-kms-key-id

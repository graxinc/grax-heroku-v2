#! /usr/bin/env bash

./graxctl migrate 
./graxctl secrets -force "{\"Provider\":\"aws\",\"Type\":\"storage\",\"Name\":\"StorageSecret\",\"Data\":{\"access_key_id\":\"$S3_AWS_ACCESS_KEY_ID\",\"provider\":\"aws\",\"region\":\"$S3_AWS_REGION\",\"s3_bucket\":\"$S3_BUCKET_NAME\",\"secret_access_key\":\"$S3_AWS_SECRET_ACCESS_KEY\"}}"

./grax
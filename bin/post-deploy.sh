#! /usr/bin/env bash

curl --max-time 1800 -X POST $GRAX_ADMIN_API_URL/configure-datalake \
  --data-urlencode bucket_name=$S3_BUCKET_NAME \
  --data-urlencode bucket_region=$S3_AWS_REGION \
  --data-urlencode bucket_key_id=$S3_AWS_ACCESS_KEY_ID \
  --data-urlencode bucket_secret=$S3_AWS_SECRET_ACCESS_KEY
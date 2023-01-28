#!/bin/bash

echo "Creating bucket..."
awslocal s3 mb s3://${AWS_STORAGE_BUCKET_NAME}

# AWS local in docker container

## Description

Localstack is a cloud service emulator that runs in a single container on your laptop or in your CI environment.

With LocalStack, you can run your AWS applications or Lambdas entirely on your local machine without connecting to a remote cloud provider!

We are using localstack 0.14.0 for the free persistance storage.

## Prerequisites

### AWS CLI

This is required to run commands from the terminal in order to access files in the local S3 bucket(s).

[Download](https://aws.amazon.com/cli/) and install aws cli for your OS.

### Env files

Please add them to `.gitignore`.

## Useful commands

| Command | Description |
| :- | :- |
| `aws configure` | set AWS credentials |
| `aws configure list` | get configuration data |
| `aws configure list-profiles`<br>docker: `docker exec -it local_localstack aws configure list` | list all profile names |
| `aws --endpoint-url=http://localhost:4566 s3 mb s3://mybucket` | create bucket |
| `aws --endpoint-url=http://localhost:4566 s3 cp ~/Downloads/test_file.png s3://mybucket` | copy file in the bucket |
| `aws --endpoint-url=http://localhost:4566 s3 ls`<br>docker: `docker exec -it local_localstack awslocal s3api list-buckets` | list all buckets |
| `aws --endpoint-url=http://localhost:4566 s3 ls s3://mybucket` | list all files from a bucket |
| `aws --endpoint-url=http://localhost:4566 s3 ls s3://mybucket/pictures/` | list all files from a folder `pictures` in a bucket |
| `aws --endpoint-url=http://localhost:4566 s3 rm s3://mybucket/test_file.png` | delete a file from the bucket |
| `aws --endpoint-url=http://localhost:4566 s3 rm s3://mybucket --recursive` | delete all files from a bucket |
| `aws --endpoint-url=http://localhost:4566 s3 rb s3://mybucket --force` | delete bucket |


### View files in the browser:

- view bucket: https://localhost:4566/mybucket
- view file: http://localhost:4566/mybucket/test_file.png
 

### Delete localstack storage

Localstack files are stored in `.localstack` folder which is added to `.gitignore`.

To clear the local storage delete the `.localstack` folder.


### Delete localstack credentials

To remove a local setting, delete the corresponding setting in your `config` and `credentials` files.

The AWS CLI stores sensitive credential information that you specify with aws configure in a local file named `credentials`, in a folder named `.aws` in your home directory.

## Documentation
- How to fake AWS locally with LocalStack: https://dev.to/goodidea/how-to-fake-aws-locally-with-localstack-27me
- Localstack GitHub: https://github.com/localstack/localstack/blob/master/docker-compose.yml

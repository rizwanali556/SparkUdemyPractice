#!/bin/bash
#ENV FILE
ENV_FILE_PATH=$(dirname $0)
ENV_FILE_NAME="aws_deploy_properties.sh"
ENV_FILE=${ENV_FILE_PATH}/../${ENV_FILE_NAME}

if [ -f "$ENV_FILE" ]; then
    source $ENV_FILE
else
    echo "$ENV_FILE : Properties file not Found"
    exit 1
fi

#To create Git version folder inside s3 bucket

aws s3api put-object --bucket $BucketName --key $keyname

#To copy Artifacts from source GITHub to S3 with selected Repositories from Git to s3

aws s3 cp $Applicationpath s3://$BucketName/$keyname --recursive $exclude_variables $region
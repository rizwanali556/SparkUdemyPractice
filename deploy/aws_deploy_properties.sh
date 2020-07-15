#!bin/bash

# Tag_Version number for the project
export Buildtag="2.0"

# BucketName for the s3 Artifact
export BucketName="s3-jenkins-artifact"

# ApplicationName will be fetched based on jenkins job name or you can give your own job name as in git Repo
export ApplicationName="$(pwd | cut -d'/' -f7)"

# Source application path to copy Repositories from Github to S3
export Applicationpath="$(pwd)"

# Key name to specify the Project version folder in s3
export keyname=""$ApplicationName"_"$Buildtag"/"

# Region name for deploying in to s3 Artifact
export region="--region ap-south-1"

# Export Artifacts for excluding artifacts/folders from Github Repo
export exclude_variables="--exclude=project/* --exclude=.idea/* --exclude=.git/* --exclude=deploy/*"

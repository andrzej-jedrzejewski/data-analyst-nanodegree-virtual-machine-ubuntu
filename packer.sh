#!/bin/bash
#This script allows us to:
#1. generate VBO image withinh virtualbox to /tmp/output-
#2. upload created image to amazon s3 bucket
#3. verify created image
#4. create test VM
#exit if error occurs
set -e

#-------------------=========READ CONFIGURATION FILE ANS SET UP VARIABLES==========--------------------------
ova_directory="$(jsawk 'return this.output_directory' < variables.json)"
ova_directory="$ova_directory$(jsawk 'return this.profile' < variables.json)"
ova_file="$ova_file$(jsawk 'return this.os' < variables.json)"
ova_file="$ova_file-$(jsawk 'return this.profile' < variables.json)"
ova_file="$ova_file.ova"
S3_bucket="$(jsawk 'return this.S3_bucket_name' < variables.json)"
S3Key="$(cat S3import-task.json| jsawk 'return this.DiskContainers' | jsawk 'return this.UserBucket' | jsawk -n 'out(this.S3Key)')"
sed -i -- "s/$S3Key/$ova_file/g" S3import-task.json
rm S3import-task.json--

start_date=$(date +%s);
echo "You start at $start_date"

if [ -a "$ova_directory/$ova_file" ]; then
    rm -rf "$ova_directory"
    echo "Old file has been deleted!"
fi

#-------------------=========RUN PACKER==========--------------------------
packer build -var-file=variables.json template.json  &&  echo "Image creation is done!" 

#Calculate time
stop_date=$(date +%s);
echo "Whole process took:"
echo $((stop_date-start_date)) | awk '{print int($1/60)":"int($1%60)}'
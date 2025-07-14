#!/bin/bash

region_folders=(
  "us-east-1"
  "us-west-2"
)

total_regions=${#region_folders}
count=0

for folder in "${region_folders[@]}"; do
  cd "$folder" || exit 1

  terraform init

  terraform apply -auto-approve -var-file=../common.tfvars

  cd ..

  count=$((count + 1))
  echo "Terraform apply completed in $count regions out of $total_regions regions"
done

#!/bin/bash

# Define a list of regions
region_folder=(
  "us-west-2"
  "us-west-1"
)

total_regions=${#region_folder[@]}
count=0
repository=$1

if [[ -z "#repository" ]]; then
  echo "ERROR: Repository name is required."
  echo "Uses: $0 <repository_name>"
  exit 1
fi

## Loop through the region folder

for folder in "${region_folder[@]}"; do
  echo "processing folder: $folder"

  if cd "$folder"; then
    terraform init || { echo "Error: Terraform init failed in $folder"; cd ..; continue; }
    terraform import -var-file=../common.tfvars \
      "module.ecr.aws_ecr_repository.this[\"$repository\"]" "$repository" || {
      echo "Error: Terraform import failed in $folder"
      cd ..
      continue
      }

      cd ..

      count=$((count + 1))
      echo "Terraform import completed in $count regions out of $total_regions"
  else
    echo "Error: Failed to change the directory to $folder"
    exit 1
  fi
done

echo "Script completed total successful regions: $count out of $total_regions"
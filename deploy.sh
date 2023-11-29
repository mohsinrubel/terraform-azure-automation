#!/bin/bash

set -e
set -x

# set up the infrastructure
terraform init
terraform validate

terraform apply -auto-approve
terraform output
# TERRAFORM WORKFLOW

- Individual
- Team
- Terraform Cloud

# Individual
1. Write - Create the terraform files
2. Plan - Run Terraform plan and check
3. Create - Create the infrastructure

# Team
1. Write - Checkout the latest code - github or gitlab or any VCS
2. Plan - Run Terraform Plan and raise a PR
3. Create - Merge and Create

# Terraform Cloud
1. Write - Use terraform cloud as your 'development' environment
2. Plan - When a PR is raised, Terraform plan is run
3. Create - Before merging a second plan is run before approval to create


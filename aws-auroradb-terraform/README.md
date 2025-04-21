# AWS AuroraDB Terraform Project

This project provisions an AWS AuroraDB instance using Terraform and manages secret credentials with AWS Secrets Manager. It is structured to support both development and production environments.

## Prerequisites

- Terraform installed on your local machine.
- AWS CLI configured with appropriate credentials.
- Access to an AWS account with permissions to create Amazon RDS clusters and manage secrets.

## Project Structure

```
aws-auroradb-terraform
├── modules
│   ├── auroradb
│   │   ├── main.tf          # Terraform configuration for AWS AuroraDB
│   │   ├── variables.tf     # Input variables for AuroraDB module
│   │   └── outputs.tf       # Output values from AuroraDB module
│   └── secrets-manager
│       ├── main.tf          # Terraform configuration for Secrets Manager
│       ├── variables.tf     # Input variables for Secrets Manager module
│       └── outputs.tf       # Output values from Secrets Manager module
├── environments
│   ├── dev
│   │   ├── main.tf          # Development environment configuration
│   │   ├── variables.tf     # Input variables for development environment
│   │   └── terraform.tfvars  # Variable values for development environment
│   └── prod
│       ├── main.tf          # Production environment configuration
│       ├── variables.tf     # Input variables for production environment
│       └── terraform.tfvars  # Variable values for production environment
├── .github
│   └── workflows
│       └── terraform.yml     # GitHub Actions workflow for Terraform
├── main.tf                   # Entry point for Terraform configuration
├── variables.tf              # Global input variables for the project
├── outputs.tf                # Output values for the project
├── provider.tf               # AWS provider configuration
└── README.md                 # Project documentation
```

## Usage

1. **Clone the repository**:
   ```
   git clone <repository-url>
   cd aws-auroradb-terraform
   ```

2. **Navigate to the desired environment** (e.g., `dev` or `prod`):
   ```
   cd environments/dev
   ```

3. **Initialize Terraform**:
   ```
   terraform init
   ```

4. **Plan the deployment**:
   ```
   terraform plan
   ```

5. **Apply the configuration**:
   ```
   terraform apply
   ```

## Storing Secrets

Secrets for accessing the AuroraDB instance should be stored in AWS Secrets Manager. Ensure that the necessary IAM permissions are granted to access these secrets.

## Outputs

After applying the Terraform configuration, the output will include important information such as the AuroraDB cluster endpoint and the ARN of the created secret.

## Contributing

Feel free to submit issues or pull requests for improvements or bug fixes.
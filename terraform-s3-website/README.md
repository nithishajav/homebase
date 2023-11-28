# Terraform AWS S3 Website Hosting Configuration

This Terraform configuration sets up an Amazon S3 bucket configured to host a static website. The website can be accessed via the Amazon S3 website endpoint.

## Prerequisites

Before you begin, make sure you have the following:

- [Terraform](https://www.terraform.io/) installed on your local machine.
- AWS credentials configured with the necessary permissions.

## Usage

1. Clone this repository:

   ```bash
   git clone git@github.com:nithishajav/homebase.git
2. Change into the project directory:
    
    ```bash
    cd terraform-s3-website
3. Initialize the Terraform configuration:

    ```bash
    terraform init
4. Review and modify the variables.tf file to set your desired configuration options, such as the S3 bucket name and website index document.
5. Plan the Terraform configuration:
    ```bash
    terraform plan
6. If everything looks good, apply the Terraform configuration:
    ```bash
    terraform apply
7. Terraform will provision the resources. Once complete, access the website using the S3 Bucket website endpoint.

## Customization

You can customize the configuration by modifying the variables in the variables.tf file. Here are some of the variables you can adjust:

- bucketName: The name of the S3 bucket.
- indexDoc: The index document for the website.
- errorDoc: The error document for the website.

## Cleanup

When you're done, you can destroy the resources created by Terraform:

 ```bash
terraform destroy
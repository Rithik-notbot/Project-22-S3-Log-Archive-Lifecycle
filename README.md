# Project 22: S3 Log Archive with Lifecycle

## Objective
Create an Amazon S3 bucket for storing log files and configure a lifecycle rule to automatically expire old logs.

## Tools Used
- Terraform
- AWS S3
- Git
- GitHub

## Implementation
1. Created an S3 bucket using Terraform.
2. Configured an S3 lifecycle rule.
3. Applied a 90-day expiration policy to objects stored under the `logs/` prefix.
4. Used Terraform outputs to display the bucket name and lifecycle rule ID.

## Lifecycle Configuration
- Rule ID: expire-old-logs
- Prefix: logs/
- Expiration: 90 days
- Status: Enabled

## Security
- No public access is configured.
- Terraform state files are excluded from Git.

## Deliverables
- Terraform configuration files.
- GitHub repository containing the project.
- Screenshot of the S3 lifecycle rule after deployment.

## Status
Terraform configuration prepared. AWS deployment pending approval.
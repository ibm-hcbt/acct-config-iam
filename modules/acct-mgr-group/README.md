# IBM Terraform configurations for IBM Cloud Identity and Access Management (IAM)

This repository contains a collection of Terraform configurations for configuring Identity and Access Management (IAM) in IBM Cloud. These are focused on account management.

## Configurations

| Name | Description |
| ---------------- | ---------------- |
| [acct-mgr-group](https://github.com/ibm-hcbt/acct-config-iam/tree/master/modules/acct-mgr-group) | Create an access group with policies to manage the account and all resources in it. |

## Variables

| Name | Description |
| ---------------- | ---------------- |
| acct_mgr_admins_access_group_name | The name for the new access group |
| acct_mgr_admins_user_ids | The users to add to the access group |

## Use

Install these configurations using the standard Terraform process:
- From a command line, change directory to the configuration's directory
- Modify its `terraform.tfvars` file
- Run `terraform init` to initialize Terraform
- Run `terraform apply` to install the configuration

## References

[Account Services API Documentation](https://cloud.ibm.com/docs/account?topic=account-account-services#api-acct-mgmt)

[IBM Cloud Terraform Provider Resources](https://cloud.ibm.com/docs/terraform?topic=terraform-index-of-ibm-cloud-provider-plug-in-for-terraform-resources-and-data-sources)

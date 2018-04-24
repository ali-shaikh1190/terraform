VPC
============

Configuration in this directory creates set of VPC resources which may be sufficient for staging or production environment.

There are public, private, database, ElastiCache subnets, NAT Gateways created in each availability zone.

Example of declaring variables is provided in terraform.tfvars-example, Rename it to terraform.tfvars to start with.

Usage
=====

Before using the terraform, we need to export `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` as environment variables:

```
export AWS_ACCESS_KEY_ID="xxxxxxxxxxxxxxxx"
export AWS_SECRET_ACCESS_KEY="yyyyyyyyyyyyyyyyyyyy"
```
To initialize terraform:
```
terraform init
```
To Generate and show an execution plan (dry run):
```
terraform plan
```
To Builds or makes actual changes in infrastructure:
```
terraform apply
```
To inspect Terraform state or plan:
```
terraform show
```
To destroy Terraform-managed infrastructure:
```
terraform destroy
```
**Note**: Terraform stores the state of the managed infrastructure from the last time Terraform was run. Terraform uses the state to create plans and make changes to the infrastructure.  
**Note**: This stack may create resources which can cost money (AWS Elastic IP, for example). Run `terraform destroy` when you don't need these resources.  



## Authors

* **Qamar Ali Shaikh** - *ali.shaikh1190@gmail.com*

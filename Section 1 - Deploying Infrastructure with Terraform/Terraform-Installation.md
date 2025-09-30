### Documentation Referred:

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/infrastructure-as-code 

## 📌 What is Terraform?

**Terraform is an open-source Infrastructure as Code (IaC) tool created by HashiCorp. It allows you to define, provision, and manage cloud and on-premises resources in a declarative configuration language called HCL (HashiCorp Configuration Language).**

Infrastructure as Code (IaC) tools allow you to manage infrastructure with configuration files rather than through a graphical user interface. IaC allows you to build, change, and manage your infrastructure in a safe, consistent, and repeatable way by defining resource configurations that you can version, reuse, and share.

Terraform is HashiCorp's infrastructure as code tool. It lets you define resources and infrastructure in human-readable, declarative configuration files, and manages your infrastructure's lifecycle. Using Terraform has several advantages over manually managing your infrastructure:

1. Terraform can manage infrastructure on multiple cloud platforms.
2. The human-readable configuration language helps you write infrastructure code quickly.
3. Terraform's state allows you to track resource changes throughout your deployments.
4. You can commit your configurations to version control to safely collaborate on infrastructure.
================================================================================

**01. sudo yum install -y yum-utils shadow-utils**

**02. sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo**

**03. sudo yum -y install terraform**

**04. mkdir awscloud**

**05. vim aws.tf**

================================================================================

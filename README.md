# 🚀 Deploying Infrastructure with Terraform

This section contains Terraform code to provision and manage **AWS infrastructure**.  
It is designed to demonstrate how to deploy cloud resources using **Infrastructure as Code (IaC)** with Terraform.  

## 📌 AWS Services Used in This Environment

- **Amazon VPC**  
  A logically isolated virtual network in AWS. It provides complete control over IP addressing, routing, and networking components.  
  - **Custom VPC**: User-defined VPC with CIDR `10.0.0.0/16`.  
  - **Public Subnet**: Subnet with internet access through an Internet Gateway (for public-facing resources).  
  - **Private Subnet**: Subnet without direct internet access (for backend/internal resources).  
  - **Internet Gateway (IGW)**: Enables inbound/outbound communication between VPC and the internet.  
  - **NAT Gateway**: Allows instances in private subnets to access the internet securely without exposing them publicly.  

- **Amazon EC2**  
  Provides resizable compute capacity in the cloud.  
  - **EC2 Instances**: Virtual machines running in the VPC, configurable by AMI, type, and count.  
  - **Instance Tags**: Metadata assigned to each instance (Name, Environment, Project, etc.) for identification and cost tracking.  

- **Amazon Security Groups**  
  Virtual firewalls that control inbound and outbound traffic to AWS resources.  
  - **Ingress Rules**: Allow traffic on specific ports (e.g., SSH `22`, HTTP `80`, HTTPS `443`, RDP `3389`, PostgreSQL `5432`).  
  - **Egress Rules**: Allow outbound traffic from resources to any destination (default `0.0.0.0/0`).  

- **AWS IAM**  
  Service that manages users, roles, and permissions securely.  
  - **IAM Role**: Provides temporary credentials and permissions to resources or users.  
  - **Assume Role Authentication**: Terraform assumes a specific IAM role for secure access instead of using hardcoded credentials.  

- **Amazon Route Tables**  
  Define how network traffic is directed within the VPC.  
  - **Public Route Table**: Routes traffic from public subnets to the Internet Gateway.  
  - **Private Route Table**: Routes traffic from private subnets through the NAT Gateway for secure outbound internet access.  

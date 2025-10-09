# 📌 EC2 Tagging with Terraform

# Overview

This document explains how to create and manage AWS EC2 instances using Terraform with proper tagging. The configuration uses assume role authentication instead of hard-coded credentials and supports consistent tagging across multiple environments (Dev, UAT, Prod).

# Common Tags for EC2

Terraform allows you to define a common set of tags for all EC2 instances:

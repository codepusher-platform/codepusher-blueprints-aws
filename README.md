# CodePusher Blueprints for AWS

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)

[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![GitHub Actions](https://github.com/codepusher-platform/codepusher-blueprints-aws/actions/workflows/release.yaml/badge.svg)](https://github.com/codepusher-platform/codepusher-blueprints-aws/actions)
[![Release Version](https://img.shields.io/github/v/release/codepusher-platform/codepusher-blueprints-aws)](https://github.com/codepusher-platform/codepusher-blueprints-aws/releases)

This repository houses a curated collection of Terraform modules designed to empower the CodePusher platform to build and deploy your AWS infrastructure seamlessly. These modules provide a robust foundation for automating your cloud deployments, eliminating the need for manual configuration and streamlining your workflow. Whether you're building foundational networking components, deploying serverless applications, or managing complex multi-region architectures, these blueprints provide reusable, battle-tested building blocks to accelerate your cloud initiatives.

## Table of Contents

- [Features](#features)
- [Available Modules](#available-modules)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Modular Design:**  Each blueprint is self-contained and reusable, promoting consistency and maintainability across your infrastructure.
- **AWS Best Practices:**  Modules are crafted with adherence to AWS Well-Architected Framework principles, ensuring security, reliability, performance efficiency, and cost optimization.
- **Parameterization:** Easily customize deployments to match your specific requirements through well-defined input variables.
- **Testing:** Modules are rigorously tested to ensure reliability and functionality.
- **Emphasis on Automation**: The text now explicitly mentions that the modules are designed for automation, eliminating manual steps.
- **CodePusher Integration**: The revised text connects the purpose of the modules directly to the CodePusher platform, clarifying their intended use.

## Available Modules

### Environments

- **VPC (Virtual Private Cloud):** Creation of isolated network environments with customizable CIDR ranges and subnets.
- **Basic Resources:** Deployment of essential AWS resources like IAM roles, security groups, and routing tables.
- **Subnets (Public and Private)**
- **Security Groups**
- **NAT Gateways**
- **Route Tables**
- **VPC Peering**

### EKS

- **EC2 Instances**
- **Auto Scaling Groups**
- **Launch Templates**
- **EKS (Elastic Kubernetes Service):** Creation and management of Kubernetes clusters on AWS.

### Storage

- **S3 Buckets**
- **EBS Volumes**

### Databases

- **RDS (Relational Database Service):** Deployment and management of relational databases (PostgreSQL, MySQL, etc.) on AWS.
- **DynamoDB**

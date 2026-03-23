# AWS Security Automation Platform

## 📌 Overview

This project implements an **event-driven AWS security automation platform** using Terraform.

It provides:

- 🔍 Continuous monitoring  
- 🚨 Threat detection  
- 📏 Compliance enforcement  
- ⚡ Automated remediation  

The platform detects misconfigurations and automatically remediates them using AWS native services such as AWS Config, EventBridge, and Lambda.

---

## 🏗️ Architecture Diagram

```mermaid
flowchart TD
    Internet --> Shield[AWS Shield - DDoS Protection]
    Shield --> ALB[Application Load Balancer]
    ALB --> EC2[EC2 Application Layer]

    EC2 --> CloudTrail[AWS CloudTrail]
    CloudTrail --> S3[S3 Log Storage]

    EC2 --> Inspector[AWS Inspector]
    S3 --> Macie[AWS Macie]

    EC2 --> Config[AWS Config]
    Config --> EventBridge
    EventBridge --> Lambda[AWS Lambda Remediation]
    Lambda --> Fix[Fix Security Group]




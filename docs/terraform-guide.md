# AWS Enterprise Security Monitoring & Automated Remediation Platform

## 📌 Overview

This project is a **complete cloud security platform built on AWS** using Infrastructure as Code (Terraform).

It provides:

- 🔍 Continuous monitoring  
- 🚨 Threat and risk detection  
- 📏 Compliance enforcement  
- ⚡ Automated remediation  

The system combines multiple AWS services into a **layered security architecture**.

---

## 🏗️ Full Architecture Diagram

```mermaid
flowchart TD

    %% Entry Layer
    Internet --> Shield[AWS Shield (DDoS Protection)]
    Shield --> ALB[Application Load Balancer]
    ALB --> EC2[EC2 Application]

    %% Logging Layer
    EC2 --> CloudTrail[AWS CloudTrail]
    CloudTrail --> S3[S3 Log Storage]

    %% Security Services
    EC2 --> Inspector[AWS Inspector (Vulnerabilities)]
    S3 --> Macie[AWS Macie (Sensitive Data)]

    %% Compliance + Automation
    EC2 --> Config[AWS Config (Compliance)]
    Config --> EventBridge[EventBridge]
    EventBridge --> Lambda[AWS Lambda (Remediation)]
    Lambda --> Fix[Fix Security Group]


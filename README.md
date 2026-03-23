# AWS Security Automation Platform

## 📌 Overview

This project implements an **event-driven AWS security automation platform** using Terraform.

It provides:

- 🔍 Continuous monitoring  
- 🚨 Threat detection  
- 📏 Compliance enforcement  
- ⚡ Automated remediation  

The platform detects misconfigurations and automatically remediates them using AWS native services such as AWS Config, EventBridge, and Lambda.

## 🏗️ Architecture Diagram

```text
                         Internet
                             │
                             ▼
                    AWS Shield (DDoS)
                             │
                             ▼
              Application Load Balancer (ALB)
                             │
                             ▼
                    EC2 Application Layer
                             │
        ┌────────────────────┼────────────────────┐
        │                    │                    │
        ▼                    ▼                    ▼
 AWS CloudTrail        AWS Inspector        AWS Config
        │                    │                    │
        ▼                    ▼                    ▼
     S3 Logs            Vulnerabilities     Compliance Check
        │                    │                    │
        ▼                    ▼                    ▼
     AWS Macie             (Scan)          Amazon EventBridge
                                                   │
                                                   ▼
                                            AWS Lambda
                                                   │
                                                   ▼
                                        Auto Fix Security Group


## ⚙️ How It Works

### 1️⃣ Monitoring
- AWS CloudTrail logs all API activity  
- Logs are stored securely in S3  

### 2️⃣ Detection
- AWS Config detects misconfigurations  
- AWS Inspector identifies vulnerabilities  
- AWS Macie detects sensitive data  

### 3️⃣ Protection
- AWS Shield provides DDoS protection  

### 4️⃣ Automated Remediation
- AWS Config detects non-compliance  
- EventBridge captures the event  
- Lambda is triggered automatically  
- Lambda remediates the issue  

---

## 🔥 Example Use Case

### 🚨 Problem

A security group allows public SSH access:


---

### ⚡ Automated Flow

- AWS Config detects violation  
- EventBridge triggers event  
- Lambda removes insecure rule  
- Security group becomes compliant  

---

### ✅ Result

- Risk removed automatically  
- No manual intervention required  
- Continuous compliance maintained  

---

## 🛠️ Technologies Used

- Terraform  
- AWS Lambda  
- Amazon EventBridge  
- AWS Config  
- AWS CloudTrail  
- AWS Inspector  
- AWS Macie  
- AWS Shield  

---

## 📁 Project Structure


# AWS Security Automation Platform

## Test

![Test](screenshots/config/01-cloudtrail-overview.png)

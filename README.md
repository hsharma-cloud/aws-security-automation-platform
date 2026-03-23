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

## 📸 Screenshots

### ☁️ CloudTrail & Config

![CloudTrail Overview](screenshots/config/01-cloudtrail-overview.png)
![Event History](screenshots/config/02-cloudtrail-event-history.png)
![S3 Logs](screenshots/config/03-s3-cloudtrail-logs.png)
![Bucket Policy](screenshots/config/04-s3-bucket-policy.png)
![Terraform CloudTrail](screenshots/config/05-terraform-cloudtrail.png)
![S3 Encryption](screenshots/config/16-s3-encryption.png)
![AWS Config Dashboard](screenshots/config/aws-config-dashboard.png)

---

### 🔍 Detection Layer (GuardDuty + Security Hub)

![GuardDuty Enabled](screenshots/detection/08-guardduty-enabled.png)
![GuardDuty Finding](screenshots/detection/10-guardduty-finding.png)
![GuardDuty Threat](screenshots/detection/10-guardduty-threat-detection.png)
![Security Hub Overview](screenshots/detection/09-security-hub-overview.png)
![Security Hub Finding](screenshots/detection/11-security-hub-finding.png)

---

### ⚡ EventBridge

![EventBridge Rule](screenshots/eventbridge/eventbridge-rule.png)

---

### ⚡ Lambda

![Lambda Remediation](screenshots/lambda/lambda-remediation.png)

---

### 🔍 AWS Inspector

![Inspector Findings](screenshots/inspector/aws-inspector-findings.png)

---

### 🔐 AWS Macie

![Macie Enabled](screenshots/macie/aws-macie-enabled.png)

---

### 🛡️ AWS Shield

![Shield Dashboard](screenshots/shield/aws-shield-dashboard.png)

---

### 🌐 WAF Protection

![WAF Protection](screenshots/waf/14-waf-alb-protection.png)
![WAF Rate Limiting](screenshots/waf/14-waf-alb-rate-limiting.png)

---

### 🔐 Encryption & Secrets

![EBS Encryption](screenshots/security/17-ebs-encryption-default.png)
![Secrets Manager](screenshots/security/18-secrets-manager.png)


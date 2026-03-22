
# aws-enterprise-security-platform


# AWS Enterprise Security Monitoring & Automated Remediation Platform

## 📌 Overview

This project implements a **multi-layered AWS cloud security platform** designed to provide:

- Continuous monitoring  
- Threat detection  
- Compliance enforcement  
- Automated remediation  

The platform is built using **Terraform (Infrastructure as Code)** and integrates multiple AWS security services.

---

## 🏗️ Architecture Diagram

```mermaid
flowchart TD

    Internet --> Shield[AWS Shield]
    Shield --> ALB[ALB / CloudFront]
    ALB --> EC2[EC2 Application]

    EC2 --> CloudTrail[CloudTrail Logging]
    CloudTrail --> S3[S3 Log Storage]

    subgraph Security_Layer
        Inspector[AWS Inspector]
        Macie[AWS Macie]
        Config[AWS Config]
    end

    Config --> EventBridge
    EventBridge --> Lambda[Lambda Remediation]
    Lambda --> Fix[Auto Fix Security Group]

    Inspector -.-> EC2
    Macie -.-> S3





## 📸 Screenshots

---

### ☁️ CloudTrail & Config (Monitoring + Compliance)

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

### ⚡ EventBridge Automation

![EventBridge Rule](screenshots/eventbridge/eventbridge-rule.png)

---

### ⚡ Lambda Remediation

![Lambda Remediation](screenshots/lambda/lambda-remediation.png)

---

### 🔍 AWS Inspector (Vulnerabilities)

![Inspector Findings](screenshots/inspector/aws-inspector-findings.png)

---

### 🔐 AWS Macie (Data Security)

![Macie Enabled](screenshots/macie/aws-macie-enabled.png)

---

### 🛡️ AWS Shield (DDoS Protection)

![Shield Dashboard](screenshots/shield/aws-shield-dashboard.png)

---

### 🌐 WAF Protection (Edge Security)

![WAF Protection](screenshots/waf/14-waf-alb-protection.png)
![WAF Rate Limiting](screenshots/waf/14-waf-alb-rate-limiting.png)

---

### 🔐 Encryption & Secrets

![EBS Encryption](screenshots/security/17-ebs-encryption-default.png)
![Secrets Manager](screenshots/security/18-secrets-manager.png)

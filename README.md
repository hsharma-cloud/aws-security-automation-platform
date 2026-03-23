# AWS Security Automation Platform

🚀 Enterprise-grade AWS security monitoring and automated response platform built using native AWS services and Terraform.

---

## 🏗️ Architecture

![Architecture](./architecture/architecture.png)

---

## 📌 Overview

This project simulates a real-world **cloud security operations platform** designed to:

- Continuously monitor AWS activity  
- Detect threats and misconfigurations  
- Automatically remediate security risks  
- Enforce compliance using event-driven automation  

---

## 🔄 Security Automation Pipeline

This platform follows a **detect → analyze → respond → enforce** model:

### 1️⃣ Logging & Visibility
- AWS CloudTrail captures all API activity  
- AWS Config tracks configuration changes  
- Logs stored securely in S3  

### 2️⃣ Threat Detection
- Amazon GuardDuty identifies malicious activity  
- AWS Security Hub aggregates findings  
- AWS Inspector scans for vulnerabilities  
- AWS Macie detects sensitive data exposure  

### 3️⃣ Event-Driven Response
- Amazon EventBridge captures security events  
- AWS Lambda executes automated remediation  

### 4️⃣ Protection Layer
- AWS Shield provides DDoS protection  
- AWS WAF protects application layer  

---

## ⚡ Automated Remediation Example

### 🚨 Scenario
A security group allows public SSH access (0.0.0.0/0).

### 🔁 Automated Flow
1. AWS Config detects non-compliance  
2. EventBridge triggers rule  
3. Lambda function executes remediation  
4. Insecure rule is removed  

### ✅ Outcome
- Risk eliminated automatically  
- No manual intervention required  
- Continuous compliance maintained  

---

## 🛠️ Technologies Used

- Terraform (Infrastructure as Code)  
- AWS Lambda (Automation)  
- Amazon EventBridge (Event routing)  
- AWS CloudTrail (Logging)  
- AWS Config (Compliance monitoring)  
- Amazon GuardDuty (Threat detection)  
- AWS Security Hub (Aggregation)  
- AWS Inspector (Vulnerability scanning)  
- AWS Macie (Data protection)  
- AWS WAF & Shield (Application protection)  

---

## 📸 Key Screenshots

### 🔎 Logging & Compliance

![CloudTrail Overview](./screenshots/01-config/01-cloudtrail-overview.png)
![AWS Config Dashboard](./screenshots/01-config/aws-config-dashboard.png)

---

### 🚨 Threat Detection

![GuardDuty Finding](./screenshots/02-detection/10-guardduty-finding.png)
![Security Hub Finding](./screenshots/02-detection/11-security-hub-finding.png)

---

### ⚡ Automated Response

![EventBridge Rule](./screenshots/03-response/eventbridge-rule.png)
![Lambda Remediation](./screenshots/03-response/lambda-remediation.png)

---

### 🌐 Protection Layer

![WAF Protection](./screenshots/waf/14-waf-alb-protection.png)
![Shield Dashboard](./screenshots/shield/aws-shield-dashboard.png)

---

## ⭐ Key Features

- Fully automated security remediation  
- Event-driven architecture (serverless)  
- Centralized security visibility  
- Scalable and cloud-native design  
- Infrastructure fully defined in Terraform  

---

## 🚧 Future Enhancements

- Integrate SIEM (Splunk / ELK / Sentinel)  
- Add SOAR playbooks for advanced automation  
- Implement cross-account security monitoring  
- Enhance alerting with Slack / PagerDuty  

---

## 🧠 Key Learnings

- Designing event-driven security workflows  
- Automating remediation using Lambda  
- Integrating multiple AWS security services  
- Building scalable cloud-native security architectures  

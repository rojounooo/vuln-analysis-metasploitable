# Vulnerability Analysis of Metasploitable

## 📌 Project Overview
This project demonstrates a vulnerability assessment of the Metasploitable 2 virtual machine in a safe, isolated lab environment.  
The analysis was conducted using Nmap, Greenbone Vulnerability Management, and manual verification and exploitation

## 🔧 Tools Used
- Nmap (service/port enumeration)
- Greenbone Vulnerability Management (vulnerability scanning)
- Kali Linux (attacker VM)

## 📝 Workflow
1. Reconnaissance (Nmap scans)
2. Vulnerability Scanning (GVM)
3. Manual Verification of findings
4. Reporting (risk assessment + remediation steps)

## 📂 Repository Structure
- `scans/` – raw scanner outputs (Nmap, GVM, etc.)
- `screenshots/` – evidence of vulnerabilities
- `scripts/` – helper scripts
- `references/` - CVE references
- `REPORT.md` – full vulnerability analysis report

## ⚠️ Disclaimer
Metasploitable is **intentionally vulnerable**.  
All tests were performed in an **isolated lab environment**.  
Do not expose Metasploitable to the internet or production networks.

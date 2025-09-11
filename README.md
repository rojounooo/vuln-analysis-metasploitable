# Vulnerability Analysis of Metasploitable

## 📌 Project Overview
This project demonstrates a vulnerability assessment of the Metasploitable 2 virtual machine in a safe, isolated lab environment.  
The analysis was conducted using Nmap, manual/automated verification and exploitation following the Cyber Kill Chain

## 🔧 Tools Used
- Nmap (service/port enumeration)
- Metasploit Framework (automated exploitation)
- Kali Linux (Attacker VM)
- Metasploitable 2 (Target VM)

## 📝 Workflow
1. Reconnaissance (Nmap scans)
2. Searching for CVEs using ExploitDB
3. Manual Verification of findings
4. Automated Verification of findings if possible
5. Writeup following cyber kill chain
6. Reporting (risk assessment + remediation steps)

## 📂 Repository Structure
- `scans/` – raw scanner outputs (Nmap)
- `scripts/` – helper scripts
- `references/` - CVE references
- `exploitation/` - exploitation steps
- `REPORT.md` – full vulnerability analysis report

## ⚠️ Disclaimer
Metasploitable is **intentionally vulnerable**.  
All tests were performed in an **isolated lab environment**.  
Do not expose Metasploitable to the internet or production networks.

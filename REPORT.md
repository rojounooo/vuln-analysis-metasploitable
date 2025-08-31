# Vulnerability Analysis Report - Metasploitable 2

## 1. Introduction
- The purpose of this project is to be able to carry out a vulnerability analysis and produce a professional report, containing vulnerabilities and mitigations in a form that readers of differing levels of technical literacy will be able to understand. 

- Tools used:
    - VirtualBox - Virtualisation software 
    - Kali Linux - A linux distro preloaded with tools to use as an attacker
    - Metasploitable 2 - An inteionally made vulnerable VM to use as a target 
    - Nmap - To scan for open ports, services, operating system and potential CVEs
    - Nessus Essentials - Vulnerability Scanner 
    - ExploitDB - Database containing exploits and CVEs

## 2. Reconnaissance
- Nmap results (summarized)
- 29 open ports detected 

- Services include: 

    - Multiple Apache web servers
    - Telnet
    - Multiple FTP Servers
    - MySQL and PostgreSQL databases


## 3. Vulnerability Scanning
- Nessus scan summary
- Top critical findings (with CVEs + CVSS scores)

## 4. Manual Verification
- Example: Anonymous FTP login allowed
- Example: Outdated Apache version vulnerable to exploits

## 5. Risk Analysis
- Potential impact if these were in production
- Exploitability vs. business risk

## 6. Recommendations
- Patch versions
- Disable unsafe services
- Use least-privilege principles

## 7. Conclusion
- Key takeaways from the exercise

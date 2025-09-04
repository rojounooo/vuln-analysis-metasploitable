# Vulnerability Analysis Report - Metasploitable 2

## 1. Introduction
- The purpose of this project is to be able to carry out a vulnerability analysis and produce a professional report, containing vulnerabilities and mitigations in a form that readers of differing levels of technical literacy will be able to understand. 

- Tools used:
    - VirtualBox - Virtualisation software 
    - Kali Linux - A linux distro preloaded with tools to use as an attacker
    - Metasploitable 2 - An inteionally made vulnerable VM to use as a target 
    - Nmap - To scan for open ports, services, operating system and potential CVEs
    - ExploitDB - Database containing exploits and CVEs
    - Metasploit - Automating exploits

## 2. Reconnaissance
- Nmap results (summarized)
- 29 open ports detected 

- Services include: 

    - Telnet
    - Multiple FTP Servers
    - MySQL and PostgreSQL databases

## 3. Manual Verification

- Root login achieved via rlogin 
- Backdoor created via vsftpd on port 6200
- Reverse shell created via distcc to connect to Kali port 4444 
- Exfiltration of files via unrealIRC 

## 4. Risk Analysis
- Potential impact if these were in production
- Exploitability vs. business risk

## 5. Recommendations
- Patch versions
- Disable unsafe services
- Use least-privilege principles

## 6. Conclusion
- Key takeaways from the exercise

# Vulnerability Analysis Report - Metasploitable 2

## 1. Introduction
- The purpose of this project is to be able to carry out a vulnerability analysis and produce a professional report, containing vulnerabilities and mitigations in a form that readers of differing levels of technical literacy will be able to understand. 

- Tools used:
    - VirtualBox - Virtualisation software 
    - Kali Linux - A linux distro preloaded with tools to use as an attacker
    - Metasploitable 2 - An intentionally made vulnerable VM to use as a target 
    - Nmap - To scan for open ports, services, operating system and potential CVEs
    - ExploitDB - Database containing exploits and CVEs
    - Metasploit - Automating exploits
    - Enum4linux-ng - Automated enumeration of Samba shares, with yaml and json output

## 2. Reconnaissance
- Nmap results (summarized)
- 29 open ports detected 

- Services include: 

    - Telnet
    - Multiple FTP Servers
    - MySQL and PostgreSQL databases
    - R-services
    - Writeable Samba shares 
    - UnrealIRC

## 3. Manual Verification

- Root login achieved via rlogin 
- Backdoor created via vsftpd on port 6200
- Reverse shell created via distcc to connect to Kali port 4444 
- Exfiltration of files via unrealIRC 
- Encrypted files via samba

## 4. Risk Analysis
- If these were in production: 
    - Risk of ransomware due to direct root access 
    - Exfiltration of data 

- Exploitability vs. business risk:
    - Risk of ransomware, if there aren't backups at other locations this has a financial risk 
    - Data exfiltration, customer data or product plans can be stolen resulting in both reputational damage and legal risk.

## 5. Recommendations
- Update to latest versions of software
- Disable unsafe services such as r-services or lock behind a firewall
- Use least-privilege principles so if unauthorised access is gained, the attacker will not have root privileges
- Create regular backups stored at different sites or servers. 


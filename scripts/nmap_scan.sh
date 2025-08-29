#!/bin/bash

TARGET=$1
OUTPUT_DIR="scans"

mkdir -p $OUTPUT_DIR

echo "[*] Starting full port scan on $TARGET..."
nmap -sS -T4 -p- $TARGET -oN $OUTPUT_DIR/initial_scan.txt

echo "[*] Extracting open ports..."
PORTS=$(grep ^[0-9] $OUTPUT_DIR/initial_scan.txt | awk -F/ '{print $1}' | tr '\n' ',' | sed 's/,$//')

echo "[*] Found open ports: $PORTS"

echo "[*] Running version detection..."
nmap -sV -O -p$PORTS $TARGET -oN $OUTPUT_DIR/version_scan.txt

echo "[*] Running vulnerability scripts..."
nmap --script=vuln -p$PORTS $TARGET -oN $OUTPUT_DIR/vuln_scan.txt

echo "[*] Scans completed. Results saved in $OUTPUT_DIR/"

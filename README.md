# Git Systems Audit Toolkit

**Student:** Shivang Upadhyay  
**Registration Number:** 24MIM10082  
**Course:** Open Source Software  

---

## Overview

This project presents a structured audit of the Git version control system, analyzing it from both a technical and philosophical perspective. It examines Git’s origin, licensing under GPL v2, its behavior within a Linux environment, and its role in the broader open-source ecosystem.

In addition to theoretical analysis, the project includes a set of shell scripts designed to inspect system-level aspects such as dependencies, filesystem footprint, permissions, and log activity. The goal is to connect conceptual understanding with practical Linux-based analysis.

---

## Key Features

- System-level audit of Git on Linux  
- Analysis of GPL v2 licensing model  
- Practical shell scripting implementation  
- Filesystem and log inspection tools  
- Comparison with proprietary alternatives  

---

## Scripts

### 1. system_probe.sh
Displays system information such as kernel version, distribution, user, uptime, and environment details.

### 2. dependency_audit.sh
Checks if Git is installed, extracts package details, and provides a brief philosophical summary.

### 3. system_footprint.sh
Analyzes key Linux directories, reporting size, permissions, and ownership, along with Git configuration checks.

### 4. log_forensics.sh
Parses system log files to identify keyword occurrences and summarizes relevant entries.

### 5. oss_manifesto.sh
Generates a personalized open-source manifesto based on user input and saves it to a file.

---

## How to Run

Make scripts executable:

```bash
chmod +x scripts/*.sh
```
Lastly run them:
```bash
./scripts/system_probe.sh
./scripts/dependency_audit.sh
./scripts/system_footprint.sh
./scripts/log_forensics.sh /var/log/syslog
./scripts/oss_manifesto.sh
```

---

## Requirements
```md
Repository Structure
oss-audit-24MIM10082/
├── scripts/        # Shell scripts for system auditing
├── report/         # Project report (Markdown / PDF)
├── images/         # Script output screenshots
├── benchmarks/     # Optional (not required)
└── README.md       # Project documentation
```

---

## Report
The full project report is available in the report/ directory and includes:

- Origin and philosophy of Git
- GPL v2 license analysis
- Linux system footprint
- FOSS ecosystem analysis
- Open-source vs proprietary comparison
- Script outputs with screenshots

---

## NOtes
This project was developed as part of the Open Source Software course. It demonstrates both theoretical understanding and practical application of open-source principles within a Linux environment.


---




# SOC Automated SIEM Deploy with Splunk Enterprise

This project provides an automated script to deploy **Splunk Enterprise** on a VPS in under 5 minutes. It also downloads Splunk's tutorial data and ingests it into Splunk via the command line. This is ideal for SOC analysts who want to quickly set up a lab environment for training and skill improvement.

---

## Features

- **Quick Splunk Enterprise Deployment**: Install and configure Splunk Enterprise on a VPS in less than 5 minutes.
- **Tutorial Data Ingestion**: Automatically download and upload sample tutorial data into Splunk for testing and training.
- **Automation**: The script simplifies the process, making it easier to get Splunk up and running without manual steps.

---

## IMPORTANT INFORMATION

1. **This script is valid for Debian/Ubuntu-based systems**:  
   For other distributions, such as **RHEL9**, you will need to adapt the download link to match the correct package format. You can find the appropriate package for your operating system on the [Splunk Downloads Page](https://www.splunk.com/en_us/download.html).

2. **This script automatically ingests the tutorial data for testing purposes**:  
   If you don't want to ingest the tutorial data, please use the **alternative version of the script** below, which skips this step.

---

## Prerequisites

- A Linux-based VPS with root or sudo privileges.
- **wget** and **unzip** installed on the system.
- Internet access for downloading Splunk and tutorial data.

---

## Script Usage

### Steps to Deploy Splunk Enterprise and Ingest Tutorial Data

1. Download the `deploy_splunk_with_data.sh` script and execute it:
   ```bash
   curl -O https://raw.githubusercontent.com/Nortindev/SOC-Automated-SIEM-Deploy-with-Splunk-Enterprise/refs/heads/main/deploy_splunk_with_data.sh ; bash deploy_splunk_with_data.sh
   ```
2. If you wish to deploy Splunk Enterpise ***WITHOUT THE DATA***, use this script instead:
   ```bash
   curl -O https://raw.githubusercontent.com/Nortindev/SOC-Automated-SIEM-Deploy-with-Splunk-Enterprise/refs/heads/main/deploy_splunk_without_data.sh ; bash deploy_splunk_without_data.sh
   ```


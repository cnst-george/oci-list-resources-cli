# OCI Cloud Automation Scripts

This repository contains a collection of OCI CLI scripts for automating various tasks in Oracle Cloud Infrastructure (OCI). These scripts are designed to streamline cloud management, improve security, optimize costs, and ensure compliance with OCI best practices.


## 📂 Folder Structure
```
├── list-buckets                     # List buckets
├── list-policies                    # List policies
├── list-resources                   # List all resources
├── list-unused                      # List unused resources
├── list-storage                     # List block volumes, File Systems
└── README.md                        # Documentation for the repository
```

## 🚀 Getting Started

### Prerequisites
Ensure you have the following installed before running the scripts:
- **OCI CLI**: Install using [OCI CLI setup guide](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm)
- **Authentication Setup**:
  - Ensure you have an OCI **config file** at `~/.oci/config` with required credentials.
  - Example config file:
    ```ini
    [DEFAULT]
    user=ocid1.user.oc1..xxxxx
    fingerprint=xx:xx:xx:xx:xx:xx
    key_file=/path/to/your/private/api_key.pem
    tenancy=ocid1.tenancy.oc1..xxxxx
    region=eu-frankfurt-1
    ```

### 🔧 Installation
Clone this repository and install dependencies:
```bash
git clone <repository_link>
cd <repo_directory>
oci setup config
```

## 📌 Usage
Each script is designed for a specific task in OCI. Below are examples of how to execute them.

### Listing Buckets
```bash
cd list-buckets
./list-buckets.sh
```

### Listing Policies
```bash
cd list-policies
./list-policies.sh
```

### Listing All Resources
```bash
cd list-resources
./list-resources.sh
```

### Listing Unused Resources
```bas/
cd list-unused 
./list-unused.sh
```

### Listing Storage Volumes (Attached/ Detached) and File Systems
```bash
cd list-storage
./list-storage.sh
```

## 📊 Output Formats
The scripts generate reports in multiple formats for easy analysis:
- **CSV**:  Comma-separated values.
- **XLSX**: Structured data for Excel/Google Sheets.
- **JSON**: Machine-readable structured format.
- **Log files**: Debugging and execution logs.

## 🔒 Security Considerations
- Ensure that **API keys** and **sensitive credentials** are securely stored.
- Use **OCI Vault** for managing secrets if required.
- Restrict **IAM permissions** to allow only necessary access.


## 📬 Contact
For any questions or issues, feel free to raise an **Issue** or contact:
📧 **george.constantin@oracle.com**

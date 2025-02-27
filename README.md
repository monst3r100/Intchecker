# Intchecker - File Upload & Integrity Checker

## 📌 Overview
**Intchecker** is a simple Bash script that allows users to upload a file and verify its integrity using **SHA1** and **MD5** checksums. It calculates hash values for a file and compares them against a reference hash to ensure file integrity.

## 📥 Installation
### Clone the repository:
```bash
git clone https://github.com/yourusername/Intchecker.git
cd Intchecker
```

### Give execution permissions:
```bash
chmod +x file_upload_integrity.sh
```

## 🚀 Usage
### Run the script:
```bash
./file_upload_integrity.sh
```

### Steps:
1. Enter the file path when prompted.
2. The script will generate **SHA1** and **MD5** hashes.
3. Optionally, enter a reference **SHA1** and **MD5** hash to verify integrity.
4. The script will compare the computed hashes with the reference values and report if they match.

## 📋 Example Output:
```bash
==== File Upload & Integrity Checker ====
Enter the file path to upload: sample.txt
Calculating hashes...
SHA1: 00000000000000000000000000000000
MD5:  00000000000000000000000000000000

Do you want to verify integrity? (y/n): y
Enter reference SHA1 hash: 0000000000000000000000000000000
Enter reference MD5 hash: 00000000000000000000000000000000

Verifying integrity...
✅ SHA1 Match
✅ MD5 Match
Process completed!
```

## 🛠 Requirements
- Bash
- `sha1sum` & `md5sum` commands (pre-installed in most Linux distributions)

## 📜 License
This project is open-source and available under the **Apache 2.0 License**.

## 📧 Contact
For issues or contributions, feel free to open a pull request or contact the developer.

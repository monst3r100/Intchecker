#!/usr/bin/bash

#cr3473dby_monster
# Function to calculate hashes
calculate_hashes() {
    local file="$1"
    sha1sum "$file" | awk '{print $1}' > "$file.sha1"
    md5sum "$file" | awk '{print $1}' > "$file.md5"
    echo "SHA1: $(cat $file.sha1)"
    echo "MD5:  $(cat $file.md5)"
}

# Function to verify integrity
verify_integrity() {
    local file="$1"
    local ref_sha1="$2"
    local ref_md5="$3"

    local calc_sha1=$(sha1sum "$file" | awk '{print $1}')
    local calc_md5=$(md5sum "$file" | awk '{print $1}')

    echo -e "\nVerifying integrity..."
    if [[ "$calc_sha1" == "$ref_sha1" ]]; then
        echo "✅ SHA1 Match"
    else
        echo "❌ SHA1 Mismatch!"
    fi

    if [[ "$calc_md5" == "$ref_md5" ]]; then
        echo "✅ MD5 Match"
    else
        echo "❌ MD5 Mismatch!"
    fi
}

# Main script
echo "==== File Upload & Integrity Checker ===="
read -p "Enter the file path to upload: " file_path

if [[ ! -f "$file_path" ]]; then
    echo "Error: File not found!"
    exit 1
fi

echo "Calculating hashes..."
calculate_hashes "$file_path"

read -p "Do you want to verify integrity? (y/n): " verify_choice

if [[ "$verify_choice" == "y" ]]; then
    read -p "Enter reference SHA1 hash: " ref_sha1
    read -p "Enter reference MD5 hash: " ref_md5
    verify_integrity "$file_path" "$ref_sha1" "$ref_md5"
fi

echo "Process completed!"


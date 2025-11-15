#!/bin/bash
# This script downloads a file from the internet
# Author:hpjiyagupta

# the URL that the user wants to download
url=$1

# folder where the downloaded file will be saved
folder=~/downloads

# create folder if it does not exist
mkdir -p $folder

# download the file using wget or curl
echo "Downloading file..."

# if wget exists, use wget
if command -v wget > /dev/null; then
    wget -P $folder $url
# otherwise use curl
elif command -v curl > /dev/null; then
    curl -o $folder/file_downloaded $url
else
    echo "No download found (wget or curl missing)"
    exit 1
fi

echo "Download completed."
echo "Saved in $folder"

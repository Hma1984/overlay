#!/bin/bash

# Script: delete_specific_files_and_folders.sh
# Mô tả: Tìm và xóa thư mục "original", tệp "AndroidManifest.xml", và tệp "apktool.yml"

# Tìm và xóa thư mục "original"
find . -type d -name "original" | while read -r FOLDER; do
  echo "Đang xóa thư mục: $FOLDER"
  rm -rf "$FOLDER"
done

# Tìm và xóa tệp "AndroidManifest.xml"
find . -type f -name "AndroidManifest.xml" | while read -r FILE; do
  echo "Đang xóa tệp: $FILE"
  rm -f "$FILE"
done

# Tìm và xóa tệp "apktool.yml"
find . -type f -name "apktool.yml" | while read -r FILE; do
  echo "Đang xóa tệp: $FILE"
  rm -f "$FILE"
done

echo "Hoàn thành!"
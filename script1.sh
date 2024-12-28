#!/bin/bash

remove_empty_files() {
  find "$1" -type f -empty -delete
}

remove_empty_dirs() {
  find "$1" -type d -empty -not -path "$1" -delete
}

target_dir="$1"

if [ -d "$target_dir" ]; then
  remove_empty_files "$target_dir"
  remove_empty_dirs "$target_dir"
else
  echo "Директорія не існує: $target_dir"
  exit 1
fi

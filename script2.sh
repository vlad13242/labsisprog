#!/bin/bash

if [ -z "$1" ]; then
  echo "Помилка: Не вказано шлях до директорії."
  echo "Використання: $0 /шлях/до/цільової/директорії"
  exit 1
fi

gnome-terminal -- bash -c "bash ./script1.sh '$1'; exec bash"

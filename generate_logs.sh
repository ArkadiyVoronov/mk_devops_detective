#!/bin/bash

# Создаём папку logs, если её нет
LOG_DIR="logs"
LOG_FILE="$LOG_DIR/app_logs.txt"

mkdir -p $LOG_DIR
echo "Generating logs in $LOG_FILE..."

while true; do
  TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
  case $((RANDOM % 3)) in
    0) echo "[$TIMESTAMP] INFO: Application is running..." >> $LOG_FILE ;;
    1) echo "[$TIMESTAMP] WARNING: Low disk space detected!" >> $LOG_FILE ;;
    2) echo "[$TIMESTAMP] ERROR: Failed to connect to database!" >> $LOG_FILE ;;
  esac
  sleep 2
done
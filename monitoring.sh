#!/bin/bash

echo "Monitoring containers..."
while true; do
  clear
  echo "=== CONTAINER STATUS ==="
  docker ps -a --format "table {{.Names}}\t{{.Status}}"
  sleep 5
done

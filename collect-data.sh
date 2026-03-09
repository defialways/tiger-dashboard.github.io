#!/bin/bash
echo "{"
echo "  \"timestamp\": \"$(date -u +%Y-%m-%dT%H:%M:%SZ)\","
echo "  \"uptime\": \"$(uptime -p)\","
echo "  \"memory\": \"$(free -h | grep Mem | awk '{print $3 "/" $2}')\","
echo "  \"disk\": \"$(df -h / | tail -1 | awk '{print $3 "/" $2 " (" $5 ")"}')\","
echo "  \"load\": \"$(uptime | awk -F'load average:' '{print $2}' | xargs)\""
echo "}"

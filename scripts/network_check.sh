#!/bin/bash

check_site() {
	site=$1
	echo "Checking $site..."
	status=$(curl -s -o dev/null -w "%{http_code}" "$site")
	echo "$site responded with status: $status"
}

if [ -z "$1" ]; then
	echo "Usage: ./network_check.sh <URL>"
	exit 1
fi

check_site "$1"

#!/usr/bin/env bash
DSPACE_URL_FILE="$(pwd)/urls-dspace.txt"
CSD_URL_FILE="$(pwd)/urls-csd.txt"

mkdir -p 'DSpace/records'
(
	cd 'DSPace/records'
	while read URL; do
		wget "${URL}"
		sleep .5
	done < "${DSPACE_URL_FILE}"
)

mkdir -p 'CSD_TOOLS/records'
(
	cd 'CSD_TOOLS/records'
	while read URL; do
		wget "${URL}"
		sleep .5
	done < "${CSD_URL_FILE}"
)

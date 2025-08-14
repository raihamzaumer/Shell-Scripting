#!/bin/bash

<< readme
This is a script for backup with five day rotation

usage:
./backup.sh <path to your source> <path to backup folder>

readme

function display_usage {
	echo "usage:./backup.sh <path to your source> <path to backup folder>"
}
if [ $# -eq 0 ]; then
	display_usage
	exit 1
fi

source_dir=$1
backup_dir=$2
timestamp=$(date '+%Y-%m-%H-%M-%S')

function create_backup {
	zip -r "${backup_dir}/backups_${timestamp}.zip" "${source_dir}" > /dev/null
	if [ $? -eq 0 ]; then
		echo "Backup generated succeccfully for ${timestamp}"
	fi
}

function perform_rotation {
	backups=($(ls -t "${backup_dir}/backups_"*.zip 2>/dev/null))


	if [ "${#backups[@]}" -gt 4 ]; then
		echo "Performing rotation for 4  days"
		
		backups_to_remove=("${backups[@]:4}")
		for backup in "${backups_to_remove[@]}";
		do
			rm -f ${backup}
		done
	fi	
}
create_backup
perform_rotation

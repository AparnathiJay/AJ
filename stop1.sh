#!/usr/bin/env bash

set -e

echo 'Stopping Planning Analytics Workspace docker containers'

if ! [ -x "$(command -v docker)" ]; then
  echo 'The current user cannot issue docker commands. Ensure that docker is installed and that the user has been added to the docker group'
  exit 1
fi
#stop and remove any relevant containers running
	docker ps
	cd '/opt/ibm/paw/scripts'
 	./admintool.sh	
	docker ps
	echo 'successfully stopped all the containers'


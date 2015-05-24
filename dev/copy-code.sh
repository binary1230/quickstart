#!/bin/bash
# Don't run this script directly, it's part of another script.
# DEVELOPMENT ONLY - NEVER USE IN PRODUCTION
#
# since we can't easily share dirs FROM the container TO the host,
# we'll do the following:  Copy the code deployed inside the Docker container
# TO THE DATA VOLUME, so the external host (developer) can access it.
#
# Once the docker container is fully setup,
# run this script FROM INSIDE THE CONTAINER

mv /uber /mnt/dev/
ln -s /mnt/dev/uber /uber

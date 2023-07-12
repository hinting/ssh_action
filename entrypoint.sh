#!/bin/sh -l

# Ensure we fail the job if any steps fail
set -e -o pipefail

# Setup the SSH key
mkdir -p /root/.ssh
echo "$INPUT_SSHKEY" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

# Do not check host key to avoid interactive prompt
echo "StrictHostKeyChecking no" > /root/.ssh/config

# Run the provided command on the remote server
ssh -q $INPUT_USER@$INPUT_HOST "$INPUT_SCRIPT"
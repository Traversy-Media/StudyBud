#!/bin/sh
file_name=${GITHUB_WORKSPACE}/terraform/key.json.gpg

gpg --quiet --batch --yes --decrypt --passphrase="$GCP_SERVICE_ACCOUNT_PASSPHRASE" --output ${GITHUB_WORKSPACE}/terraform/key.json $file_name
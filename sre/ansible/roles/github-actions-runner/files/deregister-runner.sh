#!/bin/bash
set -e


gcloud config set academic-timing-326112 

GITHUB_API_TOKEN=$(gcloud secrets versions access latest --secret=github-action-composable-token)

# GITHUB_ACTIONS_API_TOKEN=$(curl -XPOST -s -H "Accept: application/vnd.github.v3+.json" -H "Authorization: token ${GITHUB_API_TOKEN}" ${ENDPOINT} | jq -r ".token")

./config.sh remove --unattended --url https://github.com/composableFI --token ${GITHUB_ACTIONS_API_TOKEN}


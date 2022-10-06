#!/bin/bash
set -e

ENDPOINT="https://api.github.com/orgs/ComposableFi/composable/actions/runners/registration-token"

GITHUB_API_TOKEN=$(gcloud secrets versions access latest --secret=github-action-composable-token)

echo "Configuring runner: ./config.sh --unattended --url https://github.com/ComposableFi/composable --labels self-hosted,x64,linux,${ADDITIONAL_LABELS} --token ..."

# PUse curl to get github-action-api-token because token rotates every 30days
# GITHUB_ACTIONS_API_TOKEN=$(curl -XPOST -s -H "Accept: application/vnd.github.v3+.json"  -H "Authorization: token ${GITHUB_API_TOKEN}" ${ENDPOINT} | jq -r ".token" )

./config.sh --unattended --url https://github.com/ComposableFi/composable --labels self-hosted,x64,linux,${ADDITIONAL_LABELS} --token ${GITHUB_API_TOKEN}


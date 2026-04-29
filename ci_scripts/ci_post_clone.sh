#!/bin/sh

# Xcode Cloud automatically is script ko run karta hai
# Har build pe build number auto-increment hota hai

set -e

# CI_BUILD_NUMBER Xcode Cloud ka built-in variable hai
# Yeh har build pe automatically increase hota hai
echo "Setting build number to: $CI_BUILD_NUMBER"

cd $CI_PRIMARY_REPOSITORY_PATH
agvtool new-version -all $CI_BUILD_NUMBER

echo "✅ Build number set to $CI_BUILD_NUMBER"

#!/bin/sh
set -eo pipefail

gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/secrets/AppStore_com.techmero.TestingGithub.mobileprovision ./.github/secrets/AppStore_com.techmero.TestingGithub.mobileprovision.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/secrets/YAA43V34T8.p12 ./.github/secrets/YAA43V34T8.p12.gpg

mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles

cp ./.github/secrets/AppStore_com.techmero.TestingGithub.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/AppStore_com.techmero.TestingGithub.mobileprovision


security create-keychain -p "" build.keychain
security import ./.github/secrets/YAA43V34T8.p12 -t agg -k ~/Library/Keychains/build.keychain -P "" -A

security list-keychains -s ~/Library/Keychains/build.keychain
security default-keychain -s ~/Library/Keychains/build.keychain
security unlock-keychain -p "" ~/Library/Keychains/build.keychain

security set-key-partition-list -S apple-tool:,apple: -s -k "" ~/Library/Keychains/build.keychain

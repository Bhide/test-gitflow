#!/bin/sh

gpg --quiet --batch --yes --decrypt --passphrase="$IOS_PROFILE_KEY" --output ./.github/secrets/profile.mobileprovision ./.github/secrets/83d1fbcd-7c19-4612-b1a2-329963ba4273.mobileprovision.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$IOS_PROFILE_KEY" --output ./.github/secrets/Certificates.p12 ./.github/secrets/iPhone\ Distribution.p12.gpg

gpg --quiet --batch --yes --decrypt --passphrase="$IOS_PROFILE_KEY" --output ./.github/secrets/profile_id_card_widget.mobileprovision ./.github/secrets/034a0e6f-37db-42c8-9f60-fe2c92b7af2a.mobileprovision.gpg

mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles

cp ./.github/secrets/profile.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/83d1fbcd-7c19-4612-b1a2-329963ba4273.mobileprovision
cp ./.github/secrets/profile_id_card_widget.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/034a0e6f-37db-42c8-9f60-fe2c92b7af2a.mobileprovision

echo "CREATE NEW KEYCHAIN AND COPY CERTIFICATE TO IT. UNLOCK THE KEYCHAIN TO MAKE IT ACCESSIBLE"

security create-keychain -p "" build.keychain
security import ./.github/secrets/Certificates.p12 -t agg -k ~/Library/Keychains/build.keychain -P "" -A -T /usr/bin/codesign

security list-keychains -s ~/Library/Keychains/build.keychain
# security default-keychain -s ~/Library/Keychains/build.keychain
security unlock-keychain -p "" ~/Library/Keychains/build.keychain

security set-key-partition-list -S apple-tool:,apple: -s -k "" ~/Library/Keychains/build.keychain

echo "------------LISTING CONTENTS OF KEYCHAIN FOLDER-------------"
ls ~/Library/Keychains
ls -p ~/Library/MobileDevice/Provisioning\ Profiles
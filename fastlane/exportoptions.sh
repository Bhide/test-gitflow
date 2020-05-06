#!/bin/sh

/usr/libexec/PlistBuddy -c ./exportOptions.plist
/usr/libexec/PlistBuddy -c "Add :method string "ad-hoc"" ./exportOptions.plist
/usr/libexec/PlistBuddy -c "Add :teamID string "$1"" ./exportOptions.plist
/usr/libexec/PlistBuddy -c "Add :compileBitcode bool false" ./exportOptions.plist
/usr/libexec/PlistBuddy -c "Add :uploadBitcode bool false" ./exportOptions.plist
/usr/libexec/PlistBuddy -c "Add :signingCertificate string "$2"" ./exportOptions.plist
/usr/libexec/PlistBuddy -c "Add :signingStyle string "manual"" ./exportOptions.plist
/usr/libexec/PlistBuddy -c "Add :provisioningProfiles:$3 string $4" ./exportOptions.plist
/usr/libexec/PlistBuddy -c "Add :provisioningProfiles:$5 string $6" ./exportOptions.plist

echo "--------------Printing content of exportOptions.plist-------------"
cat ./exportOptions.plist

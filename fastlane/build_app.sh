#!/bin/sh


echo "----------------------- build_app.sh started-----------------------------"
echo $1
echo $2
echo $3

echo "-----------------BUILD STARTED--------------------"
xcodebuild -scheme "Alumni ID" -workspace "Idee App.xcworkspace" -configuration $1 build
echo "-----------------BUILD ENDED--------------------"

echo "-----------------ARCHIVE STARTED--------------------"
xcodebuild -scheme "Alumni ID" -workspace "Idee App.xcworkspace" -archivePath "./fastlane/app.xcarchive" -configuration $1 PROVISIONING_PROFILE="~/Library/MobileDevice/Provisioning Profiles/$2.mobileprovision" archive
echo "-----------------ARCHIVE ENDED--------------------"

echo "-----------------EXPORT STARTED--------------------"
xcrun xcodebuild -exportArchive -exportOptionsPlist "./exportOptions.plist" -archivePath "./fastlane/app.xcarchive" -exportPath "./fastlane/IPA"
echo "-----------------EXPORT ENDED--------------------"

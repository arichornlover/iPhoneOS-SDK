#! /usr/local/bin/bash

for i in $(cat macos-14.txt); do if [ "$i" = "16.0" ]; then cd /Applications/Xcode_"$i"_Beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs; else cd /Applications/Xcode_"$i".app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs; fi for j in "$(ls | grep iPhoneOS | grep -v iPhoneOS.sdk)"; do if [[ "$j" == *.tar.xz ]]; then sudo tar -cJvhf /Users/runner/work/iPhoneOS-SDK/iPhoneOS-SDK/xcode/"$j" "$j"; fi if [[ "$j" == *.zip ]]; then sudo zip -r /Users/runner/work/iPhoneOS-SDK/iPhoneOS-SDK/xcode/"$j".zip "$j"; fi done done

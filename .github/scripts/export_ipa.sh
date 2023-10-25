#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/GitTetsingDemo.xcarchive \
            -exportOptionsPlist GitTetsingDemo/info.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
            

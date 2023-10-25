#!/bin/bash

set -eo pipefail

xcodebuild -workspace GitTetsingDemo.xcworkspace \
            -scheme GitTetsingDemo\ iOS \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/GitTetsingDemo.xcarchive \
            clean archive | xcpretty
            

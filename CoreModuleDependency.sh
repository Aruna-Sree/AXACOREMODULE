#!/bin/sh
# This script will add the OTHER_LDFLAGS in build.xcconfig


PROJECT_DIR=''

camdoReporterHeader=$(find -L ${PODS_ROOT}/Headers/Public/CAMobileAppAnalytics \
-type f -iname “CAMDOReporter.h”)
echo "File found $camdoReporterHeader"

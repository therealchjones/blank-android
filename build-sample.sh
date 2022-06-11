#!/bin/sh

export ANDROID_SDK_ROOT=~/Library/Android/sdk
RUNDIR="$(dirname "$0")"
"$RUNDIR"/gradlew clean || exit 1
BUNDLETOOL="$RUNDIR/bundletool-all-1.10.0.jar"
curl -L -o "$BUNDLETOOL" "https://github.com/google/bundletool/releases/download/1.10.0/bundletool-all-1.10.0.jar"
"$RUNDIR"/gradlew bundleRelease || exit 1
AABFILE="$RUNDIR"/app/build/outputs/bundle/release/app-release.aab
APKSFILE="$RUNDIR"/apks
java -jar "$BUNDLETOOL" build-apks --bundle="$AABFILE" --output="$APKSFILE" \
	--device-spec="$RUNDIR/device.json" --output-format=DIRECTORY \
	|| exit 1
mv "$RUNDIR/apks/splits/base-x86_64.apk" ./resources-only.apk
echo Sample file: ./resources-only.apk

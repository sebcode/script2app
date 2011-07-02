#/bin/sh

set -e

if test -z "$1"; then
	echo "arg1: shell script filename"
	exit 1
fi

if test -d tmp/; then
	rm -r tmp/
fi

if test -d launcher.app/; then
	rm -r launcher.app/
fi

mkdir -p tmp/
cp -r launcher tmp/
cp -r launcher.xcodeproj tmp/

cp $1 tmp/launcher/Resources/script.sh
chmod +x tmp/launcher/Resources/script.sh

cd tmp/
xcodebuild
cd ..
mv tmp/build/Release/launcher.app/ .
rm -r tmp/

echo Done.


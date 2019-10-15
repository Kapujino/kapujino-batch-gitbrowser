#!/bin/bash

[ $# -eq 0 ] && {
	echo "ERROR: NO argument!"
	echo "usage: ./build.sh [TYPE] [VERSION]"
	echo "currently types: initial, xstream_fix, adult"
	exit 1
}
[ -e $2] && {
	echo "ERROR: VERSION argument missing!"
	echo "usage: ./build.sh [TYPE] [VERSION]"
	echo "currently types: initial, xstream_fix, adult"
	exit 1
}

TYPE=$1
VERSION=$2

case "$TYPE" in
	"initial")
		cd initial; zip ../kapujino_initial-gitbrowser.installer-$VERSION.zip manifest.xml configs/*; cd ..
		;;
	"xstream_fix")
		cd xstream_fix; zip ../kapujino_xstream_fix-gitbrowser.installer-$VERSION.zip manifest.xml configs/*; cd ..
		;;
	"adult")
		cd adult; zip ../kapujino_adult-gitbrowser.installer-$VERSION.zip manifest.xml; cd ..
		;;
	*)
		echo "usage: ./build.sh [TYPE] [VERSION]"
		echo "available types: initial, xstream_fix, adult"
		exit 1
		;;
esac

#!/bin/bash

if [ $# -eq 0 ]; then
        echo "ERROR: NO argument!"
        echo "usage: ./build.sh [TYPE] [VERSION]"
        echo "current types: initial, xstream_fix, adult"
        exit 1
elif [ -z "$2" ]; then
        echo "ERROR: VERSION argument missing!"
        echo "usage: ./build.sh [TYPE] [VERSION]"
        echo "current types: initial, xstream_fix, adult"
        exit 1
else
	TYPE=$1
	VERSION=$2
fi

case "$TYPE" in
	"initial")
		cd initial; zip ../kapujino_initial-gitbrowser.installer-$VERSION.zip manifest.xml configs/*; cd ..
        	exit 1
		;;
	"xstream_fix")
		cd xstream_fix; zip ../kapujino_xstream_fix-gitbrowser.installer-$VERSION.zip manifest.xml configs/*; cd ..
	        exit 1
		;;
	"adult")
		cd adult; zip ../kapujino_adult-gitbrowser.installer-$VERSION.zip manifest.xml; cd ..
        	exit 1
		;;
	*)
		echo "usage: ./build.sh [TYPE] [VERSION]"
		echo "current types: initial, xstream_fix, adult"
		exit 1
		;;
esac

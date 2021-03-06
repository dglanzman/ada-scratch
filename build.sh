#!/usr/bin/env bash

GNAT_INSTALL=~/opt/gnat

INCLUDES=$(printf " -I%s " \
	spikes \
	utils \
	utils/tests \
	$GNAT_INSTALL/include/aunit \
)

if [ "$1" = "clean" ]; then
	rm *.ali *.o b~* main
else
	$GNAT_INSTALL/bin/gnatmake -g -gnaty -Wall $INCLUDES main
fi

#!/bin/sh

case "$1" in
	install )
		COMMAND=install;;
	uninstall )
		COMMAND=uninstall;;
	upgrade )
		COMMAND=upgrade;;
	new|-n|/n )
		COMMAND=new;;
	help|-h|/? )
		COMMAND=help;;
	* )
		COMMAND=help;;
esac

echo '#:' $# 

if [ $# -ge 2 ]; then
	shift
fi

echo Running: $0
echo Command: $COMMAND
path=`dirname $0`
$path/.jarnik/$COMMAND "$@" 

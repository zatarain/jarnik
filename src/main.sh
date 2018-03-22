#!/bin/sh

case "$1" in
	install)
		command=install;;
	uninstall)
		command=uninstall;;
	upgrade)
		command=upgrade;;
	new|-n|/n)
		command=new;;
	help|-h|/?|*)
		command=help;;
esac

if [ $# -ge 1 ]; then
	shift
fi

`dirname $0`/.jarnik/$command "$@" 

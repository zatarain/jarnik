#!/bin/sh
: "
Jarník Build System [JBS]
: "

export jarnik=`basename $0`
export jarnikdir=`dirname $0`/.$jarnik
. `dirname $0`/.$jarnik/.core

case "$1" in
	install) command=install;;
	uninstall) command=uninstall;;
	upgrade) command=upgrade;;
	new|-n|/n) command=new;;
	help|-h|/?) command=help;;
	*) command=help;;
esac

if [ $# -ge 1 ]; then
	shift
fi

$jarnikdir/$command "$@" 

export jarnik=
export jarnikdir=

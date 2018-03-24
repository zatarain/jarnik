#!/bin/sh
: "
Jarník Build System [JBS]
: "

export jarnik=`basename $0`
export jarnikdir=`dirname $0`/.$jarnik
. $jarnikdir/.core

command=$jarnikdir/$1
if [ $# -eq 0 ] || [ ! -x "$command" ] || echo "$command" | grep -Eq '/\.[^/]+$' ; then
	command=$jarnikdir/help
fi

if [ $# -ge 1 ]; then
	shift
fi

"$command" "$@"

export jarnik=
export jarnikdir=

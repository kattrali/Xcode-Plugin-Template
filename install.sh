#!/usr/bin/env bash

TMPLTNM="Xcode5 Plugin.xctemplate"
THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DESTDIR="$HOME/Library/Developer/Xcode/Templates/Project Templates/Application Plug-in"
mkdir -p "$DESTDIR"
[[ -d "$DESTDIR/$TMPLTNM" ]] && rm -r "$DESTDIR/$TMPLTNM"
cp -r "$THISDIR" "$DESTDIR/$TMPLTNM"
echo -e "copied  $THISDIR\nto      $DESTDIR/$TMPLTNM\n"
open "$DESTDIR"
#!/bin/bash

front_app=$(osascript -e 'tell application "System Events" to name of first application process whose frontmost is true')

if [ "$front_app" = "Finder" ]; then
  finder_path=$(osascript -e 'tell application "Finder" to POSIX path of (target of front window as alias)')
  open -na Ghostty --args --working-directory "$finder_path"
else
  open -na Ghostty
fi


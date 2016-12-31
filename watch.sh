#!/usr/bin/env bash
#
inotifywait -e close_write,moved_to,create -m . |
while read -r directory events filename; do
  if [ "$filename" = "resume.md" ] ||
     [ "$filename" = "latex_variables.md" ] ||
     [ "$filename" = "eisvogel.latex" ];
  then
    ./make_pdf.sh
  fi
done

#!/bin/bash

set -e

if [ ! -f "$1" ] || [ -z "$2" ]; then
  echo "Synopsis: printplayerheatmap inputfile outputfile"
  return 1
fi

rm -f $2

octave --silent --interactive --eval "printplayerheatmap('$1', '$2')"
if [ ! -f "$2" ]; then
  echo "Failed to write \"$2\""
  return 1
fi


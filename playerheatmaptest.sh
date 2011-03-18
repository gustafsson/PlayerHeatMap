#!/bin/bash

set -e

octave --silent --interactive --eval playerheatmaptest

sh printplayerheatmap.sh testdata.txt testbild.png


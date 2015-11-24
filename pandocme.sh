#!/bin/bash -

pandoc -s $1.md -c assets/css-ss.css --toc -o assets/$1.html

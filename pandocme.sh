#!/bin/bash -

pandoc -s $1.md -t dzslides --self-contained -o $1.html

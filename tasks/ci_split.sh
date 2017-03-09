#!/bin/bash -e

# Small helper script to split test commands
# between the two CircleCI containers

case $CIRCLE_NODE_INDEX in
    0) eval $1 ;;
    1) eval $2 ;;
esac

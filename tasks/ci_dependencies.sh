#!/bin/bash -e

case $CIRCLE_NODE_INDEX in

    # image tests
    0)
        eval $(node tasks/docker.js pull)
        npm run cibuild
        eval $(node tasks/docker.js run)
        eval $(node tasks/docker.js setup)
        ;;

    # jasmine tests
    1)
        ;;

esac

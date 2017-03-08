#!/bin/bash -e

case $CIRCLE_NODE_INDEX in

    # image tests
    0)
        npm run test-syntax
        npm run lint
        ;;

    # jasmine tests
    1)
        npm run citest-jasmine
        npm run test-bundle
        ;;

esac

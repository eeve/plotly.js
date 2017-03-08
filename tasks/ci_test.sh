#!/bin/bash -e

case $CIRCLE_NODE_INDEX in

    # image tests
    0)
        npm run test-image
        npm run test-image-gl2d
        npm run test-export
        ;;

    # jasmine tests
    1)
        npm run citest-jasmine
        npm run test-bundle
        npm run test-syntax
        eslint .
        ;;

esac

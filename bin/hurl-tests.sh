#!/bin/bash -
#===============================================================================
#
#          FILE: hurl-tests.sh
#
#         USAGE: ./hurl-tests.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 12/20/2022 14:50
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# we run the tests twice to make sure our clean up is solid
hurl --test --glob hurl/**/*.hurl --variables-file hurl/variables-local
hurl --test --glob hurl/**/*.hurl --variables-file hurl/variables-local

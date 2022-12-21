#!/bin/bash -
#===============================================================================
#
#          FILE: reset-db.sh
#
#         USAGE: ./reset-db.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 12/20/2022 14:53
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

export DATABASE_URL=postgres://oxidauth:oxidauth@127.0.0.1:5432/oxidauth

# touch Cargo.toml

sqlx database drop -y
sqlx database create
sqlx migrate run


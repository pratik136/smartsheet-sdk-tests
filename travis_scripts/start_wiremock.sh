#!/usr/bin/env sh

WIREMOCK_INSTALL_DIR='Smartsheet-WireMock-Bundle'

# run wiremock
(cd $WIREMOCK_INSTALL_DIR; ./launch.sh &)

# wait for wiremock to start
sleep 10

#!/bin/bash
aw-server --testing --storage=memory &> /dev/null &
AWPID=$!

# Give aw-server some time to start
sleep 5

# Run tests
mocha
EXITCODE=$?

# Shutdown AW
kill $AWPID

exit $EXITCODE

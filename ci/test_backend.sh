#!/bin/bash
docker-compose -f docker/compose/test.yml run sarava unittests.sh
exitcode=$?
docker-compose -f docker/compose/test.yml down
exit $exitcode

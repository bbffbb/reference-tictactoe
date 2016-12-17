#!/bin/bash

set -e

sleep 10 #sleep for 10 seconds to be able to migrate db before running
npm run migratedb-prod
node run.js

exit 0
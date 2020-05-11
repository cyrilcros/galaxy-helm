#!/bin/bash

set -ex

gunzip < init2_restore.sql.gz | psql -v ON_ERROR_STOP=1 --username "$POSTGRESQL_USERNAME" galaxy

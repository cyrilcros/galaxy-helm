#!/bin/bash

set -e

gunzip -c init2_restore.sql.gz | psql -v ON_ERROR_STOP=1 --username "$POSTGRESQL_USERNAME" galaxy

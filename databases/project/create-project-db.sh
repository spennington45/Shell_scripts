#!/bin/bash
export PGPASSWORD='postgres1'

psql -U postgres -f "./dropdb.sql" &&
createdb -U postgres project
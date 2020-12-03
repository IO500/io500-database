#!/bin/bash

# how this was created
mysqldump -u io500committee --no-create-info --extended-insert --single-transaction -p -h mysql.io500.org io500_db > data.sql
# break lines to format it better
sed "s/),/),\n/g" data.sql > dump.sql



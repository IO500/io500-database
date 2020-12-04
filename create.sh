#!/bin/bash

# dump the database into plain text so that it can be reviewed more easily
# split output with one record per line so that it is human-readable in Git
mysqldump -u io500committee --no-create-info --extended-insert --single-transaction -p -h mysql.io500.org io500_db | sed "s/),/),\n/g" > data.sql

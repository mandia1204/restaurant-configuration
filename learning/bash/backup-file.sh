#!/bin/bash
FILENAME=mybackup_$(date +%Y%m%d).tar.gz
tar -czf $FILENAME tobackup

echo $(date)

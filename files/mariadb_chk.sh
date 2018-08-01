#!/bin/bash

./usr/bin/mysql $@ -e 'SHOW DATABASES;' &>/dev/null
exit "$?"

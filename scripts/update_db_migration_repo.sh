#!/bin/bash

if [ -d ~/postgis_migration ]; then
	cd ~/postgis_migration
	git pull origin main
else
	cd ~
	git clone https://github.com/dudehro/postgis_migration.git
fi
exit 0

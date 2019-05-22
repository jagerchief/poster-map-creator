#! /usr/bin/env bash

rm -f .deps_installed
#cp -a /npm/node_modules/. /data/node_modules/

ln -s /data/poster-app/node_modules/@angular/cli/bin/ng /usr/bin/ng

if [ "${PROFILE}" == "dev" ]
then

    npm install
    npm rebuild node-sass --force
    cd /data/poster-appz
    ng serve --host 0.0.0.0 --disable-host-check
fi



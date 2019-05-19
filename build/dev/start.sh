#! /usr/bin/env bash

rm -f .deps_installed
#cp -a /npm/node_modules/. /data/node_modules/

ln -s /data/poster-app/node_modules/@angular/cli/bin/ng /usr/bin/ng

if [ "${PROFILE}" == "dev" ]
then
    if [ -z "$(ls -A /data/poster-app/node_modules/)" ]
    then
        npm -g config set user root
        npm install
        npm rebuild node-sass --force
    fi
    cd /data/poster-app
    ng serve --host 0.0.0.0 --disable-host-check
fi



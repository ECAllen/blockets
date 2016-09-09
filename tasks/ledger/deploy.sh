#! /usr/bin/env bash

echo "============================================================"
echo "deploying"
echo "============================================================"

distribute ${USER} ${ME}.hosts ${CLIENT_SRC}/resources/public/js/compiled/app.js /home/projects/miser.li/js/

distribute ${USER} ${ME}.hosts ${SERVER_DIR}/index.html /home/projects/miser.li/

distribute ${USER} ${ME}.hosts ${LEDGER_SERVER_SRC}/target/ledger-server*standalone.jar /home/projects/miser.li-server/

distribute ${USER} ${ME}.hosts ${LEDGER_ACCOUNTS_SRC}/dev.ledger /home/projects/miser.li-server/


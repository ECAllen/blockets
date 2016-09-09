#! /usr/bin/env bash

. /etc/blockets/blockets.env

export ME=ledger

. ${ENV}/${ME}.env

for task in "$@"
do
	if [[ -e ${TASKS}/${ME}/${task}.sh ]]
	then
		echo "${TASKS}/${ME}/${task}.sh"
		${TASKS}/${ME}/${task}.sh
	else
		echo "[ERROR] Not found: ${TASKS}/${ME}/${task}.sh"
	fi
done

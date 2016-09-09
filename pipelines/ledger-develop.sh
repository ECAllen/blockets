#! /usr/bin/env bash

. /etc/bash_fabric/fabric.env

export ME=ledger

. ${ENV}/${ME}.env

${TASKS}/${ME}/ledger-client.sh 


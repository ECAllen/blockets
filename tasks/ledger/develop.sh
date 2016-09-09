#! /bin/bash

PROJECT_HOME=~/projects

nohup urxvt -e sh -c "cd $PROJECT_HOME/ledger-server; lein ancient upgrade :no-tests; lein ancient upgrade :no-tests :plugins; lein do clean, ring server-headless" &

nohup urxvt -e sh -c "cd $PROJECT_HOME/ledger-client; lein ancient upgrade :no-tests :check-clojure; lein ancient upgrade :no-tests :plugins; lein do clean, figwheel" &

# nohup urxvt -e sh -c "cd $PROJECT_HOME/ledger-client; lein do clean, ring server-headless" &

# nohup urxvt -e sh -c "cd /home/ethan/projects/reagent-test; lein figwheel" &

htop

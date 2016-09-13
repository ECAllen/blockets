# Blockets

Simple method for organizing BASH scripts. It is designed to cut down on troubleshooting time and present a coherent method for organizing projects. 

This is really just an example and should be adaptable to your own needs.

## Install

clone repo somewhere

mkdir /etc/blockets

cd blockets

link /etc/blockets/blockets.env env/blockets.env

link /etc/blockets/colors.env colors.env

## Usage 

Create the following directory structure:

env/

host_lists/

tasks/project/

pipelines/

### env/

Create a project.env file in env/ with the variables and project specific scripts. Note you may want to create a env/project/ dir.

### host_lists/

Create lists of hosts in host_lists/. For example project.dev.hosts, project.prod.hosts etc ...

### tasks/

Create scripts in the tasks/project/ directory. Look at the example build and deploy scripts for examples.  

These scripts can be run individually but usually they would be run by a wrapper script in pipelines directory.

### pipelines/

The scripts in the tasks/<projects> dir are executed using the wrapper scripts in the pipeines directory. 

For example to build and deploy a project you could execute. 

pipelines/example build deploy

The idea is that tasks are assembled into larger streams of execution using pipelines. 



See the example files in each directory to for specific examples.

## TODO

- [ ] More in depth examples



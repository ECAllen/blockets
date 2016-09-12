#! /usr/bin/env bash

# Example of a build script

for dir in ${SRC} ${CLIENT_SRC} 
do
	pushd ${dir}

	echo ""
	echo "==========================="
	echo "${dir}"
	echo "version control sync"
	echo "==========================="
	echo ""

	git commit -a

	git push origin master

	popd
done

echo ""
echo "==========================="
echo "${CLIENT_SRC}"
echo "Building ..."
echo "==========================="
echo ""

pushd ${CLIENT_SRC}

# put build commands here

popd


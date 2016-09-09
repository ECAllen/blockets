#! /usr/bin/env bash

for dir in ${CLIENT_SRC} ${LEDGER_SERVER_SRC} ${LEDGER_ACCOUNTS_SRC}
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
echo "compiling clojurescript"
echo "with lein"
echo "==========================="
echo ""

pushd ${CLIENT_SRC}

lein clean

lein cljsbuild once min
 
popd

echo ""
echo "==========================="
echo "${LEDGER_SERVER_SRC}"
echo "compiling clojure"
echo "with lein"
echo "==========================="
echo ""

# install the model to take care of checkouts for server
pushd ${LEDGER_MODEL_SRC}

lein clean 

lein install

popd

pushd ${LEDGER_SERVER_SRC}

lein clean

lein ring uberjar

popd

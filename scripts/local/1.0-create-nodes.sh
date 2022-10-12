#!/bin/bash
mkdir devnet && cd devnet

mkdir node1 node2 node1/keystore
cp -r ../keystore/ node1/keystore/
cp -r ../keystore2/ node2/keystore/


# mkdir node1 node2
cd node1 && echo 'd321k127' > password.txt
cd ../node2 && echo 'd321k127' > password.txt


# create accounts for node 
# cd ../
# geth --datadir node2 account new --password node1/password.txt 


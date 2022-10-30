#!/bin/bash

mkdir devnet
mkdir devnet/node1 devnet/node2 devnet/node3

cp -R keystore devnet/node1/keystore
cp -R keystore2 devnet/node2/keystore


# create accounts for node 
# cd ../
# geth --datadir node2 account new --password node1/password.txt 


#!/bin/bash
mkdir devnet && cd devnet

mkdir node1
# mkdir node1 node2
 cd node1 && echo 'test password' > password.txt

# create accounts for node
# cd ../
# geth --datadir devnet/node1 account new --password devnet/node1/password.txt | grep -Eo '0[xX][0-9a-fA-F]+'  >>  devnet/node1/account.txt


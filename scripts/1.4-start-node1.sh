#!/bin/bash

BOOT_NODE=$(<bootnode.txt)
PORT=30306

echo $BOOT_NODE
echo 'd321k127' > devnet/node1/password.txt

../build/bin/geth \
--datadir devnet/node1 \
--syncmode full \
--port $PORT \
--bootnodes $BOOT_NODE \
--networkid 10028 \
--http --http.addr 0.0.0.0 \
--http.api admin,eth,miner,net,txpool,personal,web3 \
--allow-insecure-unlock \
--http.corsdomain "*" \
--http.vhosts "*" \
--http.port 18545 \
--unlock 0x513b8Ab97df9f4D33C50463f1704598D2e74d6f7 \
--authrpc.port 18551 \
--password devnet/node1/password.txt \
--mine console
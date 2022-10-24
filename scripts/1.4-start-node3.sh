#!/bin/bash

BOOT_NODE=$(<bootnode.txt)
PORT=30308

echo $BOOT_NODE

../build/bin/geth \
--datadir devnet/node3 \
--syncmode full \
--port $PORT \
--bootnodes $BOOT_NODE \
--networkid 10028 \
--http --http.addr 0.0.0.0 \
--http.api admin,eth,miner,net,txpool,personal,web3,debug \
--allow-insecure-unlock \
--http.corsdomain "*" \
--http.vhosts "*"
#!/bin/bash

BOOT_NODE=$(<bootnode.txt)
PORT=30307

echo $BOOT_NODE
echo 'd321k127' > devnet/node2/password.txt

../build/bin/geth \
--datadir devnet/node2 \
--port $PORT \
--syncmode full \
--bootnodes $BOOT_NODE \
--networkid 10028 \
--http --http.addr 0.0.0.0 \
--http.api admin,eth,miner,net,txpool,personal,web3 \
--allow-insecure-unlock \
--http.corsdomain "*" \
--http.vhosts "*" \
--http.port 28545 \
--unlock 0x22f6a0f1114b2503b522d347124641c1761faba5 \
--authrpc.port 28551 \
--password devnet/node2/password.txt \
--mine console

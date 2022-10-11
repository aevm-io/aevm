#!/bin/bash

BOOT_NODE=$(<bootnode.txt)
PORT=30306

 echo $BOOT_NODE

 echo 'd321k127' > devnet/node1/password.txt

../build/bin/geth --datadir devnet/node1 --port $PORT --bootnodes $BOOT_NODE  --networkid 123454321 --unlock 0x221fB65CdB12Cc5eC0f9a2AfEe52D6c5CeF2B8bb --password devnet/node1/password.txt



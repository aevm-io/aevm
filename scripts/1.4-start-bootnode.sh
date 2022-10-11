#!/bin/bash

PORT=30305
HOST=127.0.0.1:0

ADDRESS=$(../build/bin/bootnode -nodekey boot.key -writeaddress
)

echo enode://$ADDRESS@$HOST?discport=$PORT > bootnode.txt

../build/bin/bootnode -nodekey boot.key -addr :$PORT
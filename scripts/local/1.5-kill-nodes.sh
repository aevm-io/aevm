#!/bin/bash

lsof -i udp:30306 -t | xargs kill -9
lsof -i udp:30307 -t | xargs kill -9
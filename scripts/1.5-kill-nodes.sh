#!/bin/bash

lsof -i udp:30306 -t | xargs kill -9
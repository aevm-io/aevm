#!/bin/bash

lsof -i udp:30305 -t | xargs kill -9
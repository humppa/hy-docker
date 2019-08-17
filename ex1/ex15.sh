#!/bin/sh
echo -n "Input website: "
read website
echo "Searching.."
sleep 1
curl http://$website

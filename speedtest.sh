#!/bin/bash

case $1 in
    config)
    echo "graph_category network"
    echo "graph_title Speedtest"
    echo "graph_args --base 1000 -l 0"
    echo "graph_vlabel Speed (Mb/s)"
    echo "graph_scale no"
    echo "down.label Download"
    echo "down.draw LINE"
    echo "up.label Upload"
    echo "up.draw LINE"
    echo "graph_info Speed Graph"
    exit 0;;
    esac

echo -n "down.value "
awk '/Download:/ {print $2}' /tmp/speedtest.out

echo -n "up.value "
awk '/Upload:/ {print $2}' /tmp/speedtest.out

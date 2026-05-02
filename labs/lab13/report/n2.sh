#!/bin/bash

./n2

case $? in
    0)
        echo "равно нулю";;
    1)
        echo "больше нуля";;
    2)
        echo "меньше нуля";;
esac

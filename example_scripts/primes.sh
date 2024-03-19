#!/bin/bash

function isPrime() {
    echo $1 $2

    if [ $2 -ge $1 ]; then 
        return 0
    fi

    if [ $(( $1 % $2 )) -eq 0 ]; then
        return 1
    else
        isPrime $1 $(( $2 + 1 ))
        return $?
    fi
}

isPrime $1 2 && echo Prime || echo Composite
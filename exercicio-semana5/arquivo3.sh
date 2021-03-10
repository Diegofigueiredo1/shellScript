#!/bin/bash

a=$1 b=$2 c=$3

$(ls ${a} ${b} ${c} 2> erro.log > log.log)

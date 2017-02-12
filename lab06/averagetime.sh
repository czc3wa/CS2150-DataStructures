#!/bin/bash

read dictionary
read grid
RUNNING_TIME1=`./a.out $dictionary $grid | tail -1`
RUNNING_TIME2=`./a.out $dictionary $grid | tail -1`
RUNNING_TIME3=`./a.out $dictionary $grid | tail -1`
RUNNING_TIME4=`./a.out $dictionary $grid | tail -1`
RUNNING_TIME5=`./a.out $dictionary $grid | tail -1`
sum=$(($RUNNING_TIME1 + $RUNNING_TIME2 + $RUNNING_TIME3 + $RUNNING_TIME4 + $RUNNING_TIME5))
average=$(($sum / 5))
echo ${average}
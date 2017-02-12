#!/bin/bash

clang++ counter.cpp
echo 'enter the exponent for counter.cpp:'
read e
iterate=5
q="quit"
if [[ $e == "$q" ]] ; then
	exit 1
else
	summ=0
	for (( i=1; i<iterate+1; i++ )) ; do
		echo "Running iteration ${i}..."
		RUNNING_TIME=`./a.out $e | tail -1`
		summ=$(($summ + $RUNNING_TIME))
		echo "time taken: ${RUNNING_TIME} ms"
	done
fi
echo "5 iterations took ${summ} ms"
average=$(($summ / 5))
echo "Average time was ${average} ms"
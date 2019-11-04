#!/bin/bash
SIZE=65536
while [ $SIZE -lt 67108864 ]; do
	./src/measureSingle -n $SIZE -s 16
	./src/measureSwitch -n $SIZE -s 16
	let SIZE*=2
done
echo "All tests done"
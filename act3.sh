#!/bin/bash

acum=1
i=1

echo "introduce un numero"
read numero

echo "El factorial del numero $numero es; "

while [ $numero -gt 1 ]; do
	acum=$((acum*numero))
	numero=$((numero-1))
done

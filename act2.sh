#!/bin/bash

numero=0
i=0

while [ $numero -lt 1 ] || [ $numero -gt 100 ]; do
	echo "Dame un numero entero de 1 a 100"
	read numero
done

while [ $i -le 10 ]; do
	let rtdo=$numero*$i
	echo $rtdo
	i=$((i+1))
done

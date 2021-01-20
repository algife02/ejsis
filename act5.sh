#!/bin/bash

echo "bienvenido a compras monfort"

saldo=100
compra=0
puedo=100

while [ $puedo -ge 0 ]; do
	read -p "tiene usted $saldo e de saldo. Introduzca su compra: "
	puedo=$((puedo-compra))
	if [ $puedo -ge 0 ]; then
		saldo=$((saldo-compra))
	fi
done

let gasto=$((100-saldo))
echo "no dispone de tanto saldo"
echo "resumen de sus compras: sse gasto $gasto e; le quedan $saldo e"

#!/bin/bash

numero= echo $(($RANDOM%100))
usuario=0
intentos=0

echo "introduce un numero entre 0 y 100"
read usuario

echo "el numero secreto es $numero"

while [ $usuario -ne $numero ]; do
	let multiplo=$usuario%$numero
	let divisor=$numero%$usuario

	if [ $multiplo -eq 0 ]; then
		echo "tu numero es multiplo del numero secreto"
	else
		if [ $divisor -eq 0 ]; then
			echo "tu numero es divisor del numero secreto"
		else
			echo "tu numero no es ni multiplo ni divisor"
		fi
	fi

	intentos=$((intentos+1))
	echo "introduce un numero entre 0 y 100"
	read usuario
done

let puntos=$((100-intentos))
echo "has acertado el numero en $intentos; tienes $puntos"


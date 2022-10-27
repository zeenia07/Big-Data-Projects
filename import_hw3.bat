#!/bin/bash
for dataFileSuffix in {A..Z}
do

file_loc="C:/Program Files/MongoDB/Server/5.0/NYSE/NYSE_daily_prices_$dataFileSuffix.csv"
	echo $file_loc
	mongoimport --db=nysedb --type=csv --collection=nysecoll --headerline --file="$file_loc"

done
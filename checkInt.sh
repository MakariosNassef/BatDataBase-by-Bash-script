#!/bin/bash

if ! [[ $val =~ ^[0-9]+$ ]]; then
	echo "error: Not a number" >&2
else
	if [[ $((i + 1)) -eq $num_col ]]; then
		echo -n "$val" >>$dbtable.data
		echo "" >>$dbtable.data
		out=false
	fi

	if [[ $((i + 1)) -lt $num_col ]]; then
		echo -n "$val" >>$dbtable.data
		echo -n ":" >>$dbtable.data
		out=false
	fi
fi

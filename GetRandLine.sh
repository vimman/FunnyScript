INPUT=$1
head -$((${RANDOM} % `wc -l < $INPUT` + 1)) $INPUT | tail -1

#!/bin/bash
length=`soxi -D $1`
first_part_start=0
first_part_end=$3
second_part_start=$3

sox $1 part1.mp3 trim $first_part_start $first_part_end
sox $1 part2.mp3 trim $second_part_start $length

sox -n -r 44100 -c 2 silence.mp3 trim 0.0 1.0

sox part1.mp3 silence.mp3 $2 silence.mp3 part2.mp3 result.mp3
rm -f part1.mp3
rm -f part2.mp3
rm -f silence.mp3
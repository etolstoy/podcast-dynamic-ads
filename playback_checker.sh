#!/bin/bash

track_id=$1
token=$2
expected_playback_count=$3
update_time_in_seconds=$4


if [ -z $track_id ]
then
    echo 'pass track_id as first argument'
    exit -1;
fi

if [ -z $token ]
then
    echo 'pass token as second argument'
    exit -1;
fi

if [ -z $expected_playback_count ]
then
    echo 'pass expected playback count as third argument'
    exit -1;
fi

if [ -z $update_time_in_seconds ]
then
    echo 'pass update time in seconds as fourth argument'
    exit -1;
fi

current_playback_count=0

while [ $current_playback_count -le $(($expected_playback_count-1)) ]
do
    current_playback_count=`./get_track_field_value.sh $track_id $token "playback_count"`
    echo "current count $current_playback_count"
    result=$(($expected_playback_count-$current_playback_count))
    echo "$result more expected"
    sleep $update_time_in_seconds
done

echo "ready to remove ad"
exit 0;

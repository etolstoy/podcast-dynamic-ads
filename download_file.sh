#!/bin/bash

client_id=`printenv SOUNDCLOUD_CLIENT_ID`
result=`curl --request GET \
  --url "https://api.soundcloud.com/tracks/$1/download?client_id=$client_id" -L --output $2`
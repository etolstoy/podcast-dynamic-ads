#!/bin/bash
token=`./get_auth_key.sh`

result=`curl --request GET \
  --url "https://api.soundcloud.com/me/tracks?oauth_token=$token"`

echo $result

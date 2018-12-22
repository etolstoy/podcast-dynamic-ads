#!/bin/bash

# echo "Get access_token";

client_id=`printenv SOUNDCLOUD_CLIENT_ID`
client_secret=`printenv SOUNDCLOUD_CLIENT_SECRET`
soundcloud_password=`printenv SOUNDCLOUD_PASSWORD`
soundcloud_login=`printenv SOUNDCLOUD_LOGIN`

result=`curl --request POST \
  --url "http://api.soundcloud.com/oauth2/token?client_id=$client_id&client_secret=$client_secret&grant_type=password&username=$soundcloud_login&password=$soundcloud_password"`

# echo $result
access_token=(`echo $result | tr ',' ' '`)
access_token_value=(`echo $access_token | tr '"' ' '`)

echo ${access_token_value[3]}

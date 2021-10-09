#! /bin/bash
STATUS=$(nmcli general status | tail -n 1 | awk '{print $1};')

if [[ $STATUS = 'connected' ]]
  then
    echo $(nmcli connection show --active | tail -n 1 | awk '{print $1;}')
  else
    echo 'n/a'
fi

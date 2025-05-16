#!/bin/sh

if [ ! -z $SSH_AUTH_SOCK ]
then
  echo "setting ssh agent socket"
  ssh-agent -a $SSH_AUTH_SOCK
else
  ssh-agent
fi

sleep infinity
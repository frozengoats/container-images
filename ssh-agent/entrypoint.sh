#!/bin/sh

if [ ! -z $SSH_AUTH_SOCK ]
then
  echo "setting ssh agent socket"
  ssh-agent -a $SSH_AUTH_SOCK
  chmod 666 $SSH_AUTH_SOCK
else
  ssh-agent
fi

touch /complete
sleep infinity
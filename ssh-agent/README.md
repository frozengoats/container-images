# ssh-agent

ssh-agent will run an ssh agent in the container.  in order to communicate with the SSH agent, you must set the `SSH_AUTH_SOCK` environment variable in the container, as well as then bind mount a socket file from the host, to that location.
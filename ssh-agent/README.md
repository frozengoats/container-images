# ssh-agent

ssh-agent will run an ssh agent in the container.  in order to communicate with the SSH agent, you must set the `SSH_AUTH_SOCK` environment variable in the container, as well as then bind mount a socket file from the host, to that location.

this is not for production use, mostly serves as a test container.  if `COMPLETION_FILE` environment variable is set, then a file by this identifier will be written.

start the container using the same uid/gid as your host system, this will allow you to access the socket file
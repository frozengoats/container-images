# ssh-agent

ssh-agent will run an ssh agent in the container.  in order to communicate with the SSH agent, you must set the `SSH_AUTH_SOCK` environment variable in the container, as well as then bind mount a socket file from the host, to that location.

this is not for production use, mostly serves as a test container.  writes `/complete` when ssh-agent is ready.
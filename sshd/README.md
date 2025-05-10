# sshd

this container is not meant to be a production-ready ssh server solution, but rather serves as a somewhat configurable test container for use in ssh client testing.

# usage

create a bind or volume mount to `/etc/config`, this is where the container will look for host keys on startup.  if none exist, they will be generated.

for user specific configuration, a file named `config.sh` with execute permission, should be placed in the `/etc/config` mount.  when the container starts, it will execute that script each time.  this script can be used to perform useful operations such as creating user accounts and/or furnishing ssh keys.
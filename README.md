# Ubuntu docker container running a tiny cloud-init systemd service

This image provides a simple way of faking a cloud-init `systemd` service. I've
developped that mainly for quickly validating shell scripts sent as `user-data`
to cloud-init services.

As this is running `systemd`, it can be used to develop/check systemd services
interactions and dependencies when hacking your deployment scripts (but it only
supports `Ubuntu 16.04 Xenial` packages as this is the base distro).


## Limits

This *only* support `user-data` shell scripts.

Other `cloud-init` services such as SSH public keys management, `apt` repositories
or packages installation, hostname configuration, or YAML-based cloud-init `user-data`
files are not supported.


## Build

In order to build this container image instead of using the one on the Docker Hub,
you can use the following command from the root directory of this repository:

```bash
docker build -t lionelnicolas/tiny-cloud-init .
```


## License

This is licensed under the Apache License, Version 2.0. Please see [LICENSE](https://github.com/lionelnicolas/docker-tiny-cloud-init/blob/master/LICENSE)
for the full license text.

Copyright 2016 Lionel Nicolas

# hello-docker-freebsd: Example Docker setup for FreeBSD

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c "docker run library/debian echo 'Hello World'"
Hello World
```

# REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* [VirtualBox](https://www.virtualbox.org)

# NOTES

Docker support with FreeBSD is nascent. Docker from FreeBSD hosts lacks support for alt-libc containers, so FreeBSD and Debian containers may work from FreeBSD hosts, but not containers for library/busybox:uclibc nor library/alpine (musl).

Docker relies on the Linux kernel to do its magic, so while Docker is able to manipulate non-Linux containers, these must be run from a compatible Docker host. In other words, FreeBSD containers must be run from FreeBSD hosts. Fortunately, Vagrant can help automate the setup of a FreeBSD VM for non-BSD machines, so that you end up being able to run FreeBSD containers, on top of FreeBSD, on top of Vagrant, on top of Linux/macOS/Windows/etc.

Vagrant is a powerful tool for managing virtual machines, but it has fallen out of favor with the recent uprising of Docker + Linux deployments. So hello-docker-freebsd provides an example of a fully configured Vagrant box with FreeBSD guest + Docker automatically installed.

Unfortunately, HashiCorp's Vagrant Cloud authentication system is borked, so I can't publish this box at the moment. However, you can clone this repository and `vagrant up` in the meantime.
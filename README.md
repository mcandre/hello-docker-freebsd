# hello-docker-freebsd: Example Docker setup for FreeBSD

# ABOUT

Minimal configuration for running FreeBSD Docker containers, either from native FreeBSD hosts or even from GNU Linux, macOS, Windows, etc.

# EXAMPLE (native FreeBSD host)

```console
$ sh bootstrap.sh
$ docker run auchida/freebsd echo 'Hello World!'
Hello World!
```

# EXAMPLE (non-FreeBSD host)

```console
$ vagrant up
$ vagrant ssh -c "docker run auchida/freebsd echo 'Hello World!'"
Hello World!
```

By using a Vagrant box for a FreeBSD VM, users can enjoy manipulating FreeBSD containers from non-BSD hosts, such as Linux, macOS, Windows, etc.

# REQUIREMENTS (native FreeBSD host)

* a configured [zroot](https://www.freebsd.org/doc/handbook/zfs-zfs.html)

# REQUIREMENTS (non-FreeBSD host)

* [Vagrant](https://www.vagrantup.com)
* A VM provider, such as [VirtualBox](https://www.virtualbox.org), [VMware](https://www.vmware.com), or [libvirt](https://libvirt.org)

# NOTES

Docker relies on the (GNU) Linux kernel to do its magic, so while Docker is able to manipulate non-Linux containers, these must be run from a compatible Docker host. In other words, FreeBSD containers must be run from FreeBSD hosts. Fortunately, Vagrant can help automate the setup of a FreeBSD VM for non-BSD machines, so that you end up being able to run FreeBSD containers, on top of FreeBSD, on top of Vagrant, on top of Linux/macOS/Windows/etc.

Docker support with FreeBSD is nascent. Docker from FreeBSD hosts lacks support for alt-libc containers, so FreeBSD and Debian containers may work from FreeBSD hosts, but not containers for library/busybox:uclibc nor library/alpine (musl). So in the event that you are using a native FreeBSD host, and want to run alt-libc containers, you will want to setup a VM with GNU Linux + Docker, such as [pulsesecure/alpine-3.3-x86_64-docker](https://app.vagrantup.com/pulsesecure/boxes/alpine-3.3-x86_64-docker).

Similar to the Linux vs. FreeBSD kernel distinction that requires virtualization to run cross-containers, within the BSD UNIX world there are several competing distributions, including FreeBSD, OpenBSD, NetBSD, and others. Most of the BSD's are not kernel compatible, so each would require virtualization in order to run BSD containers for applications compiled against a different specific BSD flavor. The Vagrant FreeBSD + Docker box can help to run FreeBSD containers from other BSD's, assuming Vagrant and an appropriate VM provider like VirtualBox can be configured. There are plans to produce Vagrant boxes for the other BSD's as well, but there are enough challenges with just FreeBSD, so it's up to the community to provide support for the even more esoteric BSD distributions.

Vagrant is a powerful tool for managing virtual machines, but it has fallen out of favor with the recent uprising of Docker + Linux deployments. Docker containers provide standard, relatively performant deployment units for applications, specifically Linux applications. However, the Docker system can model non-Linux applications as well, as long as a suitable host OS is used. In other words, Docker FreeBSD containers are possible as well, by running Docker from a native FreeBSD installation, or a FreeBSD virtual machine on top of some other host operating system. So hello-docker-freebsd provides an example of a fully configured Vagrant box with a FreeBSD guest + Docker automatically installed, to unlock the potential of FreeBSD Docker containers, even on non-FreeBSD systems!

Unfortunately, HashiCorp's Vagrant Cloud authentication system is borked, so I can't publish this box at the moment. However, you can clone this repository and `vagrant up` in the meantime.

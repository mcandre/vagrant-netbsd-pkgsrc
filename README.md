# vagrant-netbsd-pkgsrc: a Vagrant box with NetBSD guest + pkgsrc preinstalled

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/vagrant-netbsd-pkgsrc-amd64
* https://app.vagrantup.com/mcandre/boxes/vagrant-netbsd-pkgsrc-i386

# EXAMPLE

```console
$ cd amd64/test
$ vagrant up
$ time vagrant ssh -c "su root -c 'cd /usr/pkgsrc/net/wget && sudo make install' && wget --version"
...
GNU Wget 1.19.2 built on netbsd.
...
real	13m14.833s
user	0m1.926s
sys	0m1.104s
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ sh -c "cd amd64 && make vagrant-netbsd-pkgsrc-amd64.box"
$ sh -c "cd i386 && make vagrant-netbsd-pkgsrc-i386.box"
```

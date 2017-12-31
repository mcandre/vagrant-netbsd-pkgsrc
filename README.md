# vagrant-netbsd-pkgsrc: a Vagrant box with NetBSD guest + pkgsrc preinstalled

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-netbsd-pkgsrc

# EXAMPLE

```console
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

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ make vagrant-netbsd-pkgsrc.box
```

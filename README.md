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

# REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* A VM provider, such as [VirtualBox](https://www.virtualbox.org), [VMware](https://www.vmware.com), or [libvirt](https://libvirt.org)

# EXPORT

```console
$ vagrant destroy -f; vagrant up && vagrant package --output vagrant-netbsd-pkgsrc.box
```

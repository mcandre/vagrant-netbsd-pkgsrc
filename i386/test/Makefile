.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-install

test-boot:
	vagrant up

test-install: test-boot
	vagrant ssh -c "su root -c 'cd /usr/pkgsrc && cvs update -dP && cd /usr/pkgsrc/net/wget && make install clean clean-depends PKG_OPTIONS.python27=-x11' && wget --version"

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata

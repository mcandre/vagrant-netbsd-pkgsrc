#!/bin/sh
ftp ftp://ftp.NetBSD.org/pub/pkgsrc/current/pkgsrc.tar.gz &&
    su root -c 'tar -xzf pkgsrc.tar.gz -C /usr' &&
    rm pkgsrc.tar.gz

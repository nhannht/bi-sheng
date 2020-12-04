#!/usr/bin/env perl

use strict;
use warnings;
use v5.10;

$> != 0 ? die "run as root please" : ();
map {system("$_")}(
"yum install epel-release",
"yum update",
"yum install https://www.snort.org/downloads/snort/snort-2.9.17-1.centos8.x86_64.rpm",
"yum install libdnet",
"ln -s /usr/lib64/libdnet.so.1.0.1 /usr/lib64/libdnet.1",
)

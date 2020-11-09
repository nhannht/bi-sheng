#!/usr/bin/env perl

use strict;
use warnings;
use Env qw(HOME);

############################
## this script setup fish ##
############################
my $fish_url = "https://download.opensuse.org/repositories/shells:/fish:/release:/3/CentOS_8/x86_64/fish-3.1.2-1.11.x86_64.rpm";

my $fish_rpm = ($fish_url =~ m/fish-.*rpm/g)[0];

system "mkdir -p $HOME/rpm-download";
chdir "$HOME/rpm-download";
my @command = (
               "wget $fish_url",
               "yum install pcre-devel",
               "rpm -i $fish_rpm",
               "chsh -s /usr/bin/fish"
           );
my @ret = map {system $_} @command;

my @cmd=("echo 1","echo 2");
map {system $_} ("echo 1","echo 2");

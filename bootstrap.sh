#!/usr/bin/env sh

# Need to use RUBY 2.0!
# rvm.io

wget http://aphyr.com/riemann/riemann-0.2.0.tar.bz2
tar xvfj riemann-0.2.0.tar.bz2
cd riemann-0.2.0
wget http://aphyr.com/riemann/riemann-0.2.0.tar.bz2.md5
md5sum -c riemann-0.2.0.tar.bz2.md5
bin/riemann etc/riemann.config
gem install riemann-client riemann-tools riemann-dash
riemann-dash

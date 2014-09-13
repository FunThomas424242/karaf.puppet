# Karaf module for Puppet #

This module installs Karaf.

## Description

This module can install Karaf in a simple way.

Currently supports:

* Ubuntu 14.04.

## Usage

General install with puppet in a manifest.pp file:

     class { 'karaf':
           user => 'your_local_login',
           karafVersion => '3.0.1',
           tmpDir => '/tmp',
     }


## License
[LGPL v3 ff](http://www.gnu.org/licenses/lgpl-3.0.de.html)


## Contact



## Support


Please log tickets and issues at our [Projects site](https://github.com/FunThomas424242/karaf.puppet)

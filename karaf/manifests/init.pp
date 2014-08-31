# == Class: karaf
#
# Full description of class karaf here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { karaf:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class karaf {

	$destination= '/home/huluvu424242/Download/apache-karaf-3.0.1.tar.gz'
	$src='http://mirror.dkd.de/apache/karaf/3.0.1/apache-karaf-3.0.1-src.tar.gz'

	file { "/home/huluvu424242/Download":
	    ensure => directory,
	    mode => 666,
#	    owner => www-data,
#	    group => www-data
	}

	wget::fetch { $src:
	  destination =>$destination,
	  timeout     => 0,
	  verbose     => false,
	  require 	=> file["/home/huluvu424242/Download"],
	}


}

include karaf

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


# needs root permissions
#$packages = [ 'archive' ]
#package { $packages:
#	ensure => installed,
#}


class karaf {
	$homeDir = "/home/huluvu424242"
	$libName = 'apache-karaf-3.0.1'
	$targetDir =  "$homeDir/$libName"
        $tmpDir = '/tmp'
	$srcURL = 'http://mirror.lwnetwork.org.uk/APACHE/karaf/3.0.1/apache-karaf-3.0.1.tar.gz'

	file { $targetDir:
	    ensure => directory,
	    mode => 666,
#	    owner => www-data,
#	    group => www-data
	}

	archive { $libName:
	  ensure => present,
	  url    => $src,
	  src_target => $tmpDir,
	  target => $targetDir,
	  checksum => false,
          require => File[$targetDir],
	  #require => [File[$targetDir], Package['archive']],
	}

	file { $starterFile:
		ensure => present,
		path => "$homeDir/Schreibtisch/karaf.desktop",
		content => "[Desktop Entry]
Type=Application
Name=Karaf 3.0.1
Comment=Apache Karaf OSGi Framework
Exec=lxterminal -e bin/karaf
Terminal=false
StartupNotify=false
Categories=Development;IDE;Java;
Path=/home/huluvu424242/apache-karaf-3.0.1
",
	}



}

include karaf

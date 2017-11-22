 class profile::base {
  file { [ '/CCS' , '/LSST' ] :
   ensure => directory,
   mode => '1764',
  }
  user { 'admin':
    ensure => present,
    }
  include profile::ssh_server
 }

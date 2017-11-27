class profile::base {

  file { [ '/CCS' , '/LSST' , '/var/log/ccs' , '/etc/ccs' ] :
    ensure => directory,
    mode => '1764',
  }
  user { 'admin':
    ensure => present,
  }
  include profile::ssh_server
}

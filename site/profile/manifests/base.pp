class profile::base {

  file { [ '/CCS' , '/LSST' , '/var/log/ccs' , '/etc/ccs' ] :
    ensure => directory,
    mode => '1764',
  }
  file_line { 'SELINUX=permissive':
    path  => '/etc/selinux/config',
    line => 'SELINUX=permissive'
    match => '^SELINUX\=*',
  }
  user { 'admin':
    ensure => present,
  }
  include profile::ssh_server
}

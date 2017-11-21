class profile::app {

  file{ '/users/home/' :
    ensure => directory,
    mode => '2764',
    owner => 'root',
  }

  user{ 'lsst-daq':
    ensure => 'present',
    uid => '7777' ,
    gid => '666',
    home => '/users/home/lsst-daq',
  }
}

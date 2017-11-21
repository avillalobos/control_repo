class profile::app {

  file{ ['/users/' , '/users/home'] :
    ensure => directory,
    mode => '2764',
    owner => 'root',
  }

  group{'lsst':
    ensure => 'present',
    gid => '666',
  }

  user{ 'lsst-daq':
    ensure => 'present',
    uid => '7777' ,
    gid => '666',
    home => '/users/home/lsst-daq',
    managehome => 'true'
  }
}

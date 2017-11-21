class profile::db{
  package{'mariadb-server':
    ensure => present,
  }
  service{'mariadb':
    ensure => 'running',
    enable => 'true',
  }
}

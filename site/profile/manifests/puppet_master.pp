class profile::puppet_master {

	exec { 'puppet-module-manager':
		command => 'puppet module install rcoleman/puppet_module',
		path => ['/opt/puppetlabs/bin/','/bin'],
	}

	module { 'puppetlabs/vcsrepo':
		ensure => present,
		require => Exec['puppet-module-manager']
	}
}

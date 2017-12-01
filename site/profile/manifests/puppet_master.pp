class profile::puppet_master {
	module { 'puppetlabs/vcsrepo':
		ensure => present,
	}
}

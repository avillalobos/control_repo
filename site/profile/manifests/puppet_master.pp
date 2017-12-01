class profile::puppet_master {

	exec { 'puppet-git-module':
		command => 'puppet module install puppetlabs/vcsrepo',
		path => ['/opt/puppetlabs/bin/','/bin'],
	}

}

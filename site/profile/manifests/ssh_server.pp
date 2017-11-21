class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCzLpO+lZi124b/V60oJlA/rsMLq39r9sosHs+xn3HO+uwmqsagTZAXkB+D8UFcs4oHwB7skPvHfG4SrekK8AIBFm1TaJEzdeWmE93mgv/C8Essku1pFdqr5VPWGzZnZGiFEqLgfMfCnpjOMQuQR/PjVZQnsMKUQXtilp4iULe2YhjWqNH5O5/wa9Arg/uRZF5oOyOlV55B8sfwPlH4bFnIxmZopY2xmqny9J3qbLl4amnE69pSejfx2sMCieB+BBNdjFdk2IxJYW1xyBupKbKFECU8znTP6N3AN+71VzD6n2lf9bMnZjV6BU7ukkUpXXR1iQPPyBGteMJdMTuteoav root@master.puppet.vm',
	}
}

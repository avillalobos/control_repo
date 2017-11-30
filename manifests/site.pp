node default {
	file { '/root/README' :
		ensure => file,
		content => "Welcome to ${fqdn}, this is a default server, uptime about ${system_uptime}\n",
	}
}

node /^master/ {
	include role::master_server
}

node "antares.lsst.local"{
	include role::master_server
}

node 'app.puppet.vm' {
	include role::app_server
}

node 'minetest.puppet.vm' {
	include role::minecraft_server
}

node /^web/ {
	include role::app_server
}

node /^db/ {
	include role::db_server
}

node /^ts\-sw\-env/{
	include role::ts-dev-env-basic
}

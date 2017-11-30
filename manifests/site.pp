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

<<<<<<< HEAD
node 'ts-sw-env-test1.puppet.vm'{
=======
node /^ts-sw-env/{
>>>>>>> parent of 310fe9c... escape character for dash
	include role::ts-dev-env-basic
}

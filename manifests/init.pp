Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

import 'db.pp'
import 'proxy.pp'
import 'sentry.pp'

class base {
	exec{'apt-get update --fix-missing': }
	package{'postgresql':
		ensure => 'present',
	}
	include apt, puppet, db, proxy, sentry
}

class { 'apt':
  always_apt_update    => true,
  disable_keys         => undef,
  proxy_host           => false,
  proxy_port           => '8080',
  purge_sources_list   => false,
  purge_sources_list_d => false,
  purge_preferences_d  => false
}

include base
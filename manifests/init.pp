Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/", "/usr/local/bin/", "/usr/local/sbin/" ] }

import 'apt.pp'
import 'db.pp'
import 'proxy.pp'
import 'sentry.pp'

class base {
	exec{'apt-get update --fix-missing': }
	package{'postgresql':
		ensure => 'present',
	}
	include apt, supervisor, puppet, db, proxy, sentry
}

include base
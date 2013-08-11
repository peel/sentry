Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/", "/usr/local/bin/", "/usr/local/sbin/" ] }

# import 'sentry.pp'

class base {
	exec{'apt-get update --fix-missing': }
	package{'postgresql':
		ensure => 'present',
	}
	include apt, supervisor, puppet, db, proxy, sentry
}

class { 'sentry':
  password       => 'sentry',
  path           => '/var/sentry',
  install_method => 'default',
  require        => [Class['supervisor'], Class['db'],],
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
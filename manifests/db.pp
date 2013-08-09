class db{
	class {'postgresql': }
	class {'postgresql::server': }
	
	postgresql::db {'sentry':
		user => 'sentry',
		password => 'sentry',
		grant => 'all',
	}	
}
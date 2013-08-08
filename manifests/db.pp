class db {
	include postgresql::server

	postgresql::db {'sentry':
		user => 'sentry',
		password => 'sentry',
		grant => 'all',
	}	
}
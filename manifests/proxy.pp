class proxy{
	
	class{'nginx': }

	# nginx::resource::vhost{'errors.nordea.com':
	# 	ensure => present,
	# 	proxy => 'errors.nordea.com',
	# }

	nginx::resource::upstream{'errors':
		ensure => present,
		members => ['localhost:9000',],
	}

}
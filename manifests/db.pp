class db{

	class { 'postgresql': }

	class { 'postgresql::server':
	  config_hash => {
	    'ip_mask_deny_postgres_user' => '0.0.0.0/32',
	    'ip_mask_allow_all_users'    => '0.0.0.0/0',
	    'listen_addresses'           => '*',
	    # 'ipv4acls'                   => ['hostssl all johndoe 192.168.0.0/24 cert'],
	    # 'manage_redhat_firewall'     => true,
	    'manage_pg_hba_conf'         => false,
	    # 'postgres_password'          => 'postgres',
	  },
	  require => [Class['postgresql']],
	} 

	postgresql::db {'sentry':
		user => 'sentry',
		password => 'sentry',
		grant => 'all',
	}	

}
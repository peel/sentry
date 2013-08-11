class puppet::install{
	package{"puppet":
		ensure => present,
		notify => Class["puppet::config"],
	}
}
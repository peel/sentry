class puppet::install{
	package{"puppet":
		ensure => present,
		notify => Clas["puppet::config"],
	}
}
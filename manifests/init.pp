class base {
	import 'db.pp'
	import 'proxy.pp'
	include sudo, ssh, puppet, db, proxy
}

include base
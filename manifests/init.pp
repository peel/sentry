class base {
	include sudo, ssh, puppet, db, proxy
}

# node sentry {
# 	include base, db, proxy 
# }
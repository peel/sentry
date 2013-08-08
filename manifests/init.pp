class base {
	include sudo, ssh, puppet	
}

node sentry.nordea.com{
	include base, db, proxy 
}
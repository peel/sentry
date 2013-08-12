class { 'sentry':
  password       => 'sentry',
  path           => '/var/sentry',
  install_method => 'default',
  require        => [Class['supervisor'], Class['db'],],
}
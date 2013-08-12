class { 'apt':
  always_apt_update    => true,
  disable_keys         => undef,
  proxy_host           => '10.0.174.252',
  proxy_port           => '3128',
  purge_sources_list   => false,
  purge_sources_list_d => false,
  purge_preferences_d  => false
}
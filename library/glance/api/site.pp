class { 'glance::api':
  verbose           => $verbose,
  debug             => $debug,
  bind_host         => $bind_host,
  auth_type         => 'keystone',
  auth_port         => '35357',
  auth_host         => $keystone_host,
  keystone_tenant   => 'services',
  keystone_user     => 'glance',
  keystone_password => $glance_user_password,
  sql_connection    => $sql_connection,
  enabled           => $enabled,
  registry_host     => $registry_host,
  use_syslog        => $use_syslog,
  syslog_log_facility => $syslog_log_facility,
  syslog_log_level    => $syslog_log_level,
  image_cache_max_size => $glance_image_cache_max_size,
}

class logrotate::rsyslog {
  # For rsyslog, to avoid duplication between rsyslog and individual logrotate configs
  #
  file { '/etc/logrotate.d/rsyslog':
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/logrotate/rsyslog',
  }

}

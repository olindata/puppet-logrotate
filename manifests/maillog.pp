class logrotate::maillog {
  # For rotating mail.log
  #
  file { '/etc/logrotate.d/maillog':
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/logrotate/maillog',
  }

  ## Cron Entry for mail.log rotation
  #
  file { '/etc/cron.daily/maillog':
    ensure => 'absent',
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/logrotate/cron.daily/maillog',
  }

}

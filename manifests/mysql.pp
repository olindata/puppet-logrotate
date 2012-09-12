class logrotate::mysql {
  # For rotating mysql.log and mysql-slow.log
  #
  file { '/etc/logrotate.d/mysql-server':
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///logrotate/mysql-server',
  }

}
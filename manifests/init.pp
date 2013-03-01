# logrotate.pp
#
# Configures logrotate.

class logrotate {

  # rotate logs
  package { 'logrotate':
    ensure => 'present'
  }

  # The configuration files for all logrotate stuff we need, but the configuration file
  # gets installed after the package, so it overwrites

  # Main logrotate config
  #
  file { '/etc/logrotate.conf':
      ensure    => 'file',
      mode      => 0644,
      owner     => 'root',
      group     => 'root',
      require    => Package['logrotate'],
      source    => 'puppet:///modules/logrotate/logrotate.conf',
  }

  include logrotate::maillog
  include logrotate::mysql
  include logrotate::rsyslog


}

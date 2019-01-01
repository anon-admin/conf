# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::config::cron
class conf::config::cron() inherits conf::install::cron {


  file { '/etc/cron.daily':
    require => Package['cron'],
  }

}

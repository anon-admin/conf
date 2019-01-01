# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::service::cron
class conf::service::cron() inherits conf::config::cron {
  service { 'cron':
    require => File['/etc/cron.daily'],
  }
}

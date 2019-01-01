# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::cron
class conf::setup::cron() inherits conf::service::cron {

  Package['cron'] {
    ensure => latest, }

  File['/etc/cron.daily'] {
    ensure  => directory,
  }

  Service['cron'] {
    ensure  => running,
    enable  => true,
  }

}

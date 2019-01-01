# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::apt
class conf::setup::apt() inherits conf::config::apt {
  Package['apt'] {
    ensure => latest,
  }

  File['/etc/cron.daily/apt'] {
    ensure  => present,
  }

  File['/etc/apt/apt.conf.d/02periodic'] {
    source  => "puppet:///modules/conf/apt_conf_${::lsbdistcodename}_02periodic",
  }
}

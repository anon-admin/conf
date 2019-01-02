# Base class defining all commons for inherited ones
#
# @summary include common files of Ubuntu OS
#
# @example
#   include conf
class conf inherits conf::lsbdist {

  $lsbdistcodename = $conf::lsbdist::codename

  # depending on OS version, include default service system
  case $lsbdistcodename {
    'wheezy' : { contain conf::sysvinit }
    'trusty' : { contain conf::upstart }
    default  : { contain conf::systemd }
  }

  include conf::cron
  include conf::apt
  include conf::wget
  include conf::curl
  include conf::git
  include conf::expect
}

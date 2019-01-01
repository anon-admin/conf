# Base class defining all commons for inherited ones
#
# @summary include common files of Ubuntu OS
#
# @example
#   include conf
class conf {

  #notify { "lsbdistcodename=${::lsbdistcodename}": }
  if ($::operatingsystem == 'Debian') {
    include stdlib
    $lsbdistcodename = fact('os.release.major') ? {
      '7' => 'wheezy',
      '8' => 'jessie',
      '9' => 'stretch'
    }
  } else {
    $lsbdistcodename = $::lsbdistcodename
  }

  # depending on OS version, include default service system
  case $lsbdistcodename {
    'wheezy' : { contain conf::sysvinit }
    'trusty' : { contain conf::upstart }
    default  : { contain conf::systemd }
  }

  include conf::cron
  include conf::apt
  include conf::wget
  include conf::git
  include conf::expect
}

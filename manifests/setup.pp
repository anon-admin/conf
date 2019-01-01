# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup
class conf::setup() inherits conf {
  # depending on OS version, include default service system
  case $::lsbdistcodename {
    'wheezy' : { contain conf::setup::sysvinit }
    default  : { contain conf::setup::systemd }
  }

  contain conf::setup::cron
  contain conf::setup::apt
  contain conf::setup::wget
  contain conf::setup::git
  contain conf::setup::expect
}

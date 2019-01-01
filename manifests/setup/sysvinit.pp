# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::sysvinit
class conf::setup::sysvinit() inherits conf::config::sysvinit {
  Package['sysvinit'] {
    ensure => latest,
  }
}

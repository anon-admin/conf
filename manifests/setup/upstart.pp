# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::upstart
class conf::setup::upstart() inherits conf::config::upstart {
  Package['upstart'] {
    ensure => latest,
  }
}

# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::systemd
class conf::setup::systemd() inherits conf::config::systemd {
  Package['systemd'] {
    ensure => latest,
  }
}

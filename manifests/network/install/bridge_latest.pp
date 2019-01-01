# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::network::install::bridge_latest
class conf::network::install::bridge_latest inherits conf::network::install::bridge {
  Package["bridge-utils"] {
    ensure => latest,
  }
}

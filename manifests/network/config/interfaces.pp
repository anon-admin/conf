# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::network::config::interfaces
class conf::network::config::interfaces {
  file { '/etc/network/interfaces':
    mode  => '0444',
    owner => root,
    group => root,
  }
}

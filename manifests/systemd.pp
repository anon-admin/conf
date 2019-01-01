# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::systemd
class conf::systemd () inherits conf {
  include conf::config::systemd
}

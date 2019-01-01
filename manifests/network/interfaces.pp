# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::network::interfaces
class conf::network::interfaces {

  include conf::network::install::bridge_latest
  include conf::network::config::interfaces

}

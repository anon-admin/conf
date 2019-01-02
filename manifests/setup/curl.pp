# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::curl
class conf::setup::curl() inherits conf::config::curl {
  Package['curl'] {
    ensure => latest,
  }
}

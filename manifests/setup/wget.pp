# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::wget
class conf::setup::wget() inherits conf::config::wget {
  Package['wget'] {
    ensure => latest,
  }
}

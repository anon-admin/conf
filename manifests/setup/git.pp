# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::git
class conf::setup::git() inherits conf::config::git {
  Package['git'] {
    ensure => latest,
  }
}

# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::setup::expect
class conf::setup::expect() inherits conf::install::expect {
  Package['expect'] {
    ensure => latest,
  }
}

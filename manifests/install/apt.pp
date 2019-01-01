# define base of apt contents
#
# @summary define base of apt contents
#
# @example
#   include conf::install::apt
class conf::install::apt {

  file { '/etc/apt/sources.list': }

  package { 'apt': }
}

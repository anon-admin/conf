# define base of systemd contents
#
# @summary define base of systemd contents
#
# @example
#   include conf::install::systemd
class conf::install::systemd {
  package { 'systemd': }
}

# define base of sysvinit contents
#
# @summary define base of sysvinit contents
#
# @example
#   include conf::install::sysvinit
class conf::install::sysvinit {
  package { 'sysvinit': }
}

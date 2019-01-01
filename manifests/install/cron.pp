# define base of cron contents
#
# @summary define base of cron contents
#
# @example
#   include conf::install::cron
class conf::install::cron {
  package { 'cron': }
}

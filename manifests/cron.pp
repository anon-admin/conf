# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::cron
class conf::cron () inherits conf {
  include conf::service::cron
}

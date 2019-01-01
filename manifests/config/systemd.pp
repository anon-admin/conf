# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::config::systemd
class conf::config::systemd() inherits conf::install::systemd {


  exec { '/bin/systemctl daemon-reload':
    cwd         => '/lib/systemd',
    refreshonly => true,
  }
  Package['systemd'] -> Exec['/bin/systemctl daemon-reload']
  Exec['/bin/systemctl daemon-reload'] -> Service<| |>
}

# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::config::apt
class conf::config::apt() inherits conf::install::apt {




  if ($::operatingsystem == 'Debian') {
    include stdlib
    $lsbdistid = downcase( $::operatingsystem )
    exec { "/usr/bin/apt-get -q -y --force-yes -o DPkg::Options::=--force-confold install ${lsbdistid}-archive-keyring":
      before   => Package['apt'],
      cwd      => '/tmp',
      provider => shell,
      unless   => "/usr/bin/dpkg ${lsbdistid}-archive-keyring",
    }
  }

  file { '/etc/cron.daily/apt':
    require => Package['apt', 'cron'],
  }

  include conf::install::cron

  file { '/etc/apt/apt.conf.d/02periodic':
    owner   => root,
    group   => root,
    mode    => '0644',
    require => [File['/etc/cron.daily/apt'], Service['cron']],
  }

  include conf::service::cron

  exec { '/usr/bin/apt-get update':
    provider    => shell,
    refreshonly => true,
    user        => root,
    cwd         => '/tmp',
  }

}

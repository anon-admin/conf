class conf::lsbdist {

  if ($::operatingsystem == 'Debian') {
    include stdlib
    $codename = fact('os.release.major') ? {
      '7' => 'wheezy',
      '8' => 'jessie',
      '9' => 'stretch'
    }
  } else {
    $codename = $::lsbdistcodename
  }
  notify { "conf::lsbdist::codename=${conf::lsbdist::codename}": }
}
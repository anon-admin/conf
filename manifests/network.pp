# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include conf::network
class conf::network(
  $has_ipv6 = false,
  $interfaces = ['eth0'],
) inherits conf {

  include conf::network::resolv
  include conf::network::interfaces

  if $has_ipv6 == false {
    class { 'conf::network::sysctl':
      source     => 'noipv6.conf',
      interfaces => $interfaces,
    }
  }

  case $lsbdistcodename {
    'jessie': {
      contain conf::network::dhcpcd
    }
  }
}

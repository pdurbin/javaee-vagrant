# users for server1.greptilian.com
class users {

  user { 'pdurbin':
    ensure     => 'present',
    managehome => true,
  }

  file { '/home/pdurbin':
    ensure => 'directory',
    owner  => 'pdurbin',
    group  => 'root',
    mode   => '0750',
  }

  user { 'supybot':
    ensure     => 'present',
    managehome => true,
  }

  file { '/home/supybot':
    ensure => 'directory',
    owner  => 'supybot',
    group  => 'root',
    mode   => '0755',
  }

}

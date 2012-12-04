class appserver {

  file { '/etc/sysconfig/iptables':
    source => 'puppet:///modules/bucket/etc/sysconfig/iptables',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/root/glassfish-answerfile':
    source => 'puppet:///modules/bucket/root/glassfish-answerfile',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/root/glassfish-install.sh':
    source => 'puppet:///modules/bucket/root/glassfish-install.sh',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  exec { "postgres_init":
    command => '/sbin/service postgresql initdb',
    onlyif => "/usr/bin/test ! -e /var/lib/pgsql/data/PG_VERSION",
  }

}

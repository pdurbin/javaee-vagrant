# for starting services, mostly

class last {

  service { 'postgresql':
    ensure    => running,
    enable    => true,
  }

  service { 'httpd':
    ensure    => running,
    enable    => true,
  }

  service { 'iptables':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/sysconfig/iptables'],
  }

}

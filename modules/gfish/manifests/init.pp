class gfish {

  exec {'start-domain':
    command => '/opt/glassfish/bin/asadmin start-domain',
    #onlyif  => "/usr/bin/test -e /tmp", 
    #onlyif  => "/bin/grep -v running `/opt/glassfish/bin/asadmin list-domains`",
    onlyif  => "/opt/glassfish/bin/asadmin list-domains | grep -c 'domain1 not running'",
  }

  exec {'deploy-app-hello1':
    command => '/opt/glassfish/bin/asadmin deploy /examples/web/hello1/target/hello1.war',
    onlyif  => "/opt/glassfish/bin/asadmin list-applications | grep -c 'Nothing to list'",
    require => Exec['start-domain'],
  }

  exec {'deploy-app-hello2':
    command => '/opt/glassfish/bin/asadmin deploy /examples/web/hello2/target/hello2.war',
    #onlyif  => "/opt/glassfish/bin/asadmin list-applications | grep -c 'Nothing to list'",
    require => Exec['start-domain'],
  }

  exec {'deploy-app-guessnumber':
    command => '/opt/glassfish/bin/asadmin deploy /examples/web/guessnumber/target/guessnumber.war',
    #onlyif  => "/opt/glassfish/bin/asadmin list-applications | grep -c 'Nothing to list'",
    require => Exec['start-domain'],
  }

}

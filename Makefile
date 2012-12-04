hello1:
	cd examples/web/hello1 && JAVA_HOME=/usr/java/latest /home/pdurbin/netbeans-7.2/java/maven/bin/mvn -Dnetbeans.deploy=true package

hello2:
	cd examples/web/hello2 && JAVA_HOME=/usr/java/latest /home/pdurbin/netbeans-7.2/java/maven/bin/mvn clean install

guessnumber:
	cd examples/web/guessnumber && JAVA_HOME=/usr/java/latest /home/pdurbin/netbeans-7.2/java/maven/bin/mvn clean install

clean:
	rm -rf examples/web/hello1/target

#!/bin/bash -x
#/home/pdurbin/glassfish-3.1.2/bin/asadmin stop-domain

#cd examples/web/hello1 && \

#JAVA_HOME=/usr/java/latest /home/pdurbin/netbeans-7.2/java/maven/bin/mvn -Dnetbeans.deploy=true package && \

#/home/pdurbin/glassfish-3.1.2/bin/asadmin start-domain && \
#/home/pdurbin/glassfish-3.1.2/bin/asadmin undeploy hello1
#/home/pdurbin/glassfish-3.1.2/bin/asadmin deploy target/hello1.war

# tomcat-redis-cluster-session-manager-master

Base on https://github.com/ran-jit/tomcat-cluster-redis-session-manager

Move follow downloaded lib jars   
commons-logging-1.2.jar
commons-pool2-2.5.0.jar
jedis-2.9.0.jar
tomcat-redis-cluster-session-manager-1.0.0.jar

to tomcat/lib directory
* tomcat/lib/

Edit /lib/redis-data-cache.properties  set your Redis Cluster

#-- Redis data-cache configuration

#- redis hosts ex: 127.0.0.1:6379, 127.0.0.2:6379, 127.0.0.2:6380, ....
#redis.hosts=127.0.0.1:6379
redis.hosts=106.14.20.45:7000, 106.14.20.45:7001, 106.14.20.45:7002, 106.14.20.45:7003, 106.14.20.45:7004, 106.14.20.45:7005, 

#- redis password (for stand-alone mode)
#redis.password=

#- set true to enable redis cluster mode
redis.cluster.enabled=true

Move Your edited redis-data-cache.properties file and move the file to tomcat/conf directory  
* tomcat/conf/redis-data-cache.properties  

Add the below two lines in tomcat/conf/context.xml 


    <Valve className="tomcat.request.session.redis.SessionHandlerValve" />
    <Manager className="tomcat.request.session.redis.SessionManager" />

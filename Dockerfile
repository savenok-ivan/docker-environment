FROM tomcat:8.0

# Add admin/admin user
ADD tomcat-users.xml /usr/local/tomcat/conf/

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "nano"]

EXPOSE 8080
EXPOSE 8009
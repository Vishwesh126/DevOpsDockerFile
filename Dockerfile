#Base Image
FROM ubuntu:latest

#Owner Name
MAINTAINER Vishwesh126 <mj.vishweshwaran@gmail.com>

#Update the APT Repo
RUN apt-get update

#Install Apache package
RUN apt-get install apache2 -y

#Custom Index Page
RUN echo "Hello Dockerfile" >> /var/www/html/dockerfile.html

#Expose the port
EXPOSE 80

#Start the apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


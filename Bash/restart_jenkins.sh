#!/bin/bash
#logpath= `/var/log/jenkins/jenkins.log`
cmd=`ps -ef | grep jenkins | grep httpPort=8080 | wc -l`
if [ $cmd -gt 0 ] ; then
       echo  "Jenkins service is running,hence no restart is required"
else 
       service jenkins start
       echo "jenkins is in stopped state and restarted jenkins"
##      if [ $cmd -gt 0 ] ; then
  ##         echo  "Jenkins service is running now"
fi

#!/bin/bash
#
# This is an example application for doing deployment validation.
# This is a simple bash script to be deployed to either
# * Linux Host
# * MAC OS X Host
#
nodename=`uname -n`
arch=`uname -m`
datetime=`date +"%u %m/%d/%Y %H:%M:%S.%N"`

echo "Hello World from Distelli."
echo "You have successfully deployed a simple application script."
echo "Server: $nodename"
echo "Server Architecture: $arch"
echo "Server Time: $datetime"
echo "Manifest Environment Variable: $EXAMPLE"
echo ""

#- 'trapecho "exit $? due to $previous_command" DEBUG'
echo "ENV $EXAMPLE"
echo "ENV2 $EXAMPLE2"
    
echo "--Deploy Env Vars--"
echo "APPHOME $DISTELLI_APPHOME"
echo "APPNAME $DISTELLI_APPNAME"
echo "BUILDNUM $DISTELLI_BUILDNUM"
echo "ENV $DISTELLI_ENV"
echo "INSTALLHOME $DISTELLI_INSTALLHOME"
echo "RELBRANCH $DISTELLI_RELBRANCH"
echo "RELEASE $DISTELLI_RELEASE"
echo "RELREPOTYPE $DISTELLI_RELREPOTYPE"
echo "RELREVISION $DISTELLI_RELREVISION"
echo "RELVERSION $DISTELLI_RELVERSION"
echo "--Deploy settable vars--"
echo "INSTALLVIEW $DISTELLI_INSTALLVIEW"

echo "--Docker Env Vars--"
echo "DD_USERNAME $DISTELLI_DOCKER_USERNAME"
#echo "DD_PW $DISTELLI_DOCKER_PW"
echo "DD_EMAIL $DISTELLI_DOCKER_EMAIL"
echo "DD_ENDPOINT $DISTELLI_DOCKER_ENDPOINt"
echo "DD_REPO $DISTELLI_DOCKER_REPO"
echo "DD_PATH $DISTELLI_DOCKER_PATH"
echo ""
    
echo "--Build Env Vars--"
echo "MANIFEST $DISTELLI_MANIFEST"
echo "BUILD $BUILD_VAR1"
DATE=$(date +"%Y%m%d%H%M%S%N")
touch applicationsh.DATE

sleep 10


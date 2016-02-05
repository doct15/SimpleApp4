#!/bin/bash

set -e
echo "PreRelease"
touch release_timestamp.file
tar -czvf app.tgz *
lsb_release -a
trap echo "exit $? due to $previous_command" DEBUG
echo "ENV $EXAMPLE"
echo "ENV2 $EXAMPLE2"
echo "APPNAME $DISTELLI_APPNAME"
echo "APPHOME $DISTELLI_APPHOME"
echo "INSTALLHOME $DISTELLI_INSTALLHOME"
echo "RELVERSION $DISTELLI_RELVERSION"
echo "RELREVISION $DISTELLI_RELREVISION"
echo "RELBRANCH $DISTELLI_RELBRANCH"
echo "RELREPOTYPE $DISTELLI_RELREPOTYPE"
echo "RELEASE $DISTELLI_RELEASE"
echo "MANIFEST $DISTELLI_MANIFEST"
echo "BUILDNUM $DISTELLI_BUILDNUM"
echo "BUILD $BUILD_VAR1"
echo "ENV $DISTELLI_ENV"
DATE=$(date +"%Y%m%d%H%M%Si%N")
touch prerelease.$DATE

#/bin/bash

result=`git log --oneline $GIT_COMMIT ^$GIT_PREVIOUS_SUCCESSFUL_COMMIT | wc -l`
if [ "$FORCE_BUILD" = "true" ] ; then
    echo true
elif [ "$result" = "1" ] ; then
    echo false
else
    echo true
fi

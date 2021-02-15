#/bin/bash

result=`git log --oneline $GIT_COMMIT ^$GIT_PREVIOUS_SUCCESSFUL_COMMIT | wc -l`
if [ "$result" = "1" ] ; then
    echo false
else
    echo true
fi

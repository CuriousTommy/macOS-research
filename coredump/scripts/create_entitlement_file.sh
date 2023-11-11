#/bin/bash

# https://developer.apple.com/forums/thread/694233
/usr/libexec/PlistBuddy -c "Add :com.apple.security.get-task-allow bool true" get-task-allow.entitlements

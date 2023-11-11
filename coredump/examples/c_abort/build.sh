clang -g main.c -o c_abort
codesign -s - -f --entitlements get-task-allow.entitlements c_abort
as -arch arm64 -o asm_gp_regs.o main.s
ld -o asm_gp_regs asm_gp_regs.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64
codesign -s - -f --entitlements get-task-allow.entitlements asm_gp_regs
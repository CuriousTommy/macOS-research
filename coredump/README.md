# Motivation

There is not a lot of documentation on how a Mach-O coredump is constructed. ~~Most of the Mach-O parsing tools I tried does not seem to give much detail about the coredump file...~~ 

`otool` is actually able to provide details about the core dump, you just need to know the right arguments:
```
% otool -v -l /cores/core.8322
Load command 36
        cmd LC_THREAD
    cmdsize 312
     flavor ARM_THREAD_STATE64
      count ARM_THREAD_STATE64_COUNT
	    x0  0x0000000000000000 x1  0x0000000000000001 x2  0x0000000000000002
	    x3  0x0000000000000003 x4  0x0000000000000004 x5  0x0000000000000005
	    x6  0x0000000000000006 x7  0x0000000000000007 x8  0x0000000000000008
	    x9  0x0000000000000009 x10 0x000000000000000a x11 0x000000000000000b
	    x12 0x000000000000000c x13 0x000000000000000d x14 0x000000000000000e
	    x15 0x000000000000000f x16 0x0000000000000010 x17 0x0000000000000011
	    x18 0x0000000000000012 x19 0x0000000000000013 x20 0x0000000000000014
	    x21 0x0000000000000015 x22 0x0000000000000016 x23 0x0000000000000017
	    x24 0x0000000000000018 x25 0x0000000000000019 x26 0x000000000000001a
	    x27 0x000000000000001b x28 0x000000000000001c  fp 0x000000016db87350
	     lr 0x000000018e6fd0e0 sp  0x000000016db87130  pc 0x000000010227bfa4
	   cpsr 0x80001000
     flavor ARM_EXCEPTION_STATE64
      count ARM_EXCEPTION_STATE64_COUNT
	   far  0x0000000000000000 esr 0x92000006 exception 0x00000000
```

Since I need to get `darling-coredump` to generate a working Mach-O ARM64 coredump, this seems like a great opportunity to learn more about a Mach-O coredump (at least for ARM64)

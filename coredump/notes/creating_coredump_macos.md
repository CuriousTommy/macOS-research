Getting macOS to create a core dump is somewhat annoying...

```
sudo chmod 1777 /cores
ulimit -c unlimited
```

If that is still not working, try the following option below (not sure if these options actually make a difference...):

Under "Privacy & Security", make sure the terminal application you use to run the following commands are allowed to do the following:
* "App Management"
* "Developer Tools"

# Resources

* https://nasa.github.io/trick/howto_guides/How-to-dump-core-file-on-MacOS.html#:~:text=On%20MacOS%2C%20the%20ability%20to%20dump%20a%20core,To%20ensure%20this%3A%20%25%20sudo%20chmod%201777%20%2Fcores
* https://developer.apple.com/forums/thread/694233
# yaks(1)

`yaks` is a simple command to start editing and publishing files from yakshav.es from any point in the shell.

It should have the following subcommands:

```

yaks list # lists all available texts
yaks write <name> # opens a text, creates it if not present
                  # will commit and ask for a message right
                  # after closing the editor
yaks remove <name> # removes a test
yaks build # builds everything
yaks publish # publishes everything

```

`yaks` accepts an environment variable `YAKS_DIR` where it finds the basic `yakshav.es` file structure.


# shave(1)

shave is a simple command to start editing and publishing files from yakshav.es from any point in the shell.

It should have the following subcommands:

```

shave list # lists all available texts
shave write <name> # opens a text, creates it if not present
                   # will commit and ask for a message right
                   # after closing the editor
shave remove <name> # removes a test
shave build # builds everything
shave publish # publishes everything

```

Shave accepts an environment variable `SHAVE_DIR` where it finds the basic `yakshav.es` file structure.


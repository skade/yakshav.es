# Notes on licensing Rust code

Licensing Rust code has particular issues, mostly that it isn't C.

This makes recommending licenses particular.

## I want copyleft, but only for my library

The GPL with linking exception is a better pick here then the LGPL. The problem lies hidden inside the LGPL: it requires that the library must be replacable and the assembled program can be re-linked with a self-written version of it. This requires dynamic linking. Rust usually links statically.

This means, that the LGPL effectively requires you to ship the whole Rust code of the resulting program.

libgit2 solves this by giving you the express permission to link the results to a program in any way you like.

Consider the MPL-2.0 in that case.

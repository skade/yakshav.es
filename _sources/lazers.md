# [laze.rs](http://laze.rs)

I've been playing with a Rust-Client for CouchDB since I started playing with the language. This time, I'd like to follow through completely, if possible.

Over time, I had aspects of the CouchDB API implemented (e.g. the changes stream, which now became [lazers-changes-stream](https://github.com/skade/lazers/blob/master/lazers-changes-stream/src/changes_stream.md)). I want the library to be built in components, around a generic interface that allows plugging of most aspects, most importantly HTTP requests and local storage. Support for mobile targets is a goal.

Still, it's currently a rough draft and I just wanted to get stuff out, so even the website looks like some hastily scribbled notes. The aim is currently to let people know I'm working on stuff, not much more.

Oh, and I'm trying out [tango](https://github.com/pnkfelix/tango) and I like it so far.

Finally, the project is pronounced "Laze RS".
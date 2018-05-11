---
title: Asserting static properties in Rust
---

# Asserting static properties in Rust

If you write a generic library in Rust, you will at some point
run into the issue that you have to assert properties of your
exported types that are implicitly derived by the compiler.

Implicit derivation makes a trade-off: it removes a lot of
boilerplate in exchange for the possibility to break things
silently by accident.

The three most common things falling in that category are:

* Send
* Sync
* Object safety

But we can test these statically, by using them in our test
suite. If one of the conditions we have breaks, compilation
will fail.

For Send and Sync, we can use the following functions:

```rust
struct MyType {
  inner: i32
}

fn _assert_send<T: Send>() {}
fn _assert_sync<T: Sync>() {}

fn _assertions() {
    _assert_send::<MyType>();
    _assert_sync::<MyType>();
}
```

This article used to have an approach to test object safety here
that didn't work.

Finally, check out the `compile-fail` crate for proper integration of this
into your test suite.

Notable mentions: The pattern for `_assert_send/sync` is lifted from
Alex Crichtons [`futures-cpupool`](https://github.com/alexcrichton/futures-rs/blob/master/futures-cpupool/src/lib.rs#L92-L97) crate.

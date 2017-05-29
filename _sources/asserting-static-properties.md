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

Object-safety is a little harder, as we need to get hold of
a place where we need it, without actually having to pass a value.

This is provided by a struct and type aliases:

```rust
trait Foo<X> {
    type Y;

    fn new() -> Self where Self: Sized;

    fn call();
}

struct _assert_object_safety<T: ?Sized> {
    inner: Box<T>
}

type checker<T, U> = _assert_object_safety<Foo<T, Y=U>>;
```

Granted, the last could also be achieved by just making `checker`
an alias to `Box<Foo<T, Y=U>>`, but that wouldn't communicate intent
well.

Finally, check out the `compile-fail` crate for proper integration of this
into your test suite.

Notable mentions: The pattern for `_assert_send/sync` is lifted from
Alex Crichtons [`futures-cpupool`](https://github.com/alexcrichton/futures-rs/blob/master/futures-cpupool/src/lib.rs#L92-L97) crate.

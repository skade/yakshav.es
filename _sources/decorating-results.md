# Decorating Results

Rust has many ways to make `Result`s ergonomic, from `try!` to `From` and friends. Here's another one that is useful when chaining is appropriate and all errors can be passed through while you want to work on `Ok` values: just implement a special trait for your specific `Result` type to decorate it. This allows the user to do all general operations on the `Result` and just deconstruct it at the end.

This can make convenient APIs, but obviously means that users need to import that trait everywhere. Also, it needs work to find a good error type you can fully pass through that chain.

```rust

pub trait MyResult {
    fn double(self) -> Self;
}

impl MyResult for Result<i32, String> {
    fn double(self) -> Result<i32, String> {
        self.map(|i| i*2)
    }
}

fn okay() -> Result<i32, String> {
    Ok(2)
}

fn failing() -> Result<i32, String> {
    Err("everything broke".into())
}

#[test]
fn test() {
    assert_eq!(okay().double().unwrap(), 4);
    assert_eq!(failing().double(), Err("everything broke".into()));
}

```

Yes, it's basically a trick to hide `map` and friends from the user.
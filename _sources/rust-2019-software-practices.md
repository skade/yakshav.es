---
title: "Rust 2019 (6): Software practices"
---

# Rust 2019 (6): Software practices

Another thing I highlighted in [Rust 2018: The year we learn Rust 1.0](https://yakshav.es/rust-2018) is the need to develop software practices at scale. I have a positive view on our progress there.

Crucial tooling like [`cargo generate`](https://github.com/ashleygwilliams/cargo-generate) are in a good shape, a great example for this are the project setups in the [embedded book](https://rust-embedded.github.io/book/). It allows us to pre-ship reasonable application structures. I'm a huge fan of it and hope for a wider adoption. In my book, `cargo generate` should replace `cargo new --bin` in most cases in the future.

But also, patterns developed, like the ownership patterns around drivers, as presented in [James Munns talk at RustConf](https://www.youtube.com/watch?v=b1kQ2edkWzQ). But beyond embedded, discussions around high-level details have emerged. One great example here are [Nikos office hours](http://smallcultfollowing.com/babysteps/blog/2018/09/12/rust-office-hours/). Construction and composition of large systems is hard to explain in the void. They are often context sensitive. Taking a conversational approach by answering community questions out of our own experience seems like a good plan here.

With the upcoming stabilisation of `async/await`, I hope that we will see a lot of patterns emerge here more clearly as well.
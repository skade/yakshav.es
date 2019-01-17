---
title: "1.0 is a beautiful version"
---

# Rust 2019 (5): 1.0 is a beautiful version

When I wrote last year's post, [Rust 2018: The year we learn Rust 1.0](https://yakshav.es/rust-2018),
I tried to make an argument to focus on ecosystem improvements over language improvements.
I specifically called out 2 spaces: a stable http client and documented async ecosystem.

1 year in, the situation is the same: we still don't have a 1.0 HTTP client in our ecosystem. While `hyper` and `reqwest` are still the go-to libraries and good, they are still not committed to stability. Also, no other library has emerged to fill that hole. The more our ecosystem grows, the larger the community-wide cost of following breaking changes in these libraries will get.

Proper, high-level documentation of async/futures was pushed tied to the arrival of `async/await`, which was targeted for the edition release and later shifted back. I like `async/await`, I still think the decision to tie documentation to it was a mistake.

This has a ripple effect: everything based on these libraries and features will hold back committing to stability: web and API frameworks, other network protocol implementations or even just plain tutorials.

But it's no only HTTP and networking: `rand` is still sub-zero and many other libs aling with it.

I don't want to shift blame on anyone and not speculate on reasons. There's tons of people working hard on all these features, doing a lot of great work. But as much as I _internally_ have a lot of empathy for this situation, _externally_, it becomes a problem.

While this was a (large) wart a year ago, three years in, it now quickly becomes unacceptable - especially for a language that boasts safe asyncronicity and network programming close to the metal. It points to an immaturity and undecisiveness of the ecosystem. It adds to a feeling of ongoing insecurity about the path of out fundamental ecosystem. Rust is going to become a tough sell through that. Last year, "Rust is young" was an argument that was acceptable. It slowly begins to wear off. We chose to use "Rust 2018" as a "Rust has grown up" marketing moment, and our ecosystem should reflect that.

I think projects like [tide](https://github.com/rust-net-web/tide) point into the right direction: a concerted effort by a _team_ of people to build a reliable, stable offering that is a stable workload.

We had our year of language fixup. We need a year of finishing the parts of the ecosystem that are generally considered expected for the course for any major programming language.

1.0 is a beautiful version, and we need to commit to it. (don't forget to tag!) 

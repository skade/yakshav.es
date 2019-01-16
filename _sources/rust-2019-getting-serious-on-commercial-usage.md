---
title: "Rust 2019 (9): Getting serious on commercial usage"
---

# Rust 2019 (9): Getting serious on commercial usage

Rust is in a unique position for a programming language: it is a well-formed project that can actually interact with commercial entities. It's important to keep this position. Rust has the outspoken mission to improve software quality in the systems programming space and a lot of the most impactful and critical software in this space is produced commercially. They are - for better or worse - a large chunk of our (potential) users.

This is a tricky line to walk: supporting commercial entities as an open source project runs into dangerous emotional territory. For good reason - it's not unusual for companies to use free labour from FOSS communities to improve their bottom line. Programming languages are surprisingly bad off there: they are fundamental to all programming, but also very remote from any actual product features.

This situation does not improve by ignoring the situation, though. We should come to terms how our relationship there should be. We've always been supportive of commercial production users, allowing them to contact us in trust and taking in their feedback. It has been hugely beneficial in forming Rust as a product. It doesn't scale to infinity, though: your first user with Rust production code gives you a ton of visibility, number 100? Not so much. At the same time, adoption and growth of the ecosystem means growth of necessary labour. A gross oversimplification: the more bugs are found, the more need to be triaged and fixed.

I don't believe in "give employees 20% time to contribute back". It's a hack around the real discussion. The statement assumes that everyone has a meaningful contribution, feels good about contributing and _that maintainers have the bandwidth to deal with those contributions_. Especially to unpaid project maintainers, having a peer that is paid 20% of their time, expecting to have contribution accepted, can be a big pain. This is not saying that such policies don't help, it's just not as easy as that. We first need to get more project members to make a living off of their maintenance.

The problem here is that there's not really a good practice of how a programming language should sustain itself out of users. Every language has found their own way, with advantages and drawbacks. There's calls for a Rust foundation, but I find them to all fall short when questions like "What should this foundation do? In detail?" or "how do we make sure the foundation is not an in-club?" arise.

Rust has been a bold and self-conscious project in the past. We _wanted_ adoption. The question "what do commercial users want?" was a pretty good guidance in that time and we did a lot to answer that. We should now turn that around and ask: "what do we want from commercial users?".

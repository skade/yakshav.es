---
title: From the Rider Down
---

# From the Rider Down

The Rust community currently sees a debate around chats. Having been involved in the project since roughly 5 years on the community side, I'd like to comment about a few things I see happening.

Steve has recently informed [the wider community](https://internals.rust-lang.org/t/exploring-new-communication-channels/7859) that the Rust project is trying out discord as a chat host. This has been ongoing for a while _and_ has a lot of backstory.

This is strictly my personal opinion and while I mention a lot of tools in passing, it's also not an evaluation.

## The Rider

Buell famously advertised the 1125R as [Built from the Rider down](https://www.youtube.com/watch?v=FiXsPw6fL0o). I think what we are seeing here is an intersection of 2 problems:
* Most chats are either copycats or have surprisingly poor usability, they are not built around user, but around competition needs.
* There's a disagreement who the rider is and what their needs are.

In the move we all talk about, the rider is _the Rust project_, through their working groups and people.

Rust isn't traditionalist in its procedures - which means that we are willing to investigate many options. We don't use mailing lists. It's very based on GitHub. The RFC process is an evolution of previous approaches. There's no strict hierarchy.

We investigate, and we check. And the project has frequently debated options when it comes to chat.

## The Slack suggestion

Discussions around alternative chat venues are _not new_, the biggest discussion was 2 years ago around considering [Slack as an alternative](https://users.rust-lang.org/t/a-possible-rust-slack-channel/7433) to contact us. The move was subsequently denied, mostly because there was not enough research into the drawbacks and benefits. Also, concerns have been raise around moderation, as Slack has no moderation features so to speak of.

## The Working Group Situation

Rust has grown _extremely_ in the recent years, leading to multiple restructurings. Now, the project is clustered in multiple working groups. Each of these groups is allowed to organise the way they want, there's no need for asking. This includes the liberty to choose note-taking services (of which I know at least 4 in use), group chat systems (of which I know at least 5 in active use). Probably, the most common thing between all groups is that you can reach us individually by email.

It's now a task in and by itself to talk to the whole project or get consolidated feedback. That was much easier a couple of years ago.


This, interestingly, means that moves within Rust are not necessarily planned, but tried out.

## The observability problem

This leads to a problem from the outside: The Rust project has outgrown a size where its moves can be tracked as a consolidated group. Interestingly, the conclusion has often drawn that there is inner circle (often referred to as "Rust leadership", without clear definition) deciding things instead. This is far from the truth: many parts of the project move individually. The outside perception of cohesion comes from another interesting property: we trust each other and take care that we understand motivations. This makes it easy to promote them and stand in for them. So, while there might be circles pushing for things and changing, the circle frequently changes.

That's the ideal case, there's frequent disagreement that is voiced internally and externally. The [Slack debate](https://users.rust-lang.org/t/a-possible-rust-slack-channel/7433) has actually been a good example of that: a lot of the pushback came from project members and community.

I think a lot of the current debate is also made harder that in parallel, _following Rust has become impossible_. For any one of us, project members included. This is independent of the tool and _can also not be fixed by a tool_.

But back to tools.

## The Rust project's needs

Rust is an unusual project in the FOSS space, as it takes a lot of care of its venues. This includes having a [moderation team](https://www.rust-lang.org/en-US/team.html#Moderation-team).

This rules out a number of chats outright, most notably Slack, which treats all users as "employees" and moderation works through HR and your employment contract. Zulip has recently had advances in that area, but don't yet have a fully fleshed out mod system. They have no docs on this. IRC gives many tools, but behind inaccessible commands that need to be trained. Or a (sometimes paid) client. Also, `irc.mozilla.org` suffers from huge problems with spamming.

Matrix seems to have support built in, but no guides on how to use it. You can piece things together from [some API docs](https://matrix.org/docs/spec/client_server/r0.3.0.html#m-room-power-levels). To state it clearly: there is _no overarching documentation of Matrix' idea around abuse and moderation handling_. [Discord](https://support.discordapp.com/hc/en-us/articles/213530048-Advanced-Community-Server-Setup
) is surprisingly good here.

Federation as a product feature is a no-need for Rust. We cluster on one instance of a server for any tool.

Notifications and fine-grained notification features are of importance. It might not be so for people that only want to chat with the teams when they are online, but for close collaborative teams, they are important. Slack is the king of this, Discord also isn't bad, giving fine-grained control on getting notifications on each channel, going as far to switch it all off.

History and logging is only needed for recent debates. Everything of decision value should always be written down somewhere else, usually in meeting notes or tickets coming out of the discussion.

We need good implementation quality with low maintenance: we tried out multiple tools. Most famously, Gitter fell through due to having fundamental bugs. I was directly involved in this experiment on the Berlin All-Hands. I chose to chase people down and see if they got my messages. It's just not good. We already have the problem of struggling to reach people, messages dropping on the floor doesn't help us.

This brings us to the nastiest bit: the tool we need should be pleasant to users. This cannot be fulfilled for everyone, ever. Some tools are more amendable than others, but it's hard to find something that fits everyone. Some people _like and love_ IRC. That's great. But also, IRC is a red flag for many. _And that reputation is well earned_. Others have ethical concerns over some providers. _That's important, too_. For others, it's incredibly important to use their own client flavour. Some just want to chat and have the client in their browser. Some just want to get in touch and have a quick question.

Especially IRC vs. Slack has become an emotionally heated debates over the last years and could even be a generational divide. FOSS has changed in the recent years, especially with projects becoming less and less attached to the "Free", leading to OSS. I have the impression that "the move to Slack" has also become loaded with "moving away from the F".

But also, many projects have tried out many things to get wide reach and effectively becoming more inclusive in the process. Choosing a hard-to-use tool for freedom always goes at the cost of approachability. Choosing a visually heavy tool makes things hard for people that optimise for command line use. Rust has been successful in attracting people from all along the gamut, which makes this discussion even harder. Solving this debate in this environment is akin to solving the [Gordian Knot](https://en.wikipedia.org/wiki/Gordian_Knot).

Distraction has become a huge problem for many and their reactions to this are extremely diverse. I have given up and just run 7 chat systems with notifications off. I know that this isn't a model for many. Others become die-hards for their system and refuse to move. Many are in-between.

It's very hard to balance all those needs and also make it possible that everyone (especially the moderation team) can do their work. Also, keep in mind that most of these problems need to fit members of the project.

## Other places

We're not keeping anyone from using other systems and members of the team often hang out at other places. It might not be the primary place, but it also could be. `irc.mozilla.org` will always exist (as long as Mozilla doesn't shut it off) and if there's people that want to moderate it, it will stay moderated.

## A strictly personal opinion

The whole situation around chats in the FOSS space is very frustrating to me. I have been a long supporter of Jabber - which died in a fire of inconsistent, ad-hoc clients with no clients that I could recommend to friends. OTR and OMEMO were an unsupported mess. Finding supported clients for every operating system in use was a pain. Mobile support was horrible. IRC is _old and dated_ and despite changes, it remains so. The clients look extremely dated. But this is all up to date.

The biggest problem in my opinion is that the FOSS community has completely missed the bus when it came to understanding that organisations don't need federation, but also don't need a Slack clone like Mattermost and Rocket. Yes, I'd happily take a slim implementation of a single-server chat protocol easy to implement in clients that focuses on the above issues instead of building the federated web. Ship safe client functionality as Rust/WASM, and go...

I'm joking a little here, but I fundamentally believe that the FOSS chat that is built ["From the Rider Down"](https://www.youtube.com/watch?v=FiXsPw6fL0o) doesn't exist, but all fail at modeling users as uniform.

That being said, I do still believe that Matrix show the most potential for the next cool chat system _if_ they can solve the problem of not only _potentially_ providing many high-quality clients, but also practically. [But that's not their mission](https://matrix.org/docs/guides/faq.html#what-is-matrixs-mission). I fear we'll end up with a lot of nice crypto, but not many good clients. But their current overemphasis of technical subject over social interactions feels like a bike build for spec, not for riders.

In the end, Rust has frequently decided to pay the cost of moving platforms in the past. _If_ you want to build the best chat platform for a diverse set of people and needs, I would definitely be interested.

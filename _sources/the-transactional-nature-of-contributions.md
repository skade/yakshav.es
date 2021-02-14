---
title: The transactional nature of FOSS contributions
---

With FOSS becoming ubiquius in recent years, we run into more on more problems in the maintainer/user relationship.
The more I try to read up on this, the more I figure that many people on both sides lack a proper model of this - and that leads to friction.

It also leads to a lot of weird discussions around license text. But - to paraphrase Douglas Adams - it isn't the legal texts that are unhappy, but the maintainers and users. While I appreciate a lot of discussions around licensing, they are also often used to dodge _the hard discussions_.

And the hard discussions come down to one problem: we've set up FOSS as the biggest barter deal in humanity. That worked as long as every party is employed with a fat wage check at a software company already and things were manageable. It doesn't work in times in which FOSS projects are easily the size of _mid-size_ companies themselves or individual projects become used in software of global scale.

Which is where this whole thing boomerangs: we managed to set up a space where we don't talk about money. And that is on _us_, the software builders, who want money from people who have absolutely no problem to talk about transactions.

## Modelling the relationship

Many people model contribution to a project as a _selfless act_ and expect _gratitude_ back. The are surprised when that isn't the case. The problem is that sending someone a patch is not like sending them a present.

Let's see what a patch usually involves (I'm not going to go into details here):

1. The change needs to be planned
   * Does it fit the projects plans?
   * Does it need architectural change to fit?
2. The change needs to be developed.
3. The change needs to be integrated and tested.
4. The change needs to be documented, communicated and maintained into perpetuity.

Meta: followup patches might go through this whole cycle again.

Assuming the party that sends the patch is not already within the organisation producing the software, an external contribution forms an _external relationship_. The usual term for the receiving side is the _upstream_, the sending side is the _contributor_ (an individual, often representing a company).
Depending on the age and the trust level of that relationship, that means substantial parts of the above points _cannot_ be given to the outside party. Also, as every relationship, _early relationships_ incur the highest cost - in time and care. 

Which brings the question why the external party contributes. Let's list some reasons: 

1. They found a bug and need it solved
2. They would find an additional feature for the software useful and maintenance upstream is much cheaper then on top (which may mean a fork)
3. They provide a platform and support for their platform could be useful for them.
4. They are just hacking and would like to hack on your stuff.

All these are entirely reasonable.

## A very sloppy calculation

It is not unsual to break things down to _one_ cost factor (which is where the saying "time is money") comes from. Usually, companies calculate on money, but there _are_ e.g. companies (especially in manufacturing environments) that mainly calculate on time. Keep that in mind whenever I speak about cost.

Now, here's the thing: the cost of any transaction is never zero for both sides. The contributor needs to spend time developing their thing, the maintainer needs time vetting it. It is also impossible to ever push this to zero for any of those sides. Even at the bare minimum - e.g. me sending you a typo fix - you still need to hit the merge button and - to not be a complete hearless person - post "Thank you".

This game is more complex for maintainers though, as they need to pay the cost of _the sum of all contributions_ (and this includes maintenance), while a contributor only pays _their individual_ contribution and have no commitment to further maintenance.

## The calculation is contextual

What I described above is very normal and not at all problematic per se, as long as both sides are happy. But there's many context in play.

### Mission

The first one is mission and goals.

For example a project whos mission it is to build a programming language supporting as many platforms as possible _needs_ contributions from experts on those platform. The cost of maintenance may be controllable. Both sides shake hands, everyone is happy. This calculation will also get better the more the relationship builds.

The very same situation may lead to problems if upstream was never planning or only reluctantly supporting Windows/Linux/PDP-11. They would spend time on something that doesn't forward their goals. Given that they have finite resources, resources spent on your desire take away from reaching their goals.

The latter is a classic _goal mismatch_. This This relationship can never work well, until the goal of upstream changes. It will always build aggrevation.

Many Linux distributions and larger companies understood this and instead maintain their own patchsets rather than upstreaming. There's problems there if things that can actually be upstreamed well aren't, but that's for other blog posts.

Another solution is to actually change the goals of upstream. While there is certainly convincing to do, the dominant component here is: _you need to have a plan cover upstreams cost_. I'll come to that later.

## The work of acceptance is unmanageable

This is subtle and not often appreciated: the work of accepting an incoming change for _upstream_ might outweigh the cost of developing it themselves. This is often the case why patches "out of the blue" don't work.

The situation here is that the _cost of acceptance_ is huge. For example, because there was no discussion about whether the proposed change even makes sense before it arrived (if you ever worked in a software project where requirements were sudden, imagine your CEO comes to your desk with the code already written). Or because the change is fundamental, huge and requires a slice of time to review that no one can set aside - and chances of failure there are high. In this case, the cost for _contributors_ does not even matter and can be anything from low to extremely high.

Depending on how you end up in the situation, there might be a fix available (and you might have guessed it): _you need to have a plan cover upstreams cost_. And a plan for upstream to actually be ready when the truck comes down the road.

## Upstream is overloaded

This is a modern classic. There's been a lot of practices growing over the years on how to _attract contributors_. But those plans often ignore the fact that contribution never comes for free for any side. This is the problem that [Hacktoberfest](https://blog.domenic.me/hacktoberfest/) ran into, figuring out that not all maintainers appreciate contribution (especially not of the low value kind). They are now finally opt-in.

Let's quickly talk about what _overloaded_ means: this just means the cost of accepting all current changes is larger than all currently available resources. This does not mean that a contributors patch is in and by itself unmanageable. You can easily detect such cases: patch merge times jump suddenly. This is because this often makes _upstream_ struggle with priotisation, which introduces friction. Overload is dangerous, as it affects _overall productivity_, leading to a downward spiral.

There's two solutions for this: aggressively shedding load, which means closing potential contributions unseen. Or, alternative, strictly prioritising who gets first and hope bandwidth can be increased in the future.

Solutions to this problem? _You need to cover upstreams cost_. You might have guessed it.

## How do we cover upstreams cost?

Now, I mentioned this multiple times, so how do we cover upstreams cost? This is where we need to get out of the abstract - it is highly dependend on the nature of their operations. Let's rule out two things first:

If upstream is a company selling a piece of software that happens to be open source, I have bad news for you: probably, you can't. They probably get money for their operations from elsewhere and goalsetting is not informed by their GitHub PR section. You are probably either in a _goal misalignment_ situation and it will be impossible to change the goals or in an _unmanageable acceptance_ situation, because the decision and planning structure within the company is hidden and doesn't take you into account. Even if you are a paying customer, the best way to get a feature implemented is your manager calling their account manager - and that will only work if a sufficient amount of other customers have the same request.

Another case is where the upstream has never intended the project to be used for anything serious and does not wish to build the needed structures - this is not uncommon. The solution here is to fork and use the software for your own. It's still good curtesy to send them a note and maybe offer them to receive money for help with your fork.

In all other cases, there's a number of options and often, a combination of them makes things work. The first one is to find some way to present committment - the strongest, and somewhat easiest one being to actually join upstream. This is particularly great if your contribution is a large feature - you bring the maintenance. The larger the contribution, the larger the expectency to be part of its future maintenance are. The second is straight-forward: money. If upstream accepts money, send it. There's many ways of doing this: some projects have organisations to spend money towards (this is a long game, though), but for other projects, some maintainers are freelancers or have small companies and will assist you through you buying time. No guaranteee of merging, usually, but - at least to get matters closed.

There's the special case in which upstream is a commercial company that _does_ facilitate open contribution and design. In this case, contribution not working is a quality problem.

And finally: You have a problem to get money for that green-lighted in your organisation? That's your organisations issue. This includes multi-billion dollar companies that just happen to not have the facilities in accounting for doing that. You probably can't fix it, but immediately remove yourself from any of the above situations and report that internally.

## How do we convince people to cover upstreams cost?

Which brings me to the other side of the question: how do we, as maintainers, convince people to cover our cost? 

The first question is: do you, as maintainers, accept money? If the answer is "No" (which is valid), then try to get as many co-maintainers as you can. If the cost of acceptance outweigh the benefits for your goal, send people away. Feel good about it.

But what if you want to get cash? First of all, by setting aside some time for making this happen. It's a skill to build and arguments need to be made. A problem here is that many people feel uncomfortable to talk about or ask for money. From the perspective of a maintainer, an interesting observation applies: potential spenders _also_ have finite resources for that spend, why should they give it to you? (hint: the license of your project is secondary here)

It's rather the list of reasons I layed out in the beginning:

1. They found a bug and need it solved
2. They would find an additional feature for the software useful and maintenance upstream is much cheaper then on top (which may mean a fork)
3. They provide a platform and support for their platform could be useful for them.
4. They are just hacking and would like to hack on your stuff.

Other way put:

1. They have a pain to solve, probably quick
2. They want to optimise cost
3. They need your product to run on their product to reduce blockers (and as such cost)

Our core problem is that for a long time, we've accepted this kind of contribution without question. That means we got people _used_ to this being valid reasons to contribute without any kind of longer investment or caring about their cost. This leads to the absurd situation that when _asked_ for the their cost, projects can often not account for them, not even the slightest. Another problem is that we often accepted _barter deals_ to dodge money - e.g. hardware to test. The problem is that this a) keeps you inflexible and b) congratulations, you now have hardware to manage. And - to paraphrase Douglas Adams again - the hardware wasn't unhappy, it was the people. And... we conveniently dodged the uncomfortable money topic.

Money has the large advantage of being _flexible_ and _under your control_. You can buy food _and_ other conveninces from it, a problem that modern processor development as not solved yet (the nutrition value of processors is pretty terrible). 

But this also means that we often haven't modeled what _value_ we bring when we accept these contributions. And that's our entry-point into a discussion. 

Especially corporate contributors are interested in multiple things: reducing their own organisational load (which incurs cost), freeing their own resources (which otherwise incurs costs, often opportunity costs) and enabling future business. Any argument on why you can improve those axes is well rooted. Be aware that engineers, often up to and including CTOs often don't think along those lines. You want to talk to people with budget powers. Find ways to connect them to your work (e.g. by sending a monthly update on the work they funded - a small page).

Only even discuss deals with a money component (rare exceptions exist). Again, money means _value, (your) flexibility, appreciation and commitment_. Send people away that don't want to discuss on those terms, they are not serious. Deflect anything that tries to argue over internal problems on the contributing side: that's their problem to solve.

For all others, be aware that the cost of an engineer day interally at a company is rarely under $1000 dollars and that setting up a deal with you will probably cost multiple days for multiple people at that company. This is _working to your advantage_, because it leads to an odd effect: companies are not interested in your patreon for 50$ max - the cost of _that_ transaction is far outweighting the monetary. If you want to approach companies, reach for higher values, but also with higher touch. Also, you may want to bring tiny commitments (e.g. the right to call you personally in a very constrained fashion).

The numbers here may change, but as an illustration: the first thing I killed at my conferences was the 500$ sponsorship and it - counter-intuitively - _improved sales_. The effect is something an experienced sales person will not be confused about: it acts as a filter and we were below the line where professional sponsors would call. It also improved our fulfilling their expectations: an hour or two of our time for the sales process and sponsorship. The math here is simple: 1 hour each to chase 2 500$ sponsorships or 2 hours to chase 1 1000$ sponsorship? The second is better, as you only end up with one relationship to manage and one set of invoices to manage. Often, it also turned out that the high-volume sales were actually faster.

There's a certain amount to sales strategy here, but that's a) hard to generalise and b) maybe meriting another piece of writing.

That leaves 4., the hobbyist contributors:

They are probably a student or someone who just enjoys the work. Decide to work with them or not. I can recommend the first, I had a lot of personal fun coming out of it. When you are in their town, ask for their couch instead of paying for a hotel.
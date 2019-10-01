---
title: Running the Rust YouTube channel
---

# Running a project/conference YouTube channel

Recently, Patricia Aas tweeted that conferences should disable the YouTube comments on all talks.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">I’m starting to think conferences should disable YouTube comments on all talks because:<br><br>1. They are often trash for underrepresented folks.<br><br>2. If you only disable comments for underrepresented folks, then their videos are rated lower than majority folks by YouTube algorithms. <a href="https://t.co/iKBn28JvF5">pic.twitter.com/iKBn28JvF5</a></p>&mdash; Patricia Aas (@pati_gallardo) <a href="https://twitter.com/pati_gallardo/status/1178923626403434497?ref_src=twsrc%5Etfw">October 1, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 

If you have no amount of time to spend on your YouTube channel, please follow that advice. YouTube comments have a bad reputation for a reason.

If not, please read on. I'd like to present our practice around the YouTube channel.

## The Rust YouTube channel

I created the official Rust YouTube channel, to be found [here](https://youtube.com/c/rustvideos). The channel does not only publish all Rust videos on our conferences, but also republishes videos from other conferences.

Additionally, we have started using it as a channel to publish self-recorded materials, for example the [rustc compiler lecture series](https://www.youtube.com/playlist?list=PL85XCvVPmGQhOL-J2Ng7qlPvDVOwYpGTN) or recordings of working group meetings.

## Why run a unified YouTube channel?

The advantage of having a unified YouTube channel is the ability to promote work of people in and around your project. Even if you are a new project, _someone_ is probably speaking about it somewhere. Why not curate that? People only have to subscribe once, the ability to get notified of new uploads is really helpful. It also allows us to editorialise content a little and to for example highlight small conferences by publishing their stuff here.

YouTube also has automatic outreach, so it does all advertising for you! Additionally, it gives you unlimited upload limits. This shouldn't be understated, e.g. uploading a whole conference up to Vimeo would have taken me 20 weeks at their limits last time I checked.

While I have a ton of problems with YouTube, they are still the _only_ one-stop solution everyone views, and the tradeoff between no one watching videos of my speakers and putting all those great people in front of an audience is still in favour of YouTube!

## What the Rust YouTube channel isn't

The Rust YouTube channel isn't a discussion forum. This is an important piece of info when understanding how it is moderated. The Rust project provides many other venues to discuss the project and give feedback. It is not a place where we take feedback.

## Setting up a YouTube channel around your project

First of all, you want to create a [Brand account](https://support.google.com/youtube/answer/1646861?hl=en) on YouTube. This is the fancy name for "multiple people can use this account".

As a first start, I would go and create some playlists. When we started, we basically had:

* RustFest 2016
* Other Conferences 2016/2015/2014/2013
* Some language based playlists for meetups

## Videos, Videos, Videos

I won't go into the details of uploading videos to YouTube. There's tons of tutorials out there. Please make sure you have all applicable rights!

What you want to use a ton is the [playlist icon](https://lh3.googleusercontent.com/zcvhfCUM2oTZeKE8cwJB51QbNjXR2vBIYQO8uUM3VLT510_o7NtdGLZroVgfHHZtk88=w18) under videos which allows you to add them to playlists (both your own videos and others).

Video curation will be what you will be spending most of your time with. We have the habit of rather liberally handing out video upload permissions to meetup organisers to ease the pain. They still get a briefing on what is acceptable and what not - it helps to have a [project Code of Conduct](https://www.rust-lang.org/policies/code-of-conduct) and get people used to it.

Be warned that adding videos of other channels to your playlist means you import their comments and their subscribe button. They will also be branded in their channels colors for clarity, but make sure they got their comment section in order, because, as mentioned above...

## YouTube comments are to a large amount terrible

To be quite upfront: The amount of aggressive garbage in YouTube comments, especially below talks of women and marginalised people in general is substantial. If it's not that, it is still quite usual that people reach for insults or attack speakers directly (e.g. for constructing a talk in a way that they didn't like).

I give you a relatively harmless example:

> [I don't trust any programmer that deliberately uses Ruby or Java.](https://www.youtube.com/watch?v=-Tj8Q12DaEQ&lc=Ugza_fmk6uElSR_NIct4AaABAg)

This one isn't abusive, but serves as an illustration of a base level of discussion. Expect ~30% of your comments to be like this.

Examples of mild stuff?

> This years Rustconf is like g@y parade. I respect people's preference but pushing it like this is really annoying.
> Edit: My comment did not showed up, that is why I used @ but nothing has changed.

(Guess what: it didn't show up because we didn't let it to)

You can dial that up to 11, but I'm not here for effect.

Speakers shouldn't go to their talk page - something they should be proud of and be able to show around - and be exposed to such garbage.

The advantage of the YouTube comments is that they have a really strong split, with many not on the edge.

## In defense of YouTube comments

Why not burn it all down and switch comments off?

Because there's also tons of positive feedback! Like [on on our most popular talk by Lisa Passing](https://www.youtube.com/watch?v=Ktwl97Ph-SI&lc=UgjPzulPSYIp5XgCoAEC). Or feedback on the [speakers slides](https://www.youtube.com/watch?v=lLzFJenzBng&lc=UgzVow6kTf9NDFnO76h4AaABAg). Sometimes people point out [big and small errors](https://www.youtube.com/watch?v=lLzFJenzBng&lc=UgxL4R6-mURR_F6Kg2x4AaABAg).

Or useful things like highlighting [the moment people talk about an important RFC](https://www.youtube.com/watch?v=EwlSlpyaZFY&lc=UgyszVgZSTa5NNyRC5V4AaABAg). Or [requests for clarification](https://www.youtube.com/watch?v=-Tj8Q12DaEQ&lc=Ugw1gefh8uIuk_4EyJt4AaABAg) - correction of mistakes is also possible. The culture of pointing out things in a video exists on YouTube and is very specific there.

It isn't much, but I also like it.

## How to handle YouTube comments

Interestingly, YouTube has okay moderation interfaces (which, given their terrible platform policies around hate speech is surprising). Most importantly, immediately navigate for `Settings -> Community -> Defaults` and check "Hold all comments for review". This passes literally every comment through a comment queue. It also allows you to flag people as _safe_, so they can always and freely comment.

This has 2 interesting advantages:
* You read all the feedback, which means you can react on it
* You can delete bile before it reaches the speaker

The comment interface is reasonably fast and one-click, I can review around 50 comments in about 5 minutes. We have a comment rate of roughly 40-50 after a new conference release, in the meantime, it's lower, so this is a doable task. Given the observation that many things are clearly garbage and the space is not for debate, modeation is eased.

My moderation policy about the YouTube channel is that a comment should add _positive value_ to video or not be posted. This doesn't mean that a comment needs to be glaringly positive, criticism or factual corrections can be posted and are even welcome, but we care a lot about making sure that it doesn't take away from the rest of the talk. As an example, a comment saying that a whole talk is bad, because of a sketchy argument in slides 45-48 will not be let through. Feedback pointing out the flaw will likely be.

A simple and conscious policy like this helps us to keep our workload minimal while still allowing the good and useful parts in. It curbs speed of conversation and what can be said in the comment section. That brings me back to the point above: our YouTube channel is not a discussion venue.

The comment section also gets better once people figured out that they can't get insults through.

## Other YouTube problems

YouTube has a recommendation algorithm that is a huge part of the success story. Over 50% of our viewers come from YouTube itself.

Sadly, you can't influence where your videos will be recommended and who to. I have the stong feeling that the recommender is very biased, on multiple accounts, but obviously, I have no proof here :). I'd be happy to talk with people who know more about this subject then I do.

YouTube tracks. A lot. At least for RustFest stuff, we therefore also provide out videos at [media.ccc.de](https://media.ccc.de/), kindly hosted by the C3Video team (you're awesome!).

## Summary

Running a YouTube channel has been a huge boost to our project. It gives us a rather frictionless way to promote our project. The releationship work/reach has been great.

I'd like to reiterate that with the simple techniques above, we can currently run the channel on about 20 minutes time per week. Most of that is curation. YMMV.

I hope this little peek into our thinking into our practices helps you out!
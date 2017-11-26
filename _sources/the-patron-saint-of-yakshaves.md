# Donald Knuth - The Patron Saint of Yak Shaves

In 2015, I gave a talk in which I called [Donald Knuth the Patron Saint of Yak Shaves](https://speakerdeck.com/skade/tex-the-ultimate-yakshave). The reason is that Donald Knuth achieved the most perfect and long-running yak shave: TeX.

I figured this is worth repeating.

## How to achieve the ultimate Yak Shave

The ultimate yak shave is the combination of improbable circumstance, the privilege to be able to shave at your hearts will and the will to follow things through to the end. Here's the way it was achieved with TeX. The recount is purely mine, inaccurate and obviously there for fun. I'll avoid the most boring facts that everyone always tells, such as [why Knuth's checks have their own Wikipedia page](https://en.wikipedia.org/wiki/Knuth_reward_check).

So, let's get things started.

## The Pre-Shave

TeX was invented to typeset a book. No plural. It was invented to typeset the second edition of "The Art of Computer Programming". The second edition had to be typeset again, as "hot type" typesetting, which was used for the first edition, was not available anymore. Being unimpressed by the available options, Knuth decided to write his own system, which later ended up as TeX.

But "The Art of Computer Programming" is an impressive book in its own right: it is still unfinished, currently spanning 3.5 volumes (yes, the fourth is unfinished, but the first chapters are released). It was called a book of the century by [American scientist writers](https://web.archive.org/web/20080820030403/http://www.americanscientist.org/bookshelf/pub/100-or-so-books-that-shaped-a-century-of-science).

Yak shave -2: Write a book of the century

Digging deeper into TAOCP, it already shows the works of a yak shaver destined for greater things. All programs in this book refer to a common assembly language: MIX. Which was invented for the book.

Yak shave -1: Invent your own computer for illustration purposes

## Implementation

The first version of TeX was implemented using the [SAIL](https://en.wikipedia.org/wiki/SAIL_(programming_language)) programming language. It was later replaced by WEB. What's WEB? It's a programming language, invented by... You'll have guessed it by now, Donald Knuth. It transpiles to PASCAL. Knuth transpiled the WEB before it was cool.

Yak shave 1: Somewhere along the road, implement your own programming language...

WEB is a special language: in WEB, any bare text is just text. It's interleaved with marked pieces of code, which are later used for the program code. The documentation can be run through a special program to produce... a TeX file. The concept is called "literate programming" and was introduced by... Donald Knuth.

Yak shave 2: Invent your own programming paradigm for it

But, what does TeX do? Mainly, it does text layout and a couple of other things. Knuth being known for research on algorithms couldn't do without coming up with his own algorithm, later published together with Michael Plass. What does the algorithm do? It finds a visually pleasing way to lay out a paragraph on a page without making line breaks look jarring (for example by adjusting the "glue", the whitespace between words). Here's a [nice explanation](https://www.ugrad.cs.ubc.ca/~cs490/2015W2/lectures/Knuth.pdf).

It's still considered good and has a huge factor in the recognisable look of TeX documents.

Yak shave 3: Invent your own layout algorithm for it

Which brings us to the next problem: _what_ does this thing lay out? Generically speaking: objects and clusters of objects of varying sizes. Interestingly, that's what TeX deals with, it has no concept of a character other then dimensions.

Nevertheless, these are usually characters and characters are provided by fonts. Fonts must usually be licensed at a fee and free fonts weren't so available in the 70s.

Another very recognisable feature of TeX documents that they are often set in a font called "Computer Modern".

I'm trying to make this whole thing a bit more thrilling, so I will let you guess who created that one.

Yak shave 4: Design a font

Fonts need to be authored. Usually, they are described in some vector description, often Bézier curves. This is fairly standard and not an innovation of Knuth. _But_, he wrote a description language for that, along with an interpreter to turn this descriptions into proper font files. This is [METAFONT](https://en.wikipedia.org/wiki/Metafont). It's not strictly part of TeX, it's just that the Yak that happened to stand close.

Yak shave 5: Write an authoring tool for fonts

As a side-note, METAFONT was later evolved into METAPOST for generic vector drawings, which has the one feature I still miss from many modern graphics description languages: the ability to describe an (addressable) point as the intersection between two other primitives.

Another side-note: both TeX and METAFONT still see releases, at a slow pace. TeX is currently at version 3.14159265, METAFONT at 2.7182818. Yep, TeX is slowly converging towards pi, while METAFONT towards e. Take that, semantic versioning advocates!

Yak shave 6: Come up with your own versioning scheme  
Yak shave 7: Avoid adoption of it for greater good

We're not done yet. We can layout text (and other things), but where do we convert it to? Now, everyone knows the horror printers invoke, so no one wants to deal with those directly. Classic TeX instead converts things to [DVI](https://en.wikipedia.org/wiki/Device_independent_file_format), the "device independent" format. I don't know many details about it, except what's on the wiki page, which feels the need to specifically point out that "DVI is not a document encryption format". It is again a stack-based language (in contrast to PostScript not turing complete), which can than be interpreted through a driver, which would then send that to whatever target (a printer, PDF or such). It was designed by...

David R. Fuchs, Knuth just wrote the implementation.

Yak shave 8: Implement a custom language for printable documents

Note that I haven't mentioned that TeX is an... interesting... language by itself, but I don't consider that a yak shave, this was just the implementation.

That makes most of the initial implementation complete. Which means, in orderly fashion, you should give matters in the hand of the community.

## Community Shaving is Best Shaving

Since the release of TeX, the community has been busy working on using it as a platform. If you ever downloaded the full TeX distribution, please bear in mind that you are downloading the amassed work of over 40 years, to make sure that each and every TeX document ever written builds. We're talking about documents here.

But mostly, two big projects sprung out of that. The first is LaTeX by Leslie Lamport. Lamport is a very productive researcher, famous for research in formal methods through TLA+ and also known laying groundwork for many distributed algorithms. LaTeX is based on the idea of seperating presentation and content. It is based around the idea of document classes, which then describe the way a certain document is layed out. Think Markdown, just much more complex. The second is ConTeXt, which is far more focused on fine grained layout control.

Both share a common property:

Community yak shave 1: Create not one, but two programs that are very ungoogleable... Before Google is invented.

Being active in a language that has lingo built around "Rust", "Cargo" and "manifests", I feel right at home.

Now, the community also wants to evolve TeX: a lot has changed over the years in technology, so, for example, you'd like to use modern font formats, directly write to modern output formats or use this new UTF-8 thingy. For that, there are specialised TeX interpreters, such as `pdf(la)tex`, `lua(la)tex` and `xe(la)tex`. There's a problem here: you are not allowed to change TeX and distribute [it under that name](https://en.wikipedia.org/wiki/TeX#License). The thinking here is that if you have a `tex` binary, you can compile any valid TeX from the past and from the future.

The first issue on that road is that WEB isn't really a popular programming language, PASCAL either and running it on modern systems is a bit of a pain. Which means...

Community yak shave 2: Transpile WEB to C and work from there

This is just the start of a great endeavour...

Community yak shave 3: Build a lot of tooling around that

## The Moral of the Story

Whenever you feel like "can't we just replace this whole thing, it can't be so hard" when handling TeX, don't forget how many years of work and especially knowledge were poured into that system. Typesetting isn't the _most_ popular knowledge around programmers. Especially see it in the context of the space it is in: they can't remove legacy. Ever. That would break documents.

TeX is also not a programming language. It might resemble one, but mostly, it should be approached as a typesetting system first. A lot of its confusing lingo gets much better then. It's not programming lingo.

By approaching TeX with an understanding for its history, a lot of things can be learned from it. And yes, a replacement would be great, but it would take ages.

In any case, I hope I thoroughly convinced you why Donald Knuth is the Patron Saint of Yak Shaves.

## Extra Credits

This comes out of a enjoyable discussion with [Arne from Lambda Island](https://lambdaisland.com/), who listened and said "you should totally turn this into a talk".

---
title: Markua extensions to CommonMark
subtitle: Documentation and embedded conformance tests
version: 0.1
date: '2018-12-01'
license: '[CC0](http://creativecommons.org/licenses/cc0/)'
alternative: https://leanpub.com/markua/read
---

Leanpub's _Markua_ supports a subset of Markdown with extensions. It limits each syntax choice Commonmark offers to a single one. This flavor description only documents the extensions and only those compatible with Commonmark.

- [Presentational Emphasis extension](file name without extension), single underscore italic `_i_`, double underscore bold `__b__`
- [Underlined Text extension](underline), quadruple underscore `____foo____`
- [Strike-Through extension](strikethrough), double tilde `~~foo~~`
- [Superscript extension](superscript), suffix required, single-character `^` 
- [Figures extension](figure), not restricted to images
- [Definition Lists extension](definition-list), `foo\n: bar`
- [Footnotes and Endnotes extension](footnote), `[^footnote]` vs. `[^^endnote]`
- [Explicit Targets extension](explicit-target)
- [Emoji Short Code extension](shortcode), `:smile:`
- [Critic Markup](critic-markup)

## Missing Extensions

- Markua distinguishes prefixed headings from affixed headings (which do contain a suffix), at least for the to level:
  `# Part #` vs. `# Chapter`
- Executed code blocks, superset of the [Diagrams extension](diagram).
- alphabetized lists
- roman-numbered lists
- page break with `===`, cf. [Sections extension](section)
- _Smarty Pants_, prettify punctuation marks like dashes `--`, `\w--\w`, `--\w`, `---`, `\w-\w`, ellipses `...`, quotation marks `\w""\w`, `\w''\w` and spostrophes `'\w`, as well as emoticons `:-)`, `;)` etc. ; soft hyphen `\-`, Unicode `\u0123`

Unsupported or Incompatible Extensions
----------------------

This repository does not document extensions that use fixed (English) keywords instead of punctuation characters for markup.

- predefined keys for attributes
- asides and blurbs
  - `A>` and `B>`, also `D>`, `E>`, `I>`, `Q>`, `T>`, `W>`, `X>`
  - `{aside}` and `{blurb}`
- Crosslink variables: `[title #t, number #n, description #d](#foo)`, `[full title #f](#foo)`
- [Quizzes and Exercises extension](quiz), `\n?  Question`, `! correct free answer`, uppercase list letter for correct multiple choise ansers
- Index entries `{i: "foo"}`
- [Document settings](document-metadata) uses curly braces `{` and `}` as delimiters for what is basically YAML but not JSON data







------------------------------------------------------------------------------------------------------------







# README

# Introduction

## The magical typewriter

Imagine you owned a magical typewriter.

When you used this magical typewriter, you wrote with fewer distractions. You
didn't just write faster, you wrote better.

With your magical typewriter, you never worried about layout. The book formatted
itself.

You could hit a key on your magical typewriter to create an ebook from your
manuscript with one click.

All ebook formats would be created, and they'd all look good. You'd have PDF for
computers, MOBI for Kindle, and EPUB for everywhere else. The book would look
great on phones.

With your magical typewriter, you could publish your book before it was even
done, and get feedback from readers all over the world. You could automatically
share book updates with them. You would press one key on your magical typewriter
to publish a new version, and all your readers would have it instantly.

With your magical typewriter, you could easily compare your current manuscript
to any other version of your manuscript that had ever existed.

If you decided to make a print book, you could press a key on your magical
typewriter to get a print-ready PDF. All you would need to do is add a cover.
Or, if you wanted to work with a designer or publisher, you could press a
different key to generate InDesign. They could then use this as a starting point
for producing a beautiful print book.

Your magical typewriter could even transform your completed book manuscript into
a course that anyone in the world could take. All you'd need to do is to
add some quizzes and exercises and then press a key for your magical typewriter
to publish a massive open online course (MOOC) for you. The quizzes and exercises
would mark themselves, and students would get certificates based on how well
they did.

With your magical typewriter, you'd only have to do one thing:

Write.

Wouldn't it be great if such a magical typewriter existed?

It does. At [Leanpub](https://leanpub.com), we're building it.

But there's one requirement for this magical typewriter to exist: a simple,
coherent, open source, free, plain text format for a book or course manuscript.

This simple format will be the basis for the magical typewriter.

This simple format is called Markua.

This is its specification.

## How to write a novel in Markua

The Markua specification is long. However, the amount you need to learn to get
started is actually very short.

This example shows everything you need to know to write a novel in Markua:

~~~
# Chapter One

This is a paragraph. You just write.

Blank lines separate paragraphs. This is *italic* and **bold**.

* * *

That was a thematic break. "This is in quotes."

# Chapter Two

This is a paragraph in a new chapter.
~~~

Specifically, these are the rules:

1. Paragraphs are separated from other paragraphs by blank lines.
   (To add a blank line, add two consecutive newlines.)
2. To make a chapter heading, start a line with a pound sign (`#`), followed by
   a space and the name of the chapter.
3. To add a thematic break (also known as a scene break), put three asterisks
   (`* * *`) on a line with only whitespace.
4. Chapter headings and thematic breaks are separated from paragraphs by single
   newlines or blank lines. Blank lines are preferred for readability.
5. By default, single newlines in paragraphs turn into single spaces in the
   output, so you can manually wrap your paragraphs with newlines if you want.
   It's optional, however, and typically a waste of time.
6. Use `*one asterisk*` for italic and `**two asterisks**` for bold.
7. All other text and punctuation is typed normally.

That's it!

## How to write a computer programming book in Markua

The following example shows basically everything you need to know to write a
computer programming book in Markua:

~~~
# Chapter One

This is *italic* and **bold**.

Here's an image:

![a red apple](mac.jpg "The Original Mac")

## Section One

You can have bulleted and numbered lists, including nested lists:

1. foo
   a) lorem
   b) ipsum
2. bar
   * stuff
   * more stuff
3. baz

### A Sub-Section

You can even have definition lists!

term 1
: definition 1a
: definition 1b

term 2
: definition 2

## Another Section

Tables work too:

| Header 1  | Header 2  |
| --------- | --------- |
| Content 1 | Content 2 |
| Content 3 | Content 4 |

You can have external code samples:

![](hello.rb "Hello World in Ruby")

You can also inline code samples:

{title: "Hello World in Ruby"}
```ruby
puts "hello"
```

You can also include single lines of code like `puts "hello"` in paragraphs.

> Blockquotes are really easy too.
> --Peter Armstrong, *Markua Spec*

Finally, you can do that with math `d = v_i t + \frac{1}{2} a t^2`$ too.
~~~

As you can see, there is more syntax, including bulleted and numbered lists,
definition lists, tables, block quotes, external and inline code samples,
inline math, etc. However, even with all this, the Markua document remains
readable. Exactly how all of this syntax works is explained in the spec.

## How to write a course (MOOC) in Markua

To write a course in Markua, you can start from scratch or from a book
manuscript already formatted in Markua. Literally, all you need to do to turn a
book written in Markua into a course is to add some quizzes.

The following is a complete course, written in Markua:

```
# Lesson One: Markua

## Section One

Lessons can have sections (and sub-sections, etc.) just like book chapters.
You can use the same headings as you do for book chapters and sections.

This exercise shows two multiple choice questions.

{exercise, id: exercise1}
? How many letters are in the word Markdown?

a) 6
b) 7
C) 8

? How many unique letters are in the word CommonMark?

a) 6
B) 7
c) 8
{/exercise}

## Section Two

This quiz shows a multiple choice question and a fill in the blank question.

{quiz, id: quiz1}
? How many letters are in the word Markua?

a) 5
B) 6
c) 7

? How many unique letters are in the word Markua?

! 5
{/quiz}

# Lesson Two: Geography

This quiz shows two fill in the blank questions, with multiple answers and with
a regex answer.

{quiz, id: quiz2}
? What's the global capital of investment banking?

! New York
! London

? Where's the Eiffel Tower?

! /(Paris|France)/i
{/quiz}

# Lesson Three: Biology

This one-question quiz shows a multiple selection question.

{quiz, id: quiz3}
? Which of these are fruits?

T) apple
F) cow
F) lettuce
T) peach
T) pear
F) rice
{/quiz}
```

As this example shows, the syntax for writing normal content is the same as for
books. All that's different is the addition of quizzes and exercises.

Quizzes and exercises have the same type of content. However, with quizzes the
marks count toward your mark in the course, and with exercises they don't count.
For MOOCs, Markua supports multiple choice, fill in the blank and multiple
selection questions.

A multiple choice question has 2 or more answer choices, and 1 correct answer
choice. The correct answer choice is in a capital letter; incorrect answer
choices have lowercase letters.

A fill in the blank question consists of a question and a set of answers.
You can even use regular expressions for the answers.

A multiple selection question makes learners select every true answer, and leave
every false answer not selected.

As explained in the spec, there are more types of questions, and more options
with these types of questions. However, what is shown above is enough to create
a full MOOC out of a Markua book.

## Markua heading mapping to book and course structures

Markua is a way of writing books and courses. Books have things like chapters
and sections. Sometimes books have parts. Courses have lessons, which can be
organized in parts and grouped into sections.

In Markua, you make the appropriate headings using the standard atx or Setext
headings of Markdown, and these produce the appropriate level of heading.

* `h1` (with a `{class: part}` attribute list) produces a part heading
* `h1` (without a `{class: part}` attribute list) produces a chapter heading
* `h2` produces a section heading
* `h3` produces a sub-section heading
* `h4` produces a sub-sub-section heading
* `h5` produces a sub-sub-sub-section heading
* `h6` produces a sub-sub-sub-sub-section heading

With the Markdown atx headers, this is all really straightforward:

```
{class: part}
# A Part Heading (h1)

# A Chapter Heading (h1)

## A Section Heading (h2)

### A Sub-Section Heading (h3)

#### A Sub-Sub-Section Heading (h4)

##### A Sub-Sub-Sub-Section Heading (h5)

###### A Sub-Sub-Sub-Sub-Section Heading (h6)
```

With the Markdown Setext headers, you can only go to h2, so you can only make
part, chapter and section headings using Setext headers:

```
{class: part}
A Part Heading (h1)
===================

A Chapter Heading (h1)
======================

A Section Heading (h2)
----------------------
```

Both produce identical HTML for the part, chapter and section headings.
The `{class: part}` gets passed into the HTML as a `class="part"`, as is shown
in the [Part Headings](#part-headings-markua-extension-) extension. The other
headings all look identical to the Markdown headings as specified by CommonMark.
So, they are just discussed in the [ATX headings](#atx-headings) and
[Setext headings](#setext-headings) sections.

If you are using Setext headings and you realize you need sub-sections and lower,
you can need to use atx headings for them. It's up to you, however, whether you
convert the Setext headings for parts, chapters and sections. Mixing and
matching heading styles is ugly, but it is permitted.

## Markua: Markdown for books and courses

Markua, pronounced "mar-coo-ah", is Markdown for books and courses.

Markua is simple and powerful. When you are writing using Markua, you are
writing, not programming. Once you understand Markua's syntax, it fades into the
background.

Markua is based on [Markdown](http://daringfireball.net/projects/markdown/).
Markdown is a plain text format for writing text which can be transformed by
Markdown processors into HTML. Markdown was created by John Gruber, with help
from Aaron Swartz. Markdown was described by John Gruber as follows:

> Markdown is a text-to-HTML conversion tool for web writers. Markdown allows
you to write using an easy-to-read, easy-to-write plain text format, then
convert it to structurally valid XHTML (or HTML).

The primary reason that Markdown is a great way to write is that it was designed
to be this way:

> The overriding design goal for Markdown's formatting syntax is to make it as
readable as possible. The idea is that a Markdown-formatted document should be
publishable as-is, as plain text, without looking like it's been marked up with
tags or formatting instructions. While Markdown's syntax has been influenced by
several existing text-to-HTML filters, the single biggest source of inspiration
for Markdown's syntax is the format of plain text email.

Markua is a plain text format. Markua is basically Markdown, minus all inline
HTML except comments, plus a number of extensions to support everything you need
to write a book or create a course.

Markua manuscripts, called Markua documents, can be written however you want. On
a computer, you can use any text editor you want. Beginning authors can use
simple programs like Notepad or TextEdit or "distraction-free" programs like
iA Writer; authors who are programmers can use editors like Emacs, Vim, Atom or
VSCode. Since Markua is essentially a superset of Markdown, many programs which
support Markdown should already do a decent job of supporting Markua by default.

Markua maps Markdown syntax to book concepts, and then adds some new syntax and
concepts of its own.

Markua documents can be automatically transformed into every popular type of ebook
format. The computer programs which do this transformation are called Markua
Processors. These programs understand both Markua syntax and how to generate the
various output formats. An example Markua Processor is Leanpub: Leanpub can
output PDF, EPUB, MOBI and HTML from the same Markua document, and can even
output print-ready PDFs and InDesign files from them as well.

Markua has been developed with extensive real-world testing and feedback. Markua
has been used by Leanpub authors for years, both to create books and massive
open online courses (MOOCs).

Markua's three main contributions are the following:

1. The mapping of Markdown headings (h1, h2, h3, etc.) to book structures
   (parts, chapters, sections, sub-sections, etc.), which provides the ability
   for Markua Processors like Leanpub to produce an ebook from a Markua
   manuscript with one click.
2. The unified resource and attribute list syntax, which lets Markua handle
   audio, code, math and video in the same way that it does images, and which
   supports inline, local and web resource locations.
3. The mapping of book structures to courses, and the creation of a plain-text
   based microformat for course quizzes and exercises, which supports automated
   marking and automated production of everything which is required for a MOOC.

If you have written something (say blog posts or lecture notes) in Markdown, you
can use a Markua Processor, such as Leanpub, to turn them into an ebook or
course with one click. Then, as you go down the path of enhancing the manuscript
and adding things which only make sense in books or courses, this process will
feel like decorating, not converting.

The goal is for writers who are familiar with Markdown to feel that Markdown
somehow grew an understanding of book and course concepts. This goal has also
informed the structure of this specification: instead of writing a separate spec
from scratch, the Markua spec is a fork of the CommonMark spec with the GitHub
Flavored Markdown (GFM) extensions. Everything new in Markua is written as a set
of extensions to CommonMark, and everything in the CommonMark spec after the
introduction is preserved verbatim.

## Why the name "Markua"?

When I set out to specify Markua, I realized I needed a name. I wanted a name
that conveyed the love that I have for Markdown while not implying endorsement
by John Gruber in any way. I also did not want a name which referenced Leanpub:
Markua is a standalone specification with its own identity, which anyone
(including Leanpub competitors) can freely implement. Finally, I was on vacation
in Hawaii when I named Markua, and I wanted something that sounded happy,
friendly and almost Hawaiian. (Yes, I'm aware that there is no r in Hawaiian.)
I also wanted a name that had its .com domain name available, and that was short
and spellable, for branding purposes. The Markua name had all these properties.

## Purpose, structure and attribution of the Markua Spec

The Markua Spec contains a brief introduction to Markua syntax and philosophy
and a formal specification of Markua.

The Markua Spec is based on the GitHub Flavored Markdown (GFM) Spec, which is
based on the CommonMark Spec. The author of the CommonMark Spec is John
MacFarlane.

This Introduction chapter contains a number of introductory sections about
Markua and its relationship to Markdown, CommonMark and GFM.

The remainder of the document is the formal specification of Markua. These
sections are intended to serve as a reference for authors with advanced
questions about Markua syntax and for people implementing Markua processors.

Like GFM, Markua is a strict superset of CommonMark. All the features which are
supported in Markua that are not specified in the original CommonMark Spec are
hence known as **extensions**, and highlighted as such.

The Markua Spec is written in a bit of a strange fashion. Everything after
the Introduction is technically about Markua, but there are three types of
sections:

1. A section written by John MacFarlane about CommonMark
2. A section written by GitHub employees about GFM extensions, modified if
   necessary
3. A section written by Peter Armstrong about Markua

Together, these sections combine to define Markua, since Markua is CommonMark
plus (identical or modified) GFM extensions plus Markua extensions.

To be clear:

* The Introduction sections about CommonMark and GFM were all deleted, except
the "About this document" section, which was heavily modified. The reason for
this approach was that it was too confusing to have introductions to
CommonMark, GFM and Markua in the same document.
* Many of the sections in the Introduction are heavily based on sections in
[The Markua Manual](https://leanpub.com/markua), which is the user guide on how
to write in Markua on Leanpub. (I'm also the author of *The Markua Manual*, so
I'm reusing my own work in this chapter. *The Markua Manual* began life as the
standalone book *The Markua Specification*, and it had its scope reduced when I
decided to base the Markua Spec on the CommonMark Spec.)
* Every section about CommonMark after the Introduction is preserved verbatim.
These sections were written by John MacFarlane.
* The sections about GFM, which are about GFM extensions to CommonMark, are
either preserved verbatim or are modified to reflect the changes made by Markua.
GFM sections which are preserved verbatim have "(GFM extension, identical)" in
their titles. GFM sections which have been modified have "(GFM extension,
modified)" in their titles.
* The sections about Markua in subsequent chapters are organized into
extensions, just as the GFM sections are. These sections all have "(Markua
extension)" in their titles. There are a lot of them!
* The Appendices about Markua are grouped together as Markua Appendices.
* The "A parsing strategy" appendix was written by John MacFarlane about
CommonMark, and like everything after the introduction by John MacFarlane, it is
preserved verbatim.

There are two main benefits of this approach to writing this document.

1. It is abundantly clear whether something that Markua does originates in
   Markdown (as specified by CommonMark), or whether it was added by GFM or
   Markua. This is important for authors, since it will show them what will
   work in other Markdown dialects, and what won't.
2. It means that updating this document as the CommonMark and GFM specs are
   updated will be very easy.

There three main drawbacks, however:

1. It would be nice to see "Markua" everywhere, instead of a combination of
   "Markua" and "CommonMark". For example, the [Characters and lines](#characters-and-lines)
   section starts with a sentence ending "...is a valid CommonMark document."
   It would be less jarring to read "...is a valid Markua document." However,
   this would not preserve what John MacFarlane wrote verbatim, and my judgment
   is that it's more important to keep those sections unchanged than it is to
   make everything say "Markua".
2. Sometimes, what Markua does is not specified fully in one section. So,
   occasionally there are two consecutive sections about essentially the same
   feature, such as "Autolinks" and "Autolinks (GFM extension, identical)".
3. In one case, there is contradictory information. This case is the handling
   of raw HTML tags. CommonMark supports raw HTML, and this is explained in the
   [Raw HTML](#raw-html) section. So, readers who only read that section would
   (incorrectly) think that Markua supported raw HTML. However, GFM then
   disallows some raw HTML tags. Furthermore, Markua then cheekily extends this
   to disallow **ALL** raw HTML except for HTML comments, and explains this in
   the [Disallowed Raw HTML (GFM extension, extended)](#disallowed-raw-html-gfm-extension-extended-)
   section. Thankfully, this is the worst case, and most of the extensions of
   both GFM and Markua to CommonMark are purely additive in nature.

## Modifications to GFM extensions

Note that while Markua is a strict superset of CommonMark, it is not a strict
superset of GFM. Specifically, with respect to the GFM extensions, this is
what Markua does:

### Tables GFM extension

This GFM extension is preserved verbatim. I considered requiring leading and
trailing pipes (`|`), but since GFM tables require a delimiter line, this is
enough to prevent false positives.

### Task list items GFM extension

This GFM extension is removed. Markua is for books and courses, not todo lists.

### Strikethrough GFM extension

This GFM extension is preserved verbatim.

### Autolinks GFM extension

This GFM extension is preserved verbatim. While this extension is neutral for
paper books, ebooks and courses do stand to benefit from this.

### Disallowed Raw HTML GFM extension

As discussed above, this GFM extension originally disallowed a handful of HTML
tags, primarily for security reasons. In Markua, it is extended to disallow
**all** HTML tags except HTML comments. Yes, calling something which removes
part of a feature an "extension" was a bit of a stretch in GFM (it's more of a
reduction), and in this instance, Markua takes this approach and turns it up to
11. `¯\_(ツ)_/¯`

## About this document

A Markua Processor must be able to properly parse a Markua document and output
HTML, as well as any other suitable output formats. For example, the output
formats which Leanpub produces from a single Markua document are: PDF, EPUB,
MOBI, HTML, InDesign and (if applicable) a course with quizzes, exercises and
automated marking.

This document attempts to specify Markua syntax unambiguously. It does not,
however, precisely define all output formats or the content of those output
formats. Instead, the only required output format of a Markua Processor is HTML.
Also, HTML is the only output format where any specification is provided.
The reason that HTML is a required output format for a Markua
Processor to be able to help ensure conformance to the Markua Spec.

This document contains many examples with side-by-side Markua and
HTML.  These are intended to double as conformance tests.  An
accompanying script `spec_tests.py` can be used to run the tests
against any Markua program:

    python test/spec_tests.py --spec spec.txt --program PROGRAM

Since this document describes how Markua is to be parsed into
an abstract syntax tree, it would have made sense to use an abstract
representation of the syntax tree instead of HTML.  But HTML is capable
of representing the structural distinctions we need to make, and the
choice of HTML for the tests makes it possible to run the tests against
an implementation without writing an abstract syntax tree renderer.

Please note that this is not a complete specification of the HTML documents
produced by Markua Processors. It is only a specification of the parts of the
HTML mapping where there is no need to have flexibility on the part of the
Markua Processor. The HTML mapping should be thought of specifying HTML
fragments, not documents. In all of the examples, a Markua Processor may add
more HTML before and after the relevant content. The test is that the HTML
produced contains the specified output, not that it is identical to the
specified output.

This document is generated from a text file, `spec.txt`, written
in Markdown with a small extension for the side-by-side tests. The script
`tools/makespec.py` can be used to convert `spec.txt` into HTML or CommonMark
(which can then be converted into other formats).

In the examples, the `→` character is used to represent tabs.

Every example uses the default Markua document settings, unless otherwise
specified. Any custom settings are specified in a document settings list in the
top of the example.

Finally, Markua does not specify any CSS. However, advice will sometimes be
offered in "CSS Note" sections. This is because certain semantically meaningful
formatting (like strikethrough) is only done in HTML via CSS.

## Handling errors and warnings

Markua is very easy to write in. However, it is possible (especially when
creating a course) to make mistakes.

There are three types of issues which can occur:

1. **Warning:** This is a situation where the author is not making a mistake
   according to the Markua Spec, but the Markua Processor may not be able to do
   what is intended. This includes things like unrecognized or unsupported
   attributes, or Markua features which have not been implemented by the Markua
   Processor. When a Markua Processor encounters content which produces a
   warning, it should format the text block which contains the
   warning-producing content as well as possible.
2. **Error:** This is an error made by the author which should not prevent the
   book or course from being produced. This describes almost every error that
   can be made by an author. This can be as simple as too many consecutive
   asterisks in formatting text, to as complex as bugs with list indentation or
   table formatting. When a Markua Processor encounters an error, it should
   format the text block which contains the error as plain paragraph text.
3. **Fatal Error:** This is an error made by the author which should prevent the
   book or course from being produced. This basically never happens when
   creating a book in Markua, but it can happen when creating a course, if a
   quiz or exercise is invalid. (Since quizzes and exercises can be used by
   Markua Processors such as Leanpub to create MOOCs which students take for
   marks, it's crucial for them to be valid. It would do an author a disservice
   to publish a course with invalid quizzes or exercises.) When a Markua
   Processor encounters a fatal error, it should not generate a book or course
   from the Markua document.

Throughout the Markua Spec, you will encounter the phrases "is a fatal error",
"is an error" or "should produce a warning" to describe these cases.

Whenever a Markua Processor encounters something which is an error (fatal or not)
or should produce a warning, it should also add an error or warning message to a
list of error and warning messages. The content of this message should ideally be
helpful, and indicate the position of the error or warning in the Markua
document, whether it is an error or a warning, and as much information about the
error or warning as is helpful.

The Markua Processor should keep going whenever possible, to continue processing
the remainder of the Markua document. It would be really annoying for authors to
only get one error or warning at a time from a Markua Processor. You want to
find as many errors and warnings as possible.

When a Markua Processor is done processing a Markua document, it should provide
the list of errors and warnings to the author via the appropriate channels. For
a web-based tool, this can be a web page and/or an email message. For a
command-line tool, this can be command-line output and/or an error log file.

Finally, a Markua Processor is NOT allowed to output the list of errors and
warnings in the output format(s) (such as PDF, EPUB, MOBI or HTML) which it is
producing.

## Differences with Markua beta

Markua originated in 2014 (!) as a standalone specification, and evolved for a
number of years in beta before being rewritten in its current form.

As such, there are a number of differences with various versions of the Markua
spec. Frankly, there were a number of cases where the original Markua decision
was better, in isolation. However, at a big picture level, the tradeoff of being
incompatible with CommonMark and GFM was not worth these improvements.

### Newline Changes

Soft line breaks (i.e. single newlines) can now be configured to output a space
(with `soft-breaks: space`), a newline in the HTML source (with
`soft-breaks: source`) or a break tag in HTML (with `soft-breaks: break`).

The default is `source`, for compatibility with Markdown as specified by
CommonMark.

Forced line breaks are done with the two-space hack or the backslash hack, or
by setting the `soft-breaks: break`. The behaviour of the Markua beta was to
always have `soft-breaks: break`. So, if you have a book which was written in
the style of the Markua beta, you will want to set the `soft-breaks: break`
in the document settings.

### List Changes

In the Markua beta, great care was used to construct a syntax for nested lists
which was flexible and powerful, and supported all kinds of indentation styles
and numbering systems.

It was also, however, incompatible with Markdown lists and newline handling.
Specifically, it relied on newlines always being hard breaks. Since this is no
longer true in Markua, the old Markua beta list support (for flat, simple and
complex lists) is no longer supported.

So, what Markua does instead is the following:

1. Use Markdown's list support as specified by CommonMark.
2. Provides a `default-list-numbering` document setting which defines how
   nested numbered lists are output.
3. Provides a `numbering` attribute which can be set on numbered list to
   override this document setting for the particular list.

### Image Changes

The largest breaking change is in how figures, and especially images, are
handled.

Images in the Markua beta were:

```
{alt: "Some alt text"}
![The Figure Caption](url)
```

Images in Markua are now:

```
![Some alt text](url "The Figure Title")
```

This is to bring Markua into compatibility with Markdown and CommonMark.

Also, in the Markua beta, there was support for both a `caption` and a `title`
attribute. The `caption` was typically what was specified, and it was used as
the `title` if no `title` was present. (The caption was the text shown near
the figure; the title was its name in a table of tables or list of figures.)
So, in the Markua beta, you could do this:

```
{alt: "Some alt text", caption: "The Caption", title: "The Title"}
![](url)
```

This was equivalent to this in the Markua beta:

```
{alt: "Some alt text", title: "The Title"}
![The Caption](url)
```

In Markua, there is no more `caption` attribute. The `title` attribute is used
for both the figure caption and the figure name in any table of tables or list
of figures. (So, the `title` is now both the title and the caption.)

So, in Markua, you can do this:

```
{alt: "Some alt text", title: "The Title"}
![](url)
```

This is equivalent to this in Markua:

```
![Some alt text](url "The Figure Title")
```

As an aside, since it's used for both places, it could have been called either
the `title` or the `caption`. The name `title` was chosen, since that is what
HTML attribute is set by CommonMark.

### Figure Changes

While this is the correct decision for images, Markua has generalized the
Markdown image syntax into a syntax for external resources, including code
samples, audio, video, math and tables. So, this change means that all
resources, even those that do not need alt text, end up using that syntax
change.

So, external code samples were:

```
![Hello World](hello.rb)
```

External code samples now are:

```
![](hello.rb "Hello World")
```

This is somewhat unfortunate, but necessary for consistency. Also, if you have
internalized "square brackets = alt text", this is preferable.

### Other Changes

The other breaking changes with the early Markua beta include the following:

* Complex tables have been removed
* Enhanced list support has been removed
* The three-backtick syntax is generalized code fences
* Code fences are for code by default (incl. SVG); to change the type of an
  inline resource in a code fence you must use an attribute list
* Headings now use the Markdown style of Setext and atx headings, as specified
  by CommonMark. Note that unlike previous versions of Markua, with atx headers
  you can use as many # signs after the heading text as you want; trailing `#`
  characters after whitespace are ignored, just as in CommonMark.
* Parts need {class: part} since atx headings are used unchanged, instead of
  relying on the presence of a trailing ` #` to differentiate part and chapter
  headings. On the plus side, Setext chapter headings can get this attribute
  and make parts now.
* Setext headings for sub-sections and below require attribute lists to define
  what they are. (With no attribute list, it's a chapter or section based on the
  delimiter.)
* Indented code blocks from Markdown are now supported, as specified by
  CommonMark.
* Using `===` for page break is no longer supported, since Setext headings were
  restored. Use `{break: page}` instead.

## Differences with Leanpub Flavoured Markdown (LFM)

Besides differences with Markdown in general, Markua also has a number of
specific differences with Leanpub Flavoured Markdown (LFM).

These are the top 9 differences between Markua and LFM:

1. In LFM, parts are created with `-# Part`. In Markua, parts are created an
   attribute list on an atx or Setext heading.
2. In LFM, there is a special syntax for inserting code samples:
   `<<[Optional Title](code/some_code_file.rb)`. In Markua, however, code
   is just a resource, and the LFM syntax is not supported.
3. In LFM, to mark code as added or removed, the magic words were
   `leanpub-start-insert`, `leanpub-end-insert`, `leanpub-start-delete` and
   `leanpub-end-delete`. In Markua, the magic words are `markua-start-insert`,
   `markua-end-insert`, `markua-start-delete` and `markua-end-delete`.
4. In LFM, there is a special syntax for inserting math: `{$$}...{/$$}`. This
   looks nice to people who like LaTeX, and looks like nothing else in
   Markdown. In Markua, however, math is just another resource, and that
   LaTeX-inspired syntax for wrapping math resources is not supported.
5. In LFM, there are `G>` "generic boxes". In Markua, these are replaced with
   blurbs (`B>`).
6. LFM had the `C>` syntax to center text, but we didn't have the same effect on
   generic boxes, and blurbs did not exist. In Markua, a `C>` syntax is just
   syntactic sugar for a centered blurb, for greater consistency. Because of
   this, the blurb also gets the ability to be centered by adding a
   `{class: center}` attribute.
7. LFM had `{rtl}` and `{ltr}` directives. These are not supported in Markua,
   and neither is a `{dir}` attribute in general: any given language is either a
   left-to-right or a right-to-left language, so specifying the language with
   the `lang` document setting and the `{lang: ___}` directive is sufficient.
8. LFM used Sample.txt to define the sample content. Markua moves the definition
   of what constitutes sample content into a `{sample: true}` attribute on
   parts, chapters and sections. So, in Markua, inclusion in the sample is at
   the content level, not the file level. This helps avoid a number of bugs that
   could happen with including at the file level, if a file did not clearly
   break at a chapter boundary. (So, in Leanpub, the Sample.txt approach is not
   supported for books which use Markua.)
9. LFM used Book.txt to define the book content. In Markua, the way that the
   list of manuscript files is defined is considered out of scope of the Markua
   specification itself. (Leanpub still uses the Book.txt approach to specify
   which files are in a book, but other Markua Processors could use other
   approaches.)
10. Using {pagebreak} is no longer supported. Use the `{break: page}` directive
    instead.

Besides these differences, there are a number of smaller ones, which you will
discover if you compare the Markua Spec to the
[Leanpub Flavoured Markdown Manual](https://leanpub.com/leanpubflavouredmarkdownmanual/).

## A Note for Leanpub authors

If you're a Leanpub author writing in Markua, this is **NOT** what you should be
reading. Leanpub's current Markua implementation was based on an earlier beta of
the Markua spec.

Leanpub authors should read [The Markua Manual](https://leanpub.com/markua/read)
to learn how to write in Markua on Leanpub today.

The Markua Manual recommends the way to write using Leanpub's current Markua
support which is most compatible with the version of Markua described in this
spec.

## Acknowledgments

I ([Peter Armstrong](https://twitter.com/peterarmstrong)) am the creator of
Markua, but I'm getting lots of help, especially from my Leanpub cofounders
[Scott Patten](https://twitter.com/scott_patten), [Len Epp](https://twitter.com/lenepp)
and [Braden Simpson](https://twitter.com/bradensimpson). Scott is the lead
developer of Leanpub's book generation engine (both the LFM and Markua versions),
and he has given me both the most and the best feedback about Markua over the
years that I've been working on it.

Perhaps most important, Markua is built on Markdown. So, Markua literally would
not exist without John Gruber and Aaron Swartz. Markua is now also using the
CommonMark spec as its starting point, so I am really grateful to John MacFarlane
(the author of the CommonMark spec) and the team behind CommonMark and `cmark`.
I'm also really grateful to GitHub for adopting Markdown, for basing the GitHub
Flavored Markdown spec on the CommonMark spec, and for their work on `cmark-gfm`.

Markua is also benefitting from years of feedback about Leanpub Flavoured
Markdown and Markua, from many incredibly helpful and patient Leanpub authors.
If it wasn't for these authors, there would be no Leanpub, and no Markua.

I'd also like to thank my father, who read some of the very early manuscripts
when this was a standalone spec and gave me feedback.

Finally, I would like to thank my wife Caroline and my son Evan: while this is
not as long as my other books, a lot of thought and effort went into it, and a
lot of sacrifice. Thanks very much.





--------------------------------------------------------------------------------------




# SPEC



<div class="extension-chunk">

---
title: Markua Spec
author: '*This formal specification of Markua is written by Peter Armstrong and is based on the CommonMark Spec by John MacFarlane, and is licensed under the Creative Commons license CC-BY-SA 4.0.*'
version: 0.29
date: '2019-06-05'
license: '[CC-BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/)'
...

# Introduction

## A note for Leanpub authors

If you're a Leanpub author writing in Markua, this is **NOT** what you should be
reading.

Leanpub's current Markua implementation was based on an earlier beta of the
Markua spec. Leanpub authors should read
[The Markua Manual](https://leanpub.com/markua/read) to learn how to write in
Markua on Leanpub today.

The Markua Manual recommends the way to write using Leanpub's current Markua
support which is also the most compatible with the version of Markua that is
specified here.

Leanpub is working on supporting the version of Markua that is specified here.
Once we have done this, we will also provide tooling to help convert books and
courses that were written in the Markua beta into this version of Markua.
After that is done, we will also provide tooling to help convert books that were
written in Leanpub Flavoured Markdown into this version of Markua.

## The magical typewriter

Imagine you owned a magical typewriter.

When you used this magical typewriter, you wrote with fewer distractions. You
didn't just write faster, you wrote better.

With your magical typewriter, you never worried about layout. The book formatted
itself.

You could hit a key on your magical typewriter to create an ebook from your
manuscript with one click.

All ebook formats would be created, and they'd all look good. You'd have PDF for
computers, MOBI for Kindle, and EPUB for everywhere else. The book would look
great on phones.

With your magical typewriter, you could publish your book before it was even
done, and get feedback from readers all over the world. You could automatically
share book updates with them. You would press one key on your magical typewriter
to publish a new version, and all your readers would have it instantly.

With your magical typewriter, you could easily compare your current manuscript
to any other version of your manuscript that had ever existed.

If you decided to make a print book, you could press a key on your magical
typewriter to get a print-ready PDF. All you would need to do is add a cover.
Or, if you wanted to work with a designer or publisher, you could press a
different key to generate InDesign. They could then use this as a starting point
for producing a beautiful print book.

Your magical typewriter could even transform your completed book manuscript into
a course that anyone in the world could take. All you'd need to do is to
add some quizzes and exercises and then press a key for your magical typewriter
to publish a massive open online course (MOOC) for you. The quizzes and exercises
would mark themselves, and students would get certificates based on how well
they did.

With your magical typewriter, you'd only have to do one thing:

Write.

Wouldn't it be great if such a magical typewriter existed?

It does. At [Leanpub](https://leanpub.com), we're building it.

But there's one requirement for this magical typewriter to exist: a simple,
coherent, open source, free, plain text format for a book or course manuscript.

This simple format will be the basis for the magical typewriter.

This simple format is called Markua.

This is its specification.

## How to write a novel in Markua

The Markua specification is long. However, the amount you need to learn to get
started is actually very short.

This example shows everything you need to know to write a novel in Markua:

~~~
# Chapter One

This is a paragraph. You just write.

Blank lines separate paragraphs. This is *italic* and **bold**.

* * *

That was a thematic break. "This is in quotes."

# Chapter Two

This is a paragraph in a new chapter.
~~~

Specifically, these are the rules:

1. Paragraphs are separated from other paragraphs by blank lines.
   (To add a blank line, add two consecutive newlines.)
2. To make a chapter heading, start a line with a pound sign (`#`), followed by
   a space and the name of the chapter.
3. To add a thematic break (also known as a scene break), put three asterisks
   (`* * *`) on a line with only whitespace.
4. Chapter headings and thematic breaks are separated from paragraphs by single
   newlines or blank lines. Blank lines are preferred for readability.
5. By default, single newlines in paragraphs turn into single spaces in the
   output, so you can manually wrap your paragraphs with newlines if you want.
   It's optional, however, and typically a waste of time.
6. Use `*one asterisk*` for italic and `**two asterisks**` for bold.
7. All other text and punctuation is typed normally.

That's it!

## How to write a computer programming book in Markua

The following example shows basically everything you need to know to write a
computer programming book in Markua:

~~~
# Chapter One

This is *italic* and **bold**.

Here's an image:

![a red apple](mac.jpg "The Original Mac")

## Section One

You can have ordered and unordered lists, including nested lists:

1. foo
   a) lorem
   b) ipsum
2. bar
   * stuff
   * more stuff
3. baz

### A Sub-Section

You can even have definition lists!

term 1
: definition 1a
: definition 1b

term 2
: definition 2

## Another Section

Tables work too:

| Header 1  | Header 2  |
| --------- | --------- |
| Content 1 | Content 2 |
| Content 3 | Content 4 |

You can have external code samples:

![](hello.rb "Hello World in Ruby")

You can also inline code samples:

{title: "Hello World in Ruby"}
```ruby
puts "hello"
```

You can also include single lines of code like `puts "hello"` in paragraphs.

> Blockquotes are really easy too.
> --Peter Armstrong, *Markua Spec*

Finally, you can do that with math `d = v_i t + \frac{1}{2} a t^2`$ too.
~~~

As you can see, there is more syntax, including ordered and unordered lists,
definition lists, tables, block quotes, external and inline code samples,
inline math, etc. However, even with all this, the Markua document remains
readable. Exactly how all of this syntax works is explained in the spec.

## How to write a course (MOOC) in Markua

To write a course in Markua, you can start from scratch or from a book
manuscript already formatted in Markua. Literally, all you need to do to turn a
book written in Markua into a course is to add some quizzes.

The following is a complete course, written in Markua:

```
# Lesson One: Markua

## Section One

Lessons can have sections (and sub-sections, etc.) just like book chapters.
You can use the same headings as you do for book chapters and sections.

This exercise shows two multiple choice questions.

{exercise, id: exercise1}
? How many letters are in the word Markdown?

a) 6
b) 7
C) 8

? How many unique letters are in the word CommonMark?

a) 6
B) 7
c) 8
{/exercise}

## Section Two

This quiz shows a multiple choice question and a fill in the blank question.

{quiz, id: quiz1}
? How many letters are in the word Markua?

a) 5
B) 6
c) 7

? How many unique letters are in the word Markua?

! 5
{/quiz}

# Lesson Two: Geography

This quiz shows two fill in the blank questions, with multiple answers and with
a regex answer.

{quiz, id: quiz2}
? What's the global capital of investment banking?

! New York
! London

? Where's the Eiffel Tower?

! /(Paris|France)/i
{/quiz}

# Lesson Three: Biology

This one-question quiz shows a multiple selection question.

{quiz, id: quiz3}
? Which of these are fruits?

T) apple
F) cow
F) lettuce
T) peach
T) pear
F) rice
{/quiz}
```

As this example shows, the syntax for writing normal content is the same as for
books. All that's different is the addition of quizzes and exercises.

Quizzes and exercises have the same type of content. However, with quizzes the
marks count toward your mark in the course, and with exercises they don't count.
For MOOCs, Markua supports multiple choice, fill in the blank and multiple
selection questions.

A multiple choice question has 2 or more answer choices, and 1 correct answer
choice. The correct answer choice is in a capital letter; incorrect answer
choices have lowercase letters.

A fill in the blank question consists of a question and a set of answers.
You can even use regular expressions for the answers.

A multiple selection question makes learners select every true answer, and leave
every false answer not selected.

As explained in the spec, there are more types of questions, and more options
with these types of questions. However, what is shown above is enough to create
a full MOOC out of a Markua book.

## Markua heading mapping to book and course structures

Markua is a way of writing books and courses. Books have things like chapters
and sections. Sometimes books have parts. Courses have lessons, which can be
organized in parts and grouped into sections.

In Markua, you make the appropriate headings using the standard atx or Setext
headings of Markdown, and these produce the appropriate level of heading.

* `h1` (with a `{class: part}` attribute list) produces a part heading
* `h1` (without a `{class: part}` attribute list) produces a chapter heading
* `h2` produces a section heading
* `h3` produces a sub-section heading
* `h4` produces a sub-sub-section heading
* `h5` produces a sub-sub-sub-section heading
* `h6` produces a sub-sub-sub-sub-section heading

With the Markdown atx headers, this is all really straightforward:

```
{class: part}
# A Part Heading (h1)

# A Chapter Heading (h1)

## A Section Heading (h2)

### A Sub-Section Heading (h3)

#### A Sub-Sub-Section Heading (h4)

##### A Sub-Sub-Sub-Section Heading (h5)

###### A Sub-Sub-Sub-Sub-Section Heading (h6)
```

With the Markdown Setext headers, you can only go to h2, so you can only make
part, chapter and section headings using Setext headers:

```
{class: part}
A Part Heading (h1)
===================

A Chapter Heading (h1)
======================

A Section Heading (h2)
----------------------
```

Both produce identical HTML for the part, chapter and section headings.
The `{class: part}` gets passed into the HTML as a `class="part"`, as is shown
in the [Part Headings](#part-headings-markua-extension-) extension. The other
headings all look identical to the Markdown headings as specified by CommonMark.
So, they are just discussed in the [ATX headings](#atx-headings) and
[Setext headings](#setext-headings) sections.

If you are using Setext headings and you realize you need sub-sections and lower,
you can need to use atx headings for them. It's up to you, however, whether you
convert the Setext headings for parts, chapters and sections. Mixing and
matching heading styles is ugly, but it is permitted.

## Markua: Markdown for books and courses

Markua, pronounced "mar-coo-ah", is Markdown for books and courses.

Markua is simple and powerful. When you are writing using Markua, you are
writing, not programming. Once you understand Markua's syntax, it fades into the
background.

Markua is based on [Markdown](http://daringfireball.net/projects/markdown/).
Markdown is a plain text format for writing text which can be transformed by
Markdown processors into HTML. Markdown was created by John Gruber, with help
from Aaron Swartz. Markdown was described by John Gruber as follows:

> Markdown is a text-to-HTML conversion tool for web writers. Markdown allows
you to write using an easy-to-read, easy-to-write plain text format, then
convert it to structurally valid XHTML (or HTML).

The primary reason that Markdown is a great way to write is that it was designed
to be this way:

> The overriding design goal for Markdown's formatting syntax is to make it as
readable as possible. The idea is that a Markdown-formatted document should be
publishable as-is, as plain text, without looking like it's been marked up with
tags or formatting instructions. While Markdown's syntax has been influenced by
several existing text-to-HTML filters, the single biggest source of inspiration
for Markdown's syntax is the format of plain text email.

Markua is a plain text format. Markua is basically Markdown, minus all inline
HTML except comments, plus a number of extensions to support everything you need
to write a book or create a course.

Markua manuscripts, called Markua documents, can be written however you want. On
a computer, you can use any text editor you want. Beginning authors can use
simple programs like Notepad or TextEdit or "distraction-free" programs like
iA Writer; authors who are programmers can use editors like Emacs, Vim, Atom or
VSCode. Since Markua is essentially a superset of Markdown, many programs which
support Markdown should already do a decent job of supporting Markua by default.

Markua maps Markdown syntax to book concepts, and then adds some new syntax and
concepts of its own.

Markua documents can be automatically transformed into every popular type of ebook
format. The computer programs which do this transformation are called Markua
Processors. These programs understand both Markua syntax and how to generate the
various output formats. An example Markua Processor is Leanpub: Leanpub can
output PDF, EPUB, MOBI and HTML from the same Markua document, and can even
output print-ready PDFs and InDesign files from them as well.

Markua has been developed with extensive real-world testing and feedback. Markua
has been used by Leanpub authors for years, both to create books and massive
open online courses (MOOCs).

Markua's three main contributions are the following:

1. The mapping of Markdown headings (h1, h2, h3, etc.) to book structures
   (parts, chapters, sections, sub-sections, etc.), which provides the ability
   for Markua Processors like Leanpub to produce an ebook from a Markua
   manuscript with one click.
2. The unified resource and attribute list syntax, which lets Markua handle
   audio, code, math and video in the same way that it does images, and which
   supports inline, local and web resource locations.
3. The mapping of book structures to courses, and the creation of a plain-text
   based microformat for course quizzes and exercises, which supports automated
   marking and automated production of everything which is required for a MOOC.

If you have written something (say blog posts or lecture notes) in Markdown, you
can use a Markua Processor, such as Leanpub, to turn them into an ebook or
course with one click. Then, as you go down the path of enhancing the manuscript
and adding things which only make sense in books or courses, this process will
feel like decorating, not converting.

The goal is for writers who are familiar with Markdown to feel that Markdown
somehow grew an understanding of book and course concepts. This goal has also
informed the structure of this specification: instead of writing a separate spec
from scratch, the Markua spec is a fork of the CommonMark spec with the GitHub
Flavored Markdown (GFM) extensions. Everything new in Markua is written as a set
of extensions to CommonMark, and everything in the CommonMark spec after the
introduction is preserved verbatim.

## Why the name "Markua"?

When I set out to specify Markua, I realized I needed a name. I wanted a name
that conveyed the love that I have for Markdown while not implying endorsement
by John Gruber in any way. I also did not want a name which referenced Leanpub:
Markua is a standalone specification with its own identity, which anyone
(including Leanpub competitors) can freely implement. Finally, I was on vacation
in Hawaii when I named Markua, and I wanted something that sounded happy,
friendly and almost Hawaiian. (Yes, I'm aware that there is no r in Hawaiian.)
I also wanted a name that had its .com domain name available, and that was short
and spellable, for branding purposes. The Markua name had all these properties.

## Purpose, structure and attribution of the Markua Spec

The Markua Spec contains a brief introduction to Markua syntax and philosophy
and a formal specification of Markua.

The Markua Spec is based on the GitHub Flavored Markdown (GFM) Spec, which is
based on the CommonMark Spec. The author of the CommonMark Spec is John
MacFarlane.

This Introduction chapter contains a number of introductory sections about
Markua and its relationship to Markdown, CommonMark and GFM.

The remainder of the document is the formal specification of Markua. These
sections are intended to serve as a reference for authors with advanced
questions about Markua syntax and for people implementing Markua processors.

Like GFM, Markua is a strict superset of CommonMark. All the features which are
supported in Markua that are not specified in the original CommonMark Spec are
hence known as **extensions**, and highlighted as such.

The Markua Spec is written in a bit of a strange fashion. Everything after
the Introduction is technically about Markua, but there are three types of
sections:

1. A section written by John MacFarlane about CommonMark
2. A section written by GitHub employees about GFM extensions, modified if
   necessary
3. A section written by Peter Armstrong about Markua

Together, these sections combine to define Markua, since Markua is CommonMark
plus (identical or modified) GFM extensions plus Markua extensions.

To be clear:

* The Introduction sections about CommonMark and GFM were all deleted, except
the "About this document" section, which was heavily modified. The reason for
this approach was that it was too confusing to have introductions to
CommonMark, GFM and Markua in the same document.
* Many of the sections in the Introduction are heavily based on sections in
[The Markua Manual](https://leanpub.com/markua), which is the user guide on how
to write in Markua on Leanpub. (I'm also the author of *The Markua Manual*, so
I'm reusing my own work in this chapter. *The Markua Manual* began life as the
standalone book *The Markua Specification*, and it had its scope reduced when I
decided to base the Markua Spec on the CommonMark Spec.)
* Every section about CommonMark after the Introduction is preserved verbatim.
These sections were written by John MacFarlane.
* The sections about GFM, which are about GFM extensions to CommonMark, are
either preserved verbatim or are modified to reflect the changes made by Markua.
GFM sections which are preserved verbatim have "(GFM extension, identical)" in
their titles. GFM sections which have been modified have "(GFM extension,
modified)" in their titles.
* The sections about Markua in subsequent chapters are organized into
extensions, just as the GFM sections are. These sections all have "(Markua
extension)" in their titles. There are a lot of them!
* The Appendices about Markua are grouped together as Markua Appendices.
* The "A parsing strategy" appendix was written by John MacFarlane about
CommonMark, and like everything after the introduction by John MacFarlane, it is
preserved verbatim.

There are two main benefits of this approach to writing this document.

1. It is abundantly clear whether something that Markua does originates in
   Markdown (as specified by CommonMark), or whether it was added by GFM or
   Markua. This is important for authors, since it will show them what will
   work in other Markdown dialects, and what won't.
2. It means that updating this document as the CommonMark and GFM specs are
   updated will be very easy.

There three main drawbacks, however:

1. It would be nice to see "Markua" everywhere, instead of a combination of
   "Markua" and "CommonMark". For example, the [Characters and lines](#characters-and-lines)
   section starts with a sentence ending "...is a valid CommonMark document."
   It would be less jarring to read "...is a valid Markua document." However,
   this would not preserve what John MacFarlane wrote verbatim, and my judgment
   is that it's more important to keep those sections unchanged than it is to
   make everything say "Markua".
2. Sometimes, what Markua does is not specified fully in one section. So,
   occasionally there are two consecutive sections about essentially the same
   feature, such as "Autolinks" and "Autolinks (GFM extension, identical)".
3. In one case, there is contradictory information. This case is the handling
   of raw HTML tags. CommonMark supports raw HTML, and this is explained in the
   [Raw HTML](#raw-html) section. So, readers who only read that section would
   (incorrectly) think that Markua supported raw HTML. However, GFM then
   disallows some raw HTML tags. Furthermore, Markua then cheekily extends this
   to disallow **ALL** raw HTML except for HTML comments, and explains this in
   the [Disallowed Raw HTML (GFM extension, extended)](#disallowed-raw-html-gfm-extension-extended-)
   section. Thankfully, this is the worst case, and most of the extensions of
   both GFM and Markua to CommonMark are purely additive in nature.

## Modifications to GFM extensions

Note that while Markua is a strict superset of CommonMark, it is not a strict
superset of GFM. Specifically, with respect to the GFM extensions, this is
what Markua does:

### Tables GFM extension

This GFM extension is preserved verbatim. I considered requiring leading and
trailing pipes (`|`), but since GFM tables require a delimiter line, this is
enough to prevent false positives.

### Task list items GFM extension

This GFM extension is removed. Markua is for books and courses, not todo lists.

### Strikethrough GFM extension

This GFM extension is preserved verbatim.

### Autolinks GFM extension

This GFM extension is preserved verbatim. While this extension is neutral for
paper books, ebooks and courses do stand to benefit from this.

### Disallowed Raw HTML GFM extension

As discussed above, this GFM extension originally disallowed a handful of HTML
tags, primarily for security reasons. In Markua, it is extended to disallow
**all** HTML tags except HTML comments. Yes, calling something which removes
part of a feature an "extension" was a bit of a stretch in GFM (it's more of a
reduction), and in this instance, Markua takes this approach and turns it up to
11. `¯\_(ツ)_/¯`

## About this document

A Markua Processor must be able to properly parse a Markua document and output
HTML, as well as any other suitable output formats. For example, the output
formats which Leanpub produces from a single Markua document are: PDF, EPUB,
MOBI, HTML, InDesign and (if applicable) a course with quizzes, exercises and
automated marking.

This document attempts to specify Markua syntax unambiguously. It does not,
however, precisely define all output formats or the content of those output
formats. Instead, the only required output format of a Markua Processor is HTML.
Also, HTML is the only output format where any specification is provided.
The reason that HTML is a required output format for a Markua
Processor to be able to help ensure conformance to the Markua Spec.

This document contains many examples with side-by-side Markua and
HTML.  These are intended to double as conformance tests.  An
accompanying script `spec_tests.py` can be used to run the tests
against any Markua program:

    python test/spec_tests.py --spec spec.txt --program PROGRAM

**NOTE: The web interface "Try It" buttons do not work yet on markua.com, and
will not work for a number of months, since the C-based and JS-based Markua
implementations are currently no more than their CommonMark and GFM
counterparts. So, since this is the case, the interactive "dingus" is not
hooked up yet, since there's no point in doing so yet.**

Since this document describes how Markua is to be parsed into
an abstract syntax tree, it would have made sense to use an abstract
representation of the syntax tree instead of HTML.  But HTML is capable
of representing the structural distinctions we need to make, and the
choice of HTML for the tests makes it possible to run the tests against
an implementation without writing an abstract syntax tree renderer.

Please note that this is not a complete specification of the HTML documents
produced by Markua Processors. It is only a specification of the parts of the
HTML mapping where there is no need to have flexibility on the part of the
Markua Processor. The HTML mapping should be thought of specifying HTML
fragments, not documents. In all of the examples, a Markua Processor may add
more HTML before and after the relevant content. The test is that the HTML
produced contains the specified output, not that it is identical to the
specified output.

This document is generated from a text file, `spec.txt`, written
in Markdown with a small extension for the side-by-side tests. The script
`tools/makespec.py` can be used to convert `spec.txt` into HTML or CommonMark
(which can then be converted into other formats).

In the examples, the `→` character is used to represent tabs.

Every example uses the default Markua document settings, unless otherwise
specified. Any custom settings are specified in a document settings list in the
top of the example.

Finally, Markua does not specify any CSS. However, advice will sometimes be
offered in "CSS Note" sections. This is because certain semantically meaningful
formatting (like strikethrough) is only done in HTML via CSS.

## Handling errors and warnings

Markua is very easy to write in. However, it is possible (especially when
creating a course) to make mistakes.

There are three types of issues which can occur:

1. **Warning:** This is a situation where the author is not making a mistake
   according to the Markua Spec, but the Markua Processor may not be able to do
   what is intended. This includes things like unrecognized or unsupported
   attributes, or Markua features which have not been implemented by the Markua
   Processor. When a Markua Processor encounters content which produces a
   warning, it should format the text block which contains the
   warning-producing content as well as possible.
2. **Error:** This is an error made by the author which should not prevent the
   book or course from being produced. This describes almost every error that
   can be made by an author. This can be as simple as too many consecutive
   asterisks in formatting text, to as complex as bugs with list indentation or
   table formatting. When a Markua Processor encounters an error, it should
   format the text block which contains the error as plain paragraph text.
3. **Fatal Error:** This is an error made by the author which should prevent the
   book or course from being produced. This basically never happens when
   creating a book in Markua, but it can happen when creating a course, if a
   quiz or exercise is invalid. (Since quizzes and exercises can be used by
   Markua Processors such as Leanpub to create MOOCs which students take for
   marks, it's crucial for them to be valid. It would do an author a disservice
   to publish a course with invalid quizzes or exercises.) When a Markua
   Processor encounters a fatal error, it should not generate a book or course
   from the Markua document.

Throughout the Markua Spec, you will encounter the phrases "is a fatal error",
"is an error" or "should produce a warning" to describe these cases.

Whenever a Markua Processor encounters something which is an error (fatal or not)
or should produce a warning, it should also add an error or warning message to a
list of error and warning messages. The content of this message should ideally be
helpful, and indicate the position of the error or warning in the Markua
document, whether it is an error or a warning, and as much information about the
error or warning as is helpful.

The Markua Processor should keep going whenever possible, to continue processing
the remainder of the Markua document. It would be really annoying for authors to
only get one error or warning at a time from a Markua Processor. You want to
find as many errors and warnings as possible.

When a Markua Processor is done processing a Markua document, it should provide
the list of errors and warnings to the author via the appropriate channels. For
a web-based tool, this can be a web page and/or an email message. For a
command-line tool, this can be command-line output and/or an error log file.

Finally, a Markua Processor is NOT allowed to output the list of errors and
warnings in the output format(s) (such as PDF, EPUB, MOBI or HTML) which it is
producing.

## Differences with Markua beta

Markua originated in 2014 (!) as a standalone specification, and evolved for a
number of years in beta before being rewritten in its current form.

As such, there are a number of differences with various versions of the Markua
spec. Frankly, there were a number of cases where the original Markua decision
was better, in isolation. However, at a big picture level, the tradeoff of being
incompatible with CommonMark and GFM was not worth these improvements.

### Newline Changes

Soft line breaks (i.e. single newlines) can now be configured to output a space
(with `soft-breaks: space`), a newline in the HTML source (with
`soft-breaks: source`) or a break tag in HTML (with `soft-breaks: break`).

The default is `source`, for compatibility with Markdown as specified by
CommonMark.

Forced line breaks are done with the two-space hack or the backslash hack, or
by setting the `soft-breaks: break`. The behaviour of the Markua beta was to
always have `soft-breaks: break`. So, if you have a book which was written in
the style of the Markua beta, you will want to set the `soft-breaks: break`
in the document settings.

### List Changes

In the Markua beta, great care was used to construct a syntax for nested lists
which was flexible and powerful, and supported all kinds of indentation styles
and numbering systems.

It was also, however, incompatible with Markdown lists and newline handling.
Specifically, it relied on newlines always being hard breaks. Since this is no
longer true in Markua, the old Markua beta list support (for flat, simple and
complex lists) is no longer supported.

So, what Markua does instead is the following:

1. Use Markdown's list support as specified by CommonMark.
2. Adds attributes to ordered lists, to support numbering lists in ascending or
   descending order, and with letters and Roman numerals.

Finally, the Markua beta called lists either "numbered" or "bulleted", since
all lists have an order. (Otherwise, they wouldn't be lists!) However, Markua
calls lists "ordered" and "unordered" for consistency with Markdown and HTML.

### Image Changes

The largest breaking change is in how figures, and especially images, are
handled.

Images in the Markua beta were:

```
{alt: "Some alt text"}
![The Figure Caption](url)
```

Images in Markua are now:

```
![Some alt text](url "The Figure Title")
```

This is to bring Markua into compatibility with Markdown and CommonMark.

Also, in the Markua beta, there was support for both a `caption` and a `title`
attribute. The `caption` was typically what was specified, and it was used as
the `title` if no `title` was present. (The caption was the text shown near
the figure; the title was its name in a table of tables or list of figures.)
So, in the Markua beta, you could do this:

```
{alt: "Some alt text", caption: "The Caption", title: "The Title"}
![](url)
```

This was equivalent to this in the Markua beta:

```
{alt: "Some alt text", title: "The Title"}
![The Caption](url)
```

In Markua, there is no more `caption` attribute. The `title` attribute is used
for both the figure caption and the figure name in any table of tables or list
of figures. (So, the `title` is now both the title and the caption.)

So, in Markua, you can do this:

```
{alt: "Some alt text", title: "The Title"}
![](url)
```

This is equivalent to this in Markua:

```
![Some alt text](url "The Figure Title")
```

As an aside, since it's used for both places, it could have been called either
the `title` or the `caption`. The name `title` was chosen, since that is what
HTML attribute is set by CommonMark.

### Figure Changes

While this is the correct decision for images, Markua has generalized the
Markdown image syntax into a syntax for external resources, including code
samples, audio, video, math and tables. So, this change means that all
resources, even those that do not need alt text, end up using that syntax
change.

So, external code samples were:

```
![Hello World](hello.rb)
```

External code samples now are:

```
![](hello.rb "Hello World")
```

This is somewhat unfortunate, but necessary for consistency. Also, if you have
internalized "square brackets = alt text", this is preferable.

### Other Changes

The other breaking changes with the early Markua beta include the following:

* Complex tables have been removed
* Enhanced list support has been removed
* The three-backtick syntax is generalized code fences
* Code fences are for code by default (incl. SVG); to change the type of an
  inline resource in a code fence you must use an attribute list
* Headings now use the Markdown style of Setext and atx headings, as specified
  by CommonMark. Note that unlike previous versions of Markua, with atx headers
  you can use as many # signs after the heading text as you want; trailing `#`
  characters after whitespace are ignored, just as in CommonMark.
* Parts need {class: part} since atx headings are used unchanged, instead of
  relying on the presence of a trailing ` #` to differentiate part and chapter
  headings. On the plus side, Setext chapter headings can get this attribute
  and make parts now.
* Setext headings for sub-sections and below require attribute lists to define
  what they are. (With no attribute list, it's a chapter or section based on the
  delimiter.)
* Indented code blocks from Markdown are now supported, as specified by
  CommonMark.
* Using `===` for page break is no longer supported, since Setext headings were
  restored. Use `{break: page}` instead.

## Differences with Leanpub Flavoured Markdown (LFM)

Besides differences with Markdown in general, Markua also has a number of
specific differences with Leanpub Flavoured Markdown (LFM).

These are the top 9 differences between Markua and LFM:

1. In LFM, parts are created with `-# Part`. In Markua, parts are created an
   attribute list on an atx or Setext heading.
2. In LFM, there is a special syntax for inserting code samples:
   `<<[Optional Title](code/some_code_file.rb)`. In Markua, however, code
   is just a resource, and the LFM syntax is not supported.
3. In LFM, to mark code as added or removed, the magic words were
   `leanpub-start-insert`, `leanpub-end-insert`, `leanpub-start-delete` and
   `leanpub-end-delete`. In Markua, the magic words are `markua-start-insert`,
   `markua-end-insert`, `markua-start-delete` and `markua-end-delete`.
4. In LFM, there is a special syntax for inserting math: `{$$}...{/$$}`. This
   looks nice to people who like LaTeX, and looks like nothing else in
   Markdown. In Markua, however, math is just another resource, and that
   LaTeX-inspired syntax for wrapping math resources is not supported.
5. In LFM, there are `G>` "generic boxes". In Markua, these are replaced with
   blurbs (`B>`).
6. LFM had the `C>` syntax to center text, but we didn't have the same effect on
   generic boxes, and blurbs did not exist. In Markua, a `C>` syntax is just
   syntactic sugar for a centered blurb, for greater consistency. Because of
   this, the blurb also gets the ability to be centered by adding a
   `{class: center}` attribute.
7. LFM had `{rtl}` and `{ltr}` directives. These are not supported in Markua,
   and neither is a `{dir}` attribute in general: any given language is either a
   left-to-right or a right-to-left language, so specifying the language with
   the `lang` document setting and the `{lang: ___}` directive is sufficient.
8. LFM used Sample.txt to define the sample content. Markua moves the definition
   of what constitutes sample content into a `{sample: true}` attribute on
   parts, chapters and sections. So, in Markua, inclusion in the sample is at
   the content level, not the file level. This helps avoid a number of bugs that
   could happen with including at the file level, if a file did not clearly
   break at a chapter boundary. (So, in Leanpub, the Sample.txt approach is not
   supported for books which use Markua.)
9. LFM used Book.txt to define the book content. In Markua, the way that the
   list of manuscript files is defined is considered out of scope of the Markua
   specification itself. (Leanpub still uses the Book.txt approach to specify
   which files are in a book, but other Markua Processors could use other
   approaches.)
10. Using {pagebreak} is no longer supported. Use the `{break: page}` directive
    instead.

Besides these differences, there are a number of smaller ones, which you will
discover if you compare the Markua Spec to the
[Leanpub Flavoured Markdown Manual](https://leanpub.com/leanpubflavouredmarkdownmanual/).

## Acknowledgments

I ([Peter Armstrong](https://twitter.com/peterarmstrong)) am the creator of
Markua, but I'm getting lots of help, especially from my Leanpub cofounders
[Scott Patten](https://twitter.com/scott_patten), [Len Epp](https://twitter.com/lenepp)
and [Braden Simpson](https://twitter.com/bradensimpson). Scott is the lead
developer of Leanpub's book generation engine (both the LFM and Markua versions),
and he has given me both the most and the best feedback about Markua over the
years that I've been working on it.

Perhaps most important, Markua is built on Markdown. So, Markua literally would
not exist without John Gruber and Aaron Swartz. Markua is now also using the
CommonMark spec as its starting point, so I am really grateful to John MacFarlane
(the author of the CommonMark spec) and the team behind CommonMark and `cmark`.
I'm also really grateful to GitHub for adopting Markdown, for basing the GitHub
Flavored Markdown spec on the CommonMark spec, and for their work on `cmark-gfm`.

Markua is also benefitting from years of feedback about Leanpub Flavoured
Markdown and Markua, from many incredibly helpful and patient Leanpub authors.
If it wasn't for these authors, there would be no Leanpub, and no Markua.

I'd also like to thank my father, who read some of the very early manuscripts
when this was a standalone spec and gave me feedback.

Finally, I would like to thank my wife Caroline and my son Evan: while this is
not as long as my other books, a lot of thought and effort went into it, and a
lot of sacrifice. Thanks very much.

</div>

# Preliminaries

## Characters and lines

Any sequence of [characters] is a valid CommonMark
document.

A [character](@) is a Unicode code point.  Although some
code points (for example, combining accents) do not correspond to
characters in an intuitive sense, all code points count as characters
for purposes of this spec.

This spec does not specify an encoding; it thinks of lines as composed
of [characters] rather than bytes.  A conforming parser may be limited
to a certain encoding.

A [line](@) is a sequence of zero or more [characters]
other than newline (`U+000A`) or carriage return (`U+000D`),
followed by a [line ending] or by the end of file.

A [line ending](@) is a newline (`U+000A`), a carriage return
(`U+000D`) not followed by a newline, or a carriage return and a
following newline.

A line containing no characters, or a line containing only spaces
(`U+0020`) or tabs (`U+0009`), is called a [blank line](@).

The following definitions of character classes will be used in this spec:

A [whitespace character](@) is a space
(`U+0020`), tab (`U+0009`), newline (`U+000A`), line tabulation (`U+000B`),
form feed (`U+000C`), or carriage return (`U+000D`).

[Whitespace](@) is a sequence of one or more [whitespace
characters].

A [Unicode whitespace character](@) is
any code point in the Unicode `Zs` general category, or a tab (`U+0009`),
carriage return (`U+000D`), newline (`U+000A`), or form feed
(`U+000C`).

[Unicode whitespace](@) is a sequence of one
or more [Unicode whitespace characters].

A [space](@) is `U+0020`.

A [non-whitespace character](@) is any character
that is not a [whitespace character].

An [ASCII punctuation character](@)
is `!`, `"`, `#`, `$`, `%`, `&`, `'`, `(`, `)`,
`*`, `+`, `,`, `-`, `.`, `/` (U+0021–2F), 
`:`, `;`, `<`, `=`, `>`, `?`, `@` (U+003A–0040),
`[`, `\`, `]`, `^`, `_`, `` ` `` (U+005B–0060), 
`{`, `|`, `}`, or `~` (U+007B–007E).

A [punctuation character](@) is an [ASCII
punctuation character] or anything in
the general Unicode categories  `Pc`, `Pd`, `Pe`, `Pf`, `Pi`, `Po`, or `Ps`.

## Tabs

Tabs in lines are not expanded to [spaces].  However,
in contexts where whitespace helps to define block structure,
tabs behave as if they were replaced by spaces with a tab stop
of 4 characters.

Thus, for example, a tab can be used instead of four spaces
in an indented code block.  (Note, however, that internal
tabs are passed through as literal tabs, not expanded to
spaces.)

```````````````````````````````` example
→foo→baz→→bim
.
<pre><code>foo→baz→→bim
</code></pre>
````````````````````````````````

```````````````````````````````` example
  →foo→baz→→bim
.
<pre><code>foo→baz→→bim
</code></pre>
````````````````````````````````

```````````````````````````````` example
    a→a
    ὐ→a
.
<pre><code>a→a
ὐ→a
</code></pre>
````````````````````````````````

In the following example, a continuation paragraph of a list
item is indented with a tab; this has exactly the same effect
as indentation with four spaces would:

```````````````````````````````` example
  - foo

→bar
.
<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
````````````````````````````````

```````````````````````````````` example
- foo

→→bar
.
<ul>
<li>
<p>foo</p>
<pre><code>  bar
</code></pre>
</li>
</ul>
````````````````````````````````

Normally the `>` that begins a block quote may be followed
optionally by a space, which is not considered part of the
content.  In the following case `>` is followed by a tab,
which is treated as if it were expanded into three spaces.
Since one of these spaces is considered part of the
delimiter, `foo` is considered to be indented six spaces
inside the block quote context, so we get an indented
code block starting with two spaces.

```````````````````````````````` example
>→→foo
.
<blockquote>
<pre><code>  foo
</code></pre>
</blockquote>
````````````````````````````````

```````````````````````````````` example
-→→foo
.
<ul>
<li>
<pre><code>  foo
</code></pre>
</li>
</ul>
````````````````````````````````


```````````````````````````````` example
    foo
→bar
.
<pre><code>foo
bar
</code></pre>
````````````````````````````````

```````````````````````````````` example
 - foo
   - bar
→ - baz
.
<ul>
<li>foo
<ul>
<li>bar
<ul>
<li>baz</li>
</ul>
</li>
</ul>
</li>
</ul>
````````````````````````````````

```````````````````````````````` example
#→Foo
.
<h1>Foo</h1>
````````````````````````````````

```````````````````````````````` example
*→*→*→
.
<hr />
````````````````````````````````


## Insecure characters

For security reasons, the Unicode character `U+0000` must be replaced
with the REPLACEMENT CHARACTER (`U+FFFD`).

# Blocks and inlines

We can think of a document as a sequence of
[blocks](@)---structural elements like paragraphs, block
quotations, lists, headings, rules, and code blocks.  Some blocks (like
block quotes and list items) contain other blocks; others (like
headings and paragraphs) contain [inline](@) content---text,
links, emphasized text, images, code spans, and so on.

## Precedence

Indicators of block structure always take precedence over indicators
of inline structure.  So, for example, the following is a list with
two items, not a list with one item containing a code span:

```````````````````````````````` example
- `one
- two`
.
<ul>
<li>`one</li>
<li>two`</li>
</ul>
````````````````````````````````


This means that parsing can proceed in two steps:  first, the block
structure of the document can be discerned; second, text lines inside
paragraphs, headings, and other block constructs can be parsed for inline
structure.  The second step requires information about link reference
definitions that will be available only at the end of the first
step.  Note that the first step requires processing lines in sequence,
but the second can be parallelized, since the inline parsing of
one block element does not affect the inline parsing of any other.

## Container blocks and leaf blocks

We can divide blocks into two types:
[container blocks](@),
which can contain other blocks, and [leaf blocks](@),
which cannot.


<div class="extension-chunk">

# Metadata (Markua extension)

Markua adds a number of extensions to support metadata in a consistent way.
These include attributes (on everything), settings (at the beginning of a
document) and directives (at certain points throughout the document).

All metadata is enclosed in curly braces `{` ... `}`.

Metadata is not actually output in the Markua document itself. Instead, it
changes the behaviour of the Markua Processor, sometimes dramatically.

<div class="extension">

## Attributes (Markua extension)

Attributes are used to do everything from specify the language of code blocks,
add ids for crosslinking and even support extensions to Markua.

### Attribute List Format

An attribute list is one or more key-value, comma-separated pairs:

`{one: v1, two: "v2", three: 'v3!', four: true, five: 0, six: 3.14, seven: a b}`

Note that you can skip the space between the colon and the value: the following
`{format: ruby}` and `{format:ruby}` both work. However, for consistency I
recommend always adding a space.

Note that attribute values can be in no quotes, in double quotes (`"`) or single
quotes (`'`). Whenever an attribute contains spaces, using either double or
single quotes is preferred to no quotes, but you can get away with using no
quotes as long as the attribute value does not contain a comma.

The choice of double or single quotes is mostly personal taste. However, inside
double quotes, a double quote must be backslash-escaped (`\"`); inside single
quotes, a single quote must be backslash-escaped (`\'`). So, if your attribute
value has a lot of double quotes, then it's more convenient to wrap it in
single quotes, and vice-versa.

Regardless of whether quotes are used, leading and trailing spaces are removed
from all attribute values, but internal spaces within the attribute values are
preserved.

An attribute list can be inserted into a Markua document in one of three ways:

1. Immediately above a block element (e.g. heading, figure, aside, blurb, quiz,
   etc.), with **one newline** (not a blank line) separating it from the block
   element.
2. Immediately after a span element (e.g. a word, italicized phrase, etc.) in
   normal paragraphs and in similarly-simple contexts, with **no spaces**
   separating it from the span element.
3. On a line by itself, with one blank line above and below it. In this format,
   the attribute list contains [directives](#directives).

One common use of attributes is to add `id` attributes to headings:

```````````````````````````````` example
{id: foo}
# Chapter Foo

foo
.
<h1 id="foo" class="chapter">Chapter Foo</h1>
<p>foo</p>
````````````````````````````````

You can also use an `{#id}` syntactic sugar:

```````````````````````````````` example
{#bar}
# Chapter Bar

bar
.
<h1 id="bar" class="chapter">Chapter Bar</h1>
<p>bar</p>
````````````````````````````````

One common use of attributes is to add `id` attributes to span elements:

```````````````````````````````` example
Here [is lorem]{id: lorem}.

This is ipsum{#ipsum}.
.
<p>Here <span id="lorem">is lorem</span>.</p>

<p>This is <span id="ipsum">ipsum</span>.</p>
````````````````````````````````

If there is an error in the syntax of an attribute list, or if the Markua
Processor does not support an attribute list in a given context, it should just
ignore the attribute list and add an appropriate error.

Any line outside of a code resource which starts with an opening curly brace `{`
and ends with a closing curly brace `}` is assumed to be an attribute list, and
will not be output by a Markua Processor. If you want to start a line with a
literal opening curly brace `{` you need to preface it with a backslash (`\`).

You cannot add attribute lists inside headers:

```````````````````````````````` example
# Chapter Foo{id: foo}

foo
.
<h1 class="chapter">Chapter Foo</h1>
<p>foo</p>
````````````````````````````````

### Attribute Keys

The keys of attributes must consist exclusively of lowercase letters,
hyphens (`-`) and underscores (`_`). Uppercase letters are not permitted in
attribute keys: a Markua Processor must treat uppercase letters in attribute
keys as an error.

If a key is duplicated in an attribute list, the first key value is used and
subsequent ones are ignored. A Markua Processor should add a warning in its
list of warnings, which are *not* output in the output itself.

### Attribute Values

All attributes are text. Markua Processors should interpret text values of "true"
and "false" as representing true and false. Quotes, by which I mean double quotes
(`"`) not single quotes (`'`), are optional for attribute values, and are only
needed if the attribute value contains whitespace or special characters.

If a text attribute value contains a quote, it must be "escaped" with a
backslash: e.g. `{title: "\"Fresh\" Fish"}`

### id Attributes

As previously discussed, there is special syntactic sugar for ids: `{#foo}` is
equivalent to `{id: foo}`. However, ids are just attributes.

### title Attributes

Markua headings (part, chapter, section, sub-section, etc.) and figures can all
have `title` attributes specified in an attribute list. This is text which
overrides what is displayed for the heading or figure in the table of contents.
For a heading, it is analogous to the `title` attribute on a resource inserted
as a figure, which specifies the text to use for the figure in the appropriate
list of figures (e.g. List of Illustrations, Table of Tables, etc.). If a
heading does not have a title attribute, the text of the heading itself is
used--which is quite often exactly what is desired. Use of a `title` attribute
is always optional; it's only used when the default behaviour of using the
heading text (or the `title` attribute for a resource) is not appropriate,
say if it's too long.

### class Attributes

One of the attributes which is supported in every attribute list is the `class`
attribute. This allows a Markua Processor to do smart things about formatting.

For example, if a chapter has a `{class: bibliography}` added to it, then
the Markua Processor can then use this information to change the indentation
of paragraphs within it to be hanging paragraphs.

### Conditional Inclusion Attributes on Headings

Markua headings (and *only* headings) may have various attributes which specify
which output formats their content (of the part, chapter, section, sub-section,
etc.) should be included in. If the given attribute is not present, the default
value of it is that specified by the nearest ancestor heading. If no such
attribute is present at a top-level heading, the default is given by the default
value for the attribute defined of Markua.

`full`
: `true` or `false`. The default is `true`. If `true`, include this heading and
its content (including nested sections, subsections, etc.) in the full book or
course, including the PDF, EPUB and/or MOBI versions and the web version that
is being generated. If `false`, omit it. Setting this to `false` is an easy way
to "comment out" a section of your book or course.

`sample`
: `true` or `false`. The default is `false`. If `true`, include the content
under this heading (including nested sections, subsections, etc.) in the sample
of the book or course that is being generated. If `false`, omit it.
Since the default is `false`, by default a sample book or course is empty.
Note that this attribute just governs the inclusion of the content, not the
heading itself. A Markua Processor may choose to omit all headings with
`sample: false` (either explicitly set or defaulted to false) or it may choose
to include every heading in the sample version of a book or course, in order
to produce a representative Table of Contents. In a case such as this where
`sample` is `false`, the Markua Processor may output special content inside the
chapter, section or subsection to indicate that the content itself is being
omitted from the sample. This attribute applies to both the book version
(PDF, EPUB and/or MOBI) and the web version of the sample book or course.

Note that specifying either of these attributes in a nested section overrides any
value inherited from its ancestors, or from the default. This way, you can
include a chapter in the sample, except for a specific section of the chapter.

Example:

~~~
{sample: true}
# Chapter One

This is included in the sample.

## Section One

This is included in the sample since it is contained in a chapter which is.

{sample: false}
## Section Two

This is *not* included in the sample since it is explicitly excluded, despite
the fact that the chapter is in the sample.

{sample: true}
## Section Three

This is included in the sample. This is redundant since it's in a chapter which
is.

{full: false, sample: true}
# Buy the book!

What you read was just a sample. Why not buy the full book?

# Chapter Two

This has the default values, so it is included in the book or course, but is
excluded from the sample.
~~~

To be clear: ALL conditional inclusion attributes **ONLY** have meaning when used
as an attribute list on headings. You can only say `{sample: true}` immediately
above a heading. You can't have a blank line below it (otherwise it would be a
directive, and not be valid) and you can't attach it to anything other than a
heading (like a paragraph, figure, etc.).

### Extension attributes

Markua Processors may encounter attributes which they do not understand.

Whenever this happens, these attributes must be filtered from the output. A
Markua Processor should function as though there is a whitelist of attributes
which it permits for each element, and filter everything else.

Because of this, Markua attribute lists can contain any number of extension
attributes. An extension attribute is an attribute which is not defined in the
Markua specification. This is true whether the attributes are inserted in an
attribute list attached to a span, block or even in free-floating directives.

Because of the fact that all unrecognized attributes are filtered, it is
possible for a Markua Processor to add extension attributes that only it
understands. This encourages competition in the Markua ecosystem, while ensuring
that Markua implementations do not choke on Markua input which goes beyond their
capabilities.

To be clear, Markua does not understand "HTML attributes". It understands Markua
attributes. Some Markua attributes, like `class`, happen to correspond to
attributes in HTML. This is just coincidence, and many others do not.

For example, Leanpub supports an `icon` attribute on blurbs. If a different
Markua processor does not support this attribute, there is no harm done: the
attribute just has no effect.

Extension attributes go far beyond adding icons to blurbs: they allow for
specialized uses of Markua. Since CSS is so powerful, with creative uses of
custom attributes and custom CSS, Markua documents can be transformed. Some
obvious uses of extension attributes include adding CSS classes which can then
be styled to set fonts, adding custom types to figures for things like lemmas
and theorems, etc.

This ensures that new attributes can be added to future versions of Markua
without a negative effect on older Markua implementations. It also ensures that
new versions of Markua can simply stop supporting attributes defined in this
version of Markua without needing to specify anything special.

</div>


<div class="extension">

## Document settings (Markua extension)

The HTML which is output by a Markua Processor can be affected by certain global
settings. These can be overridden by a document settings hash.

The document settings hash can occur only once, and must be at the start of a
Markua document. The settings are newline-separated key-value pairs
(`key: value`) which contain information about the document and about the
desired behaviour of the Markua Processor.

Document information includes things like the `title`, `subtitle`, `copyright`,
`authors`, etc. Markua Processor behaviour includes things like
`italicize-underlines`, `smart-punctuation`, etc.

The format of the document settings hash is as follows: Every non-blank line
in the document settings hash must contain a key, a colon `:`, and a value.
Any whitespace at the beginning or end of the keys and values will be stripped.
Only the first colon is important; subsequent colons on a line will just be
part of the value.

There must be at least one blank line between the end of the settings block and
the start of any other document content.

Here's an example of a settings block at the start of a book:

~~~
{
italicize-underlines: false
soft-breaks: space
smart-punctuation: true
title: Markua Spec
authors: Peter Armstrong and John MacFarlane
}

# Chapter One

Lorem ipsum dolor...
~~~

Note that a Markua Processor may also get settings from elsewhere, like a web
interface. In the case of a conflict between settings defined in a document
and settings defined, say, in a web interface, it is up to the Markua Processor
to decide which setting to use. Also, a Markua Processor may override settings
whose values are unsupported or illegal.

Each document setting either applies to books and courses, or to courses only.

Finally, Markua Processors can also add their own document settings, just as
Markua Processors can understand their own extension attributes.

### Settings which apply to books and courses

The following settings apply to books and courses.

`authors`
: The authors of the Markua document.

`contributors`
: Any contributors to the Markua document who are not authors.

`copyright`
: The owner of the copyright.

`default-code-language`
: The default language that code which is a local resource, web resource or
inline resource inserted as a block with three backticks is interpreted as. The
default value is `guess`, which means to guess at the code language based on
the syntax encountered (or the file extension for external code samples), and
attempt to syntax highlight appropriately. A good alternative is `text`, which
means no syntax highlighting should be used, but the code should be in a
monospaced font suitable for a programming language. Besides these options, you
can specify a particular programming language used, such as `ruby` or `java`.
If a Markua Processor does not recognize the programming language specified,
it must format it as `text`. Finally, note that the value of this setting only
affects local resources, web resources or inline resources inserted as a block
with three backticks--it has no effect on code spans, or on inline resources
inserted with tildes. The default language for inline resources delimited by
three tildes is always `text`, but you can override the default on individual
resources of course.

`default-code-span-language`
: The default language that code which an inline code span resource is formatted
as. The default is `text`. If you set this to `ruby`, it is the equivalent of
setting `{format: ruby}` as an inline attribute list on every code span resource
by default, e.g. `` `puts "hi"`{format: ruby} ``. If you need to override a
specific resource to not be ruby, you would set `{format: text}`.

`italicize-underlines`
: `true` or `false`. The default value is `true`. If `italicize-underlines` is
`true`, then `_this_` and `*this*` are both italic. If `italicize-underlines` is
`false`, then `_this_` is underlined while `*this*` is italic. This is discussed
[here](#underline-markua-extension-).

`lang`
: The [IS0 639-3](https://en.wikipedia.org/wiki/ISO_639-3) three character
language code of the language that the Markua document is written in. The
default is `eng`.

`number-chapters`
: `true` or `false`. Default `true`. Whether the chapters are numbered.

`number-figures`
: `true` or `false`. Default `true`. Whether resources are numbered when
inserted as figures. Note that different types of resources (e.g. code listings,
tables, images, etc.) have different numbering.

`number-sections`
: `true` or `false`. Default `false`. Whether the sections (and sub-sections)
are numbered.

`restart-endnote-numbering`
: `true` or `false`. Default `true`. Whether the endnote numbering is restarted
at the end of a chapter.

`restart-footnote-numbering`
: `true` or `false`. Default `true`. Whether the footnote numbering is restarted
at the end of a chapter.

`soft-breaks`
: `break`, `space` or `source`. Default `source`. Whether single newlines
produce a space (with `space`), a newline in the HTML source (with `source`) or
a break tag (with `break`). See [this section](#configurable-soft-line-breaks-markua-extension-)
for a full description of this setting. If you have been writing in the Markua
beta, you will want to set this to `break`. If you want the Markdown behaviour,
leave it at the default of `source`.

`smart-punctuation`
: If `smart` is `true`, use smart punctuation. Straight double and single quotes
will be rendered as curly quotes, depending on their position, `--` will be
rendered as an en-dash, `---` will be rendered as an em-dash and `...` will be
rendered as ellipses. If `smart` is `false`, do not use smart punctuation.

`title`
: The title of the Markua document.

`validate`
: If `validate` is `true`, the UTF-8 characters in the Markua document are
validated, replacing illegal sequences with U+FFFD. If `validate` is `false`,
the UTF-8 characters in the Markua document are not validated. A Markua
Processor may override this setting.

`version`
: The version of the Markua document. This is primarily intended for use when
producing analytics for courses. The default is `0.1`.

### Settings which apply to courses only

The following settings are defined by Markua, but only make sense in the context
of a course. So, a Markua Processor which is not generating a course can ignore
them.

`course-attempts`
: The number of allowed attempts on the course itself. The default is `1`.

`course-completeness`
: How "done" the course itself is. Expressed as a percentage, in decimal value.
The default is `0`. A value of `100` or `100.0` is the maximum. A Markua
Processor may do something smart when a course which is 100% complete changes
the `id` values of a quiz or quizzes, since this will affect current students.

`default-exercise-show-answers`
: This can be `all` (the default), `incorrect` or `none`. It affects how answers
are shown after an exercise is completed, say in a MOOC.

`default-quiz-attempts`
: The default number of allowed attempts on a quiz. The default is `1`. Note
that for quizzes, a value of `0` means the quiz cannot be taken (yet). A value
of `-1` means the quiz has an unlimited number of attempts. Setting either of
these as the value of `default-quiz-attempts` is a legitimate value, and has
the effect of changing the default value for all quizzes. Again, an exercise
always has an unlimited number of attempts, so there is no corresponding
`default-exercise-attempts` value.

`default-quiz-auto-submit`
: `true` or `false`. The default is `true`. If true, an incomplete quiz is
submitted when the `time-limit` is expired. If false, it is not. Either way, an
incomplete quiz counts as an attempt.

`default-quiz-show-answers`
: This can be `all`, `incorrect` (the default) or `none`. It affects how answers
are shown after a quiz is completed, say in a MOOC.

`default-quiz-use-result`
: `best` or `latest`. The default is `best`. Whether the best result on the quiz
is used, or the latest one.

`default-random-choice-order`
: `true` or `false`. The default is `false`. This sets the default behaviour of
multiple choice questions. If `true`, the choices in the multiple choice
question are randomly arranged; if `false`, they are presented in the order
written.

`default-random-question-order`
: `true` or `false`. The default is `false`. This sets the default behaviour of
the quiz or exercise. If `true`, the questions are randomly arranged; if
`false`, they are presented in the order written.

</div>


<div class="extension">

## Directives (Markua extension)

Directives are switches which affect the future behaviour of a Markua Processor.

The syntax for directives is simple: they are just contained in an attribute
list. The only difference is that the attribute list is inserted an a line by
itself, with one blank line above and below it.

A directive does not have any kind of "closing tag"--it simply remains in effect
for the rest of the Markua document, or until the directive is overridden by
another use of the same directive with a different value.

Here's the directive syntax, for a nonexistent directive `foo` with a value
`bar`:

~~~
some content

{foo: bar}

some content
~~~

### The lang directive

A book has a global `lang` setting, which defaults to `eng`, for English.

However, many books are written in more than one language. Switching between
languages in accomplished using the `lang` directive.

For example, say I'm writing a book about waka, renga and haiku. If I want to
switch to Japanese to display a poem I can do so using a `lang` directive
`{lang: jpn}` and then switch back to English using `{lang: eng}`:

~~~
lorem ipsum dolor

{lang: jpn}

古池や蛙飛び込む水の音

(松尾芭蕉)

{lang: eng}

foo bar baz
~~~

The value of the `lang` directive must be a valid
[ISO 639-3](https://en.wikipedia.org/wiki/ISO_639-3) language code.

The two main things that the `lang` directive affects are:

1. the direction of the text (left-to-right or right-to-left)
2. the font used for the language

Since English is the default language of a Markua document, all Markua
Processors must support the `eng` value of the `lang` directive. Support for
all other language codes is optional. If the language code given as the value
of a `lang` directive is not supported or is unrecognized, it must be
interpreted as `eng` and switch the font accordingly and switch the direction
to left-to-right. This way, a Markua Processor can add support for
right-to-left languages such as Arabic (`{lang: ara}`) or
Hebrew  (`{lang: heb}`), and know that when a different language is specified
the direction will switch to left-to-right even if the given language was not
supported--there are a lot of languages, but most of them are left-to-right
languages.

### The break directive

This directive is a nod to reality: sometimes an author will really, really
want to insert a page break. This is how to do it.

~~~
lorem ipsum dolor

{break: page}

foo bar baz
~~~

Its use is discouraged. Authors should spend their time writing, not formatting.

</div>


<div class="extension">

## Book section directives (Markua extension)

Most published books have three types of material in them: the front matter,
the text (or "main matter") and the back matter. (Yes, this applies to courses
as well as books, since many Markua Processors like Leanpub can generate a
book out of the course material.)

What authors write, the manuscript, is typically what goes into the text,
or main matter, of the book. In style guidelines this is often called the
text; in formats such as TeX and LaTeX it is called main matter. It's what is
typically numbered with Arabic numerals starting from 1.

There's a bunch of other stuff (the Dedication, Epigraph, Table of Contents,
Foreword, Preface, etc.) which can come before the main text of the book. The
stuff before the main matter is called "front matter". Some of the front matter
comes before the Table of Contents and is not numbered; the rest of the front
matter that comes after the Table of Contents gets numbered with Roman numerals.

There's also a bunch of other stuff (appendices, the index, etc.) which can
come after the main matter. This is called the "back matter".

If Markua just relied on its headings support there would be no good way to
accomplish the division of a manuscript into front matter, main matter and
back matter. (We could try some convention about heading names, but that would
be a highly objectionable, English-centric hack.)

So, this is where the book `section` directives come in.

There are two legal values of the section directive:

1. `mainmatter`
2. `backmatter`

With this approach, your book is essentially the following:

~~~
any frontmatter content, like a dedication, preface or introduction

{section: mainmatter}

the body of your book (the text or main matter)

{section: backmatter}

any back matter content, such as appendices
~~~

Note that there is no need for a `{section: frontmatter}` directive, ever.

* Everything before the `{section: mainmatter}` directive is in the front
  matter.
* Everything after the `{section: mainmatter}` directive and before a
  `{section: backmatter}` directive is in the main matter
* Everything after the `{section: backmatter}` directive is in the back matter

The `{section: mainmatter}` and `{section: backmatter}` directives act as
dividers, separating a book or course into logical groups of content.

While these book `section` directives are merely optional hints, there is a
very strict rule about their use: each value (`mainmatter`, `backmatter`) of
the `section` directive can only appear **once** in a document.

Now, note that the most minimal way to write a book is to use no section
directives at all. With this approach, everything is in the text (main matter)
of the book. Page numbering is in Arabic numerals, etc.

For authors who do not know about the section directive, this is what they are
doing. Nothing bad or unexpected will happen: they can write their book, and it
will look correct. Only when they go to add things like a preface or an
appendix, and feel the need for different numbering, will they need to discover
the section directives. Then, they can add them to their Markua document as
appropriate.

</div>


<div class="extension">

## Insert directives (Markua extension)

With a book or course, certain types of content gets created by the Markua
Processor, or in metadata provided by the author. This content then needs to be
positioned in the book or course.

While a Markua Processor can adopt sensible defaults, sometimes an author wants
more fine-grained control over where this automatically-generated content is
inserted. That's what the `insert` directive is for.

Here's an example book:

~~~
some front matter content

{insert: dedication}

more front matter content

{insert: table-of-contents}

even more front matter content

{section: mainmatter}

the main matter content

{section: backmatter}

some back matter content

{insert: index}

more back matter content

{insert: quiz-answers}
~~~

The `insert` directive can have any value. If a Markua Processor does not
recognize it, does not support it in that location, or does not support it at
all, it should log an error and ignore the directive.

The following are some values of the `insert` directive which it may benefit a
Markua Processor to support in front matter, which is everything before the
`{section: mainmatter}` directive:

* `half-title`
* `series-title`
* `title-page`
* `copyright`
* `dedication`
* `epigraph`
* `table-of-contents`
* `list-of-figures`
* `list-of-tables`

Again, it only makes sense to support these directives if there is some way of
actually getting the content to insert, such as a web interface.

Note that a Markua Processor can be really smart about certain things, if it
wants. For example, in front matter (before a `{section: mainmatter}` directive),
it can choose to not number the pages before the Table of Contents, but to
number the pages after the Table of Contents. Then, the author can use the
`{insert: table-of-contents}` directive to choose where in the front matter the
Table of Contents is positioned. This will not only affect its position, it will
also affect the numbering of content before and after it.

The following are some values of the `insert` directive which it may benefit a
Markua Processor to support in back matter, which is everything after the
`{section: backmatter}` directive:

* `index`
* `exercise-answers`
* `quiz-answers`

The `exercise-answers` and `quiz-answers` directives are used to position
the answers to any exercises or quizzes in the text of the Markua document.

If neither of these directives are present, a Markua Processor should position
any exercise answers somewhere near the back of the book (in the back matter,
if it exists). For quiz answers, on the other hand, a Markua Processor may do
whatever it wants in terms of whether the quiz answers are included in the book,
regardless of the presence or position of the `quiz-answers` directive.

For example, in Leanpub's online courses, the quiz answers are only provided
when quizzes are completed and automatically marked, and are never output in the
material book for the course.

</div>

</div>


# Leaf blocks

This section describes the different kinds of leaf block that make up a
Markdown document.

## Thematic breaks

A line consisting of 0-3 spaces of indentation, followed by a sequence
of three or more matching `-`, `_`, or `*` characters, each followed
optionally by any number of spaces or tabs, forms a
[thematic break](@).

```````````````````````````````` example
***
---
___
.
<hr />
<hr />
<hr />
````````````````````````````````


Wrong characters:

```````````````````````````````` example
+++
.
<p>+++</p>
````````````````````````````````


```````````````````````````````` example
===
.
<p>===</p>
````````````````````````````````


Not enough characters:

```````````````````````````````` example
--
**
__
.
<p>--
**
__</p>
````````````````````````````````


One to three spaces indent are allowed:

```````````````````````````````` example
 ***
  ***
   ***
.
<hr />
<hr />
<hr />
````````````````````````````````


Four spaces is too many:

```````````````````````````````` example
    ***
.
<pre><code>***
</code></pre>
````````````````````````````````


```````````````````````````````` example
Foo
    ***
.
<p>Foo
***</p>
````````````````````````````````


More than three characters may be used:

```````````````````````````````` example
_____________________________________
.
<hr />
````````````````````````````````


Spaces are allowed between the characters:

```````````````````````````````` example
 - - -
.
<hr />
````````````````````````````````


```````````````````````````````` example
 **  * ** * ** * **
.
<hr />
````````````````````````````````


```````````````````````````````` example
-     -      -      -
.
<hr />
````````````````````````````````


Spaces are allowed at the end:

```````````````````````````````` example
- - - -    
.
<hr />
````````````````````````````````


However, no other characters may occur in the line:

```````````````````````````````` example
_ _ _ _ a

a------

---a---
.
<p>_ _ _ _ a</p>
<p>a------</p>
<p>---a---</p>
````````````````````````````````


It is required that all of the [non-whitespace characters] be the same.
So, this is not a thematic break:

```````````````````````````````` example
 *-*
.
<p><em>-</em></p>
````````````````````````````````


Thematic breaks do not need blank lines before or after:

```````````````````````````````` example
- foo
***
- bar
.
<ul>
<li>foo</li>
</ul>
<hr />
<ul>
<li>bar</li>
</ul>
````````````````````````````````


Thematic breaks can interrupt a paragraph:

```````````````````````````````` example
Foo
***
bar
.
<p>Foo</p>
<hr />
<p>bar</p>
````````````````````````````````


If a line of dashes that meets the above conditions for being a
thematic break could also be interpreted as the underline of a [setext
heading], the interpretation as a
[setext heading] takes precedence. Thus, for example,
this is a setext heading, not a paragraph followed by a thematic break:

```````````````````````````````` example
Foo
---
bar
.
<h2>Foo</h2>
<p>bar</p>
````````````````````````````````


When both a thematic break and a list item are possible
interpretations of a line, the thematic break takes precedence:

```````````````````````````````` example
* Foo
* * *
* Bar
.
<ul>
<li>Foo</li>
</ul>
<hr />
<ul>
<li>Bar</li>
</ul>
````````````````````````````````


If you want a thematic break in a list item, use a different bullet:

```````````````````````````````` example
- Foo
- * * *
.
<ul>
<li>Foo</li>
<li>
<hr />
</li>
</ul>
````````````````````````````````


<div class="extension-chunk">

## Thematic break semantics (Markua extension)

Thematic breaks, as shown above, produce an `<hr />` in HTML.

Thematic breaks are treated as scene breaks by Markua.

In other formats, such as PDF, a Markua Processor may format the thematic break
in a way appropriate for a scene break in fiction.

There are no additional tests in this section, since this is just a note about
semantics and about CSS.

### CSS Note

Since Markua bans all inline HTML except HTML comments, the only way to produce
an `<hr />` is using the above thematic break syntax. So, designers can assume
that all `<hr />` elements are thematic breaks, and style them in a way
appropriate for a scene break in fiction.

</div>


## ATX headings

An [ATX heading](@)
consists of a string of characters, parsed as inline content, between an
opening sequence of 1--6 unescaped `#` characters and an optional
closing sequence of any number of unescaped `#` characters.
The opening sequence of `#` characters must be followed by a
[space] or by the end of line. The optional closing sequence of `#`s must be
preceded by a [space] and may be followed by spaces only.  The opening
`#` character may be indented 0-3 spaces.  The raw contents of the
heading are stripped of leading and trailing spaces before being parsed
as inline content.  The heading level is equal to the number of `#`
characters in the opening sequence.

Simple headings:

```````````````````````````````` example
# foo
## foo
### foo
#### foo
##### foo
###### foo
.
<h1>foo</h1>
<h2>foo</h2>
<h3>foo</h3>
<h4>foo</h4>
<h5>foo</h5>
<h6>foo</h6>
````````````````````````````````


More than six `#` characters is not a heading:

```````````````````````````````` example
####### foo
.
<p>####### foo</p>
````````````````````````````````


At least one space is required between the `#` characters and the
heading's contents, unless the heading is empty.  Note that many
implementations currently do not require the space.  However, the
space was required by the
[original ATX implementation](http://www.aaronsw.com/2002/atx/atx.py),
and it helps prevent things like the following from being parsed as
headings:

```````````````````````````````` example
#5 bolt

#hashtag
.
<p>#5 bolt</p>
<p>#hashtag</p>
````````````````````````````````


This is not a heading, because the first `#` is escaped:

```````````````````````````````` example
\## foo
.
<p>## foo</p>
````````````````````````````````


Contents are parsed as inlines:

```````````````````````````````` example
# foo *bar* \*baz\*
.
<h1>foo <em>bar</em> *baz*</h1>
````````````````````````````````


Leading and trailing [whitespace] is ignored in parsing inline content:

```````````````````````````````` example
#                  foo                     
.
<h1>foo</h1>
````````````````````````````````


One to three spaces indentation are allowed:

```````````````````````````````` example
 ### foo
  ## foo
   # foo
.
<h3>foo</h3>
<h2>foo</h2>
<h1>foo</h1>
````````````````````````````````


Four spaces are too much:

```````````````````````````````` example
    # foo
.
<pre><code># foo
</code></pre>
````````````````````````````````


```````````````````````````````` example
foo
    # bar
.
<p>foo
# bar</p>
````````````````````````````````


A closing sequence of `#` characters is optional:

```````````````````````````````` example
## foo ##
  ###   bar    ###
.
<h2>foo</h2>
<h3>bar</h3>
````````````````````````````````


It need not be the same length as the opening sequence:

```````````````````````````````` example
# foo ##################################
##### foo ##
.
<h1>foo</h1>
<h5>foo</h5>
````````````````````````````````


Spaces are allowed after the closing sequence:

```````````````````````````````` example
### foo ###     
.
<h3>foo</h3>
````````````````````````````````


A sequence of `#` characters with anything but [spaces] following it
is not a closing sequence, but counts as part of the contents of the
heading:

```````````````````````````````` example
### foo ### b
.
<h3>foo ### b</h3>
````````````````````````````````


The closing sequence must be preceded by a space:

```````````````````````````````` example
# foo#
.
<h1>foo#</h1>
````````````````````````````````


Backslash-escaped `#` characters do not count as part
of the closing sequence:

```````````````````````````````` example
### foo \###
## foo #\##
# foo \#
.
<h3>foo ###</h3>
<h2>foo ###</h2>
<h1>foo #</h1>
````````````````````````````````


ATX headings need not be separated from surrounding content by blank
lines, and they can interrupt paragraphs:

```````````````````````````````` example
****
## foo
****
.
<hr />
<h2>foo</h2>
<hr />
````````````````````````````````


```````````````````````````````` example
Foo bar
# baz
Bar foo
.
<p>Foo bar</p>
<h1>baz</h1>
<p>Bar foo</p>
````````````````````````````````


ATX headings can be empty:

```````````````````````````````` example
## 
#
### ###
.
<h2></h2>
<h1></h1>
<h3></h3>
````````````````````````````````


## Setext headings

A [setext heading](@) consists of one or more
lines of text, each containing at least one [non-whitespace
character], with no more than 3 spaces indentation, followed by
a [setext heading underline].  The lines of text must be such
that, were they not followed by the setext heading underline,
they would be interpreted as a paragraph:  they cannot be
interpretable as a [code fence], [ATX heading][ATX headings],
[block quote][block quotes], [thematic break][thematic breaks],
[list item][list items], or [HTML block][HTML blocks].

A [setext heading underline](@) is a sequence of
`=` characters or a sequence of `-` characters, with no more than 3
spaces indentation and any number of trailing spaces.  If a line
containing a single `-` can be interpreted as an
empty [list items], it should be interpreted this way
and not as a [setext heading underline].

The heading is a level 1 heading if `=` characters are used in
the [setext heading underline], and a level 2 heading if `-`
characters are used.  The contents of the heading are the result
of parsing the preceding lines of text as CommonMark inline
content.

In general, a setext heading need not be preceded or followed by a
blank line.  However, it cannot interrupt a paragraph, so when a
setext heading comes after a paragraph, a blank line is needed between
them.

Simple examples:

```````````````````````````````` example
Foo *bar*
=========

Foo *bar*
---------
.
<h1>Foo <em>bar</em></h1>
<h2>Foo <em>bar</em></h2>
````````````````````````````````


The content of the header may span more than one line:

```````````````````````````````` example
Foo *bar
baz*
====
.
<h1>Foo <em>bar
baz</em></h1>
````````````````````````````````

The contents are the result of parsing the heading's raw
content as inlines.  The heading's raw content is formed by
concatenating the lines and removing initial and final
[whitespace].

```````````````````````````````` example
  Foo *bar
baz*→
====
.
<h1>Foo <em>bar
baz</em></h1>
````````````````````````````````


The underlining can be any length:

```````````````````````````````` example
Foo
-------------------------

Foo
=
.
<h2>Foo</h2>
<h1>Foo</h1>
````````````````````````````````


The heading content can be indented up to three spaces, and need
not line up with the underlining:

```````````````````````````````` example
   Foo
---

  Foo
-----

  Foo
  ===
.
<h2>Foo</h2>
<h2>Foo</h2>
<h1>Foo</h1>
````````````````````````````````


Four spaces indent is too much:

```````````````````````````````` example
    Foo
    ---

    Foo
---
.
<pre><code>Foo
---

Foo
</code></pre>
<hr />
````````````````````````````````


The setext heading underline can be indented up to three spaces, and
may have trailing spaces:

```````````````````````````````` example
Foo
   ----      
.
<h2>Foo</h2>
````````````````````````````````


Four spaces is too much:

```````````````````````````````` example
Foo
    ---
.
<p>Foo
---</p>
````````````````````````````````


The setext heading underline cannot contain internal spaces:

```````````````````````````````` example
Foo
= =

Foo
--- -
.
<p>Foo
= =</p>
<p>Foo</p>
<hr />
````````````````````````````````


Trailing spaces in the content line do not cause a line break:

```````````````````````````````` example
Foo  
-----
.
<h2>Foo</h2>
````````````````````````````````


Nor does a backslash at the end:

```````````````````````````````` example
Foo\
----
.
<h2>Foo\</h2>
````````````````````````````````


Since indicators of block structure take precedence over
indicators of inline structure, the following are setext headings:

```````````````````````````````` example
`Foo
----
`

<a title="a lot
---
of dashes"/>
.
<h2>`Foo</h2>
<p>`</p>
<h2>&lt;a title=&quot;a lot</h2>
<p>of dashes&quot;/&gt;</p>
````````````````````````````````


The setext heading underline cannot be a [lazy continuation
line] in a list item or block quote:

```````````````````````````````` example
> Foo
---
.
<blockquote>
<p>Foo</p>
</blockquote>
<hr />
````````````````````````````````


```````````````````````````````` example
> foo
bar
===
.
<blockquote>
<p>foo
bar
===</p>
</blockquote>
````````````````````````````````


```````````````````````````````` example
- Foo
---
.
<ul>
<li>Foo</li>
</ul>
<hr />
````````````````````````````````


A blank line is needed between a paragraph and a following
setext heading, since otherwise the paragraph becomes part
of the heading's content:

```````````````````````````````` example
Foo
Bar
---
.
<h2>Foo
Bar</h2>
````````````````````````````````


But in general a blank line is not required before or after
setext headings:

```````````````````````````````` example
---
Foo
---
Bar
---
Baz
.
<hr />
<h2>Foo</h2>
<h2>Bar</h2>
<p>Baz</p>
````````````````````````````````


Setext headings cannot be empty:

```````````````````````````````` example

====
.
<p>====</p>
````````````````````````````````


Setext heading text lines must not be interpretable as block
constructs other than paragraphs.  So, the line of dashes
in these examples gets interpreted as a thematic break:

```````````````````````````````` example
---
---
.
<hr />
<hr />
````````````````````````````````


```````````````````````````````` example
- foo
-----
.
<ul>
<li>foo</li>
</ul>
<hr />
````````````````````````````````


```````````````````````````````` example
    foo
---
.
<pre><code>foo
</code></pre>
<hr />
````````````````````````````````


```````````````````````````````` example
> foo
-----
.
<blockquote>
<p>foo</p>
</blockquote>
<hr />
````````````````````````````````


If you want a heading with `> foo` as its literal text, you can
use backslash escapes:

```````````````````````````````` example
\> foo
------
.
<h2>&gt; foo</h2>
````````````````````````````````


**Compatibility note:**  Most existing Markdown implementations
do not allow the text of setext headings to span multiple lines.
But there is no consensus about how to interpret

``` markdown
Foo
bar
---
baz
```

One can find four different interpretations:

1. paragraph "Foo", heading "bar", paragraph "baz"
2. paragraph "Foo bar", thematic break, paragraph "baz"
3. paragraph "Foo bar --- baz"
4. heading "Foo bar", paragraph "baz"

We find interpretation 4 most natural, and interpretation 4
increases the expressive power of CommonMark, by allowing
multiline headings.  Authors who want interpretation 1 can
put a blank line after the first paragraph:

```````````````````````````````` example
Foo

bar
---
baz
.
<p>Foo</p>
<h2>bar</h2>
<p>baz</p>
````````````````````````````````


Authors who want interpretation 2 can put blank lines around
the thematic break,

```````````````````````````````` example
Foo
bar

---

baz
.
<p>Foo
bar</p>
<hr />
<p>baz</p>
````````````````````````````````


or use a thematic break that cannot count as a [setext heading
underline], such as

```````````````````````````````` example
Foo
bar
* * *
baz
.
<p>Foo
bar</p>
<hr />
<p>baz</p>
````````````````````````````````


Authors who want interpretation 3 can use backslash escapes:

```````````````````````````````` example
Foo
bar
\---
baz
.
<p>Foo
bar
---
baz</p>
````````````````````````````````


<div class="extension-chunk">

<div class="extension">

## Part headings (Markua extension)

As [discussed](#markua-heading-mapping-to-book-and-course-structures),
Markua uses a `{class: part}` attribute on an `h1` heading to make a part
heading from what would otherwise be a chapter heading.

In the HTML output, the only difference between a part and chapter heading on
the heading itself is that there is a `class="part"` attribute shown. However,
obviously, the part and chapter headings are treated differently elsewhere, such
as in the table of contents of the book or the navigation structure of the
course.

### Correct usage

Part heading, atx headers:

```````````````````````````````` example
{class: part}
# Part Heading

This is a paragraph after the start of a part.
.
<h1 class="part">Part Heading</h1>
<p>This is a paragraph after the start of a part.</p>
````````````````````````````````

Part heading, Setext headers:

```````````````````````````````` example
{class: part}
Part Heading
============

This is a paragraph after the start of a part.
.
<h1 class="part">Part Heading</h1>
<p>This is a paragraph after the start of a part.</p>
````````````````````````````````

### Incorrect usage

Adding `{class: part}` to any other heading level than an `h1` is ignored.

Ignored on atx section headers:

```````````````````````````````` example
{class: part}
## Section Heading

Foo
.
<h2>Section Heading</h2>
<p>Foo</p>
````````````````````````````````

Ignored on Setext section headers:

```````````````````````````````` example
{class: part}
Section Heading
---------------

Foo
.
<h2>Section Heading</h2>
<p>Foo</p>
````````````````````````````````

</div>



<div class="extension">

## Resources (Markua extension)

Markua documents are written in plain text, either in one text file or multiple
text files. However, modern books and courses sometimes contain more than text.
Books and courses may embed many types of [resources](@).

Resources vary in four different ways:

1. **Insertion Methods**: Figure and Span
2. **Locations**: Local, Web and Inline
3. **Types**: `audio`, `code`, `image`, `math`, `poetry`, `table` and `video`
4. **Formats**: `mp3`, `ruby`, `png`, `latexmath`, `mp4`, etc.

If you are familiar with Markdown, you will recognize that images, code
and tables are being generalized here as just three of the seven types of
resource, instead of being treated as special cases.

To be clear: the syntax for images, fenced code blocks, and tables is a superset
of that specified by CommonMark and GFM. All images, fenced code blocks and
tables supported by CommonMark and GFM work in Markua. Markua's changes here are
additions, not modifications. Markua's resources are an extension, both
conceptual and in features, of what was already in CommonMark and GFM.

Specifically, what resources do is three things:

1. Add attribute lists and format specifiers to all resource types, including
   images, fenced code blocks and tables. Attribute lists can be used to specify
   a figure title and (if applicable) alt text, set an id, specify the format,
   and do other useful things.
2. Add other types of resources (audio, poetry, math and video).
3. Provide a consistent conceptual framework for thinking about all resources,
   instead of just seven different, unrelated things.

If you're familiar with Markdown syntax, you'll note that the syntax for local
and web resources is similar to Markdown's inline image insertion syntax, and
that the syntax for inline resources is just the fenced code blocks syntax from
CommonMark with the addition of format specifiers and attribute lists.
Furthermore, the image syntax is the inspiration for the syntax of all local and
web resources.

Note that this section is conceptual, and does not contain HTML mapping which
serves as tests. Those are contained in subsequent sections about each resource
type.

If any resource is missing during book or course generation, a Markua processor
should insert something like the "missing image" often seen on web pages into
the book or course.

### Resource insertion methods

Resources can be inserted either as figures or as spans.

#### Figures

All resources can be inserted as figures. Figures are the normal case for how a
resource is inserted. In many Markua documents, they will be most or all of the
resources.

The syntax for a local or web resource inserted as a figure is as follows:

~~~
{key: value, comma: separated, optional: attribute_list}
![optional alt text](resource_path_or_url "Optional Figure Title")
~~~

The syntax for an inline resource inserted as a figure is as follows:

~~~
{key: value, comma: separated, optional: attribute_list}
```optional_format
inline resource content (default format is `guess` with backticks)
```
~~~

The number of backticks can be three or more. This is just the fenced code blocks
syntax, which is discussed later.

You can also insert an inline resource as a figure using three or more tildes
(`~`) as the delimiter:

```
{key: value, comma: separated, optional: attribute_list}
~~~optional_format
inline resource content (default format is `text` with tildes)
~~~
```

##### Figure attributes

A figure can also have attributes. The supported attributes vary based on the
type of resource, but **all** resources inserted as figures support the
`class`, `format`, `title` and `type` attributes. (As such, these four
attributes are discussed here, instead of on the specific resource types below.)

`class`
: All attribute lists support a `class` attribute. When used in figures, this is
the class of the figure. This can be used for styling, and it can also be used by
Markua Processors which group figures by classes, such as theorems or lemmas.

`format`
: This is the resource format. Different resource types have different legal
values for format.

`title`
: This is text which is shown near the figure, typically above or below it. A
Markua Processor can choose where to position titles based on any criteria it
chooses. For example, a Markua Processor can position all titles above or
below figures, or use a different behaviour based on the resource format (e.g.
table titles above, image titles below). Note that the figure title itself
may contain the Markua text formatting specified earlier (e.g. bold, italic).
This text is also displayed for the figure wherever the figure is listed
(e.g. List of Illustrations, Table of Tables, etc.).

`type`
: This is the resource type. This is usually inferred from the format instead of
being specified.

Figures can have both alt text and a figure title. These are distinct things.
We will discuss the figure title first and the alt text second.

##### Figure titles

A resource which is inserted as a figure can have a figure title.

This title shows up in two places in the output:

1. Near the resource, typically above or below it, per the preference of the
Markua Processor.
2. Based on the resource type, either in the List of Illustrations, List of
Tables or Table of Figures, if they are generated for the book. This text
should also be a crosslink to the title inserted near the figure itself.

The title for a figure can provided in one of two ways:

1. In quotes after the filename or URL of a local or web resource.
   ~~~
   ![](algorithm.rb "My Amazing Algorithm")
   ~~~
2. In the attribute list above the resource.
   ~~~
   {title: "My Amazing Algorithm"}
   ![](algorithm.rb)
   ~~~

The first choice is clearly shorter, as well as more pleasant to write and to
read.

Since inline resources do not use the bracket syntax, any titles must be added
in the attribute list:

~~~
{title: "My Amazing Algorithm"}
```ruby
puts "hello world"
```
~~~

##### Figure alt text

A figure can have alt text, as long as the type of resource being inserted
supports alt text. The resource location does not matter: local, web and inline
resources all support alt text.

The four types of resource which can have alt text when inserted as a figure are
`audio`, `image`, `math` and `video`. Resources of type `code`, `poetry` and
`table` do not support alt text, since they themselves are just text.

Alt text is text which is intended to take the place of the resource if the
resource itself cannot be seen. In the case of images, the obvious use case is
for readers with visual disabilities who are using a screen reader, but it also
includes audiobooks and ebook readers which often do not support embedded
images, audio and video, and which may have a hard time displaying math.

Here's an example of good alt text:

~~~
![a red apple, possibly a McIntosh or Spartan](fruit.jpg)
~~~

You can also use an attribute list:

~~~
{alt: "a red apple, possibly a McIntosh or Spartan"}
![](fruit.jpg)
~~~

The alt text should **not** have the same content as the figure title, if the
figure title is present. (Imagine the annoyance for someone with a visual
disability having their screen reader read identical alt text and figure titles
to them throughout an entire book!)

Instead, the alt text should be descriptive of the image content, while the figure
title can be more creative. For example, a figure title may be "Washington
Crossing the Delaware" and the alt text could be "Denzel Washington on a boat in
a river." Having good alt text would enable readers who cannot see the image to
still get the joke which the figure title makes.

##### Figure titles and alt text together

These are some examples of figures with both alt text and a figure title:

~~~
![a red apple](mac.jpg "The Original Mac")

{alt: "a red apple", title: "The Original Mac"}
![](mac.jpg)

{alt: "a blue circle", title: "Earth From Space (Simplified)"}
```!
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

##### The figure attribute list takes precedence

It is always an error to specify an attribute both in the attribute list for a
figure and in the syntactic sugar locations, either after the backticks or in the
square brackets.

However, if this is done, then the value in the attribute list takes precedence.

In the following figure, the format is `text` not `ruby`:

~~~
{format: text}
```ruby
puts "hello world"
```
~~~

In the following figure, the alt text would be "foo" not "bar":

~~~
{alt: foo}
![bar](foo.png)
~~~

In the following figure, the title text would be "foo" not "bar":

~~~
{title: foo}
![](foo.png "bar")
~~~

Again, the Markua Processor should treat all of these as an error.

#### Spans

Inserting a resource as a span means to continue the block context which it is
in, instead of starting a new leaf block for the resource.

There are three types of resources which can be inserted as spans:

1. Single-line inline code resources.
2. A `math` resource (regardless of location) without a title.
3. A local or web `image` resource without a title.

An inline code resource can be inserted as a span using the following syntax:

~~~
backtick `resource`format backtick
~~~

The math formats, including the syntactic sugar for them, are discussed later.

A local image resource without a title can be inserted as expected:

~~~
This is an ![a red apple](mac.jpg) not a banana.
~~~

A web image resource without a title can be inserted as expected:

~~~
This is an ![a red apple](http://markua.com/mac.jpg) not a banana.
~~~

Note that inline image resources cannot be inserted as spans, since even SVG is
so verbose it would make the resulting document very hard to read.

Also, note that if you wish to insert an image in the middle of a sentence,
chances are you are trying to insert an emoji. You can do this with a span image,
if you want exact control of what your emoji look like. However, note that emoji
also have special support in Markua, described [here](#emoji).

Finally, if a title is present, the Markua Processor must treat the resource
as having implicit newlines before and after it, so that it is handled as a
figure. (Figure titles do not make sense inside of sentences.)

~~~
This is ![a red apple](mac.jpg "The Original Mac") not a banana.
~~~

##### Span attribute lists can be used to set the format

When a resource is inserted as a span, the resource is inserted as part of the
flow of text of a paragraph with no newlines before or after it. A span resource
is intended to be extremely short and simple.

By default, the type of an inline resource is `code` and the format is `guess`.
Math and SVG images override this using special syntaxes, discussed later.

However, to support rare use cases, any span can have an attribute list. The
attribute list on a span is specified immediately after the closing backtick.
Span attribute lists can be used to set the format explicitly.

For example, this resource would be formatted as Ruby code:
~~~
Yada yada `puts "hi"`{format: ruby} yada yada.
~~~

### Resource Locations

A resource is either considered a local, web or inline resource based on its
location:

Local Resource
: The resource is stored along with the manuscript--either in a `resources`
directory on a local filesystem, or uploaded to the same web service where the
Markua document is being written.

Web Resource
: The resource is referred to via an `http` or `https` URL.

Inline Resource
: The resource is defined right in the body of a Markua document.

#### Local resources

If local resources are used, all local resources must be stored inside a
`resources` directory, or one of its subdirectories. The `resources` directory
is not part of the path to the resource.

Here's how the paths to local resources work:

1. An image called `foo.jpg` in the `resources` directory should be referred to
   as `![](foo.jpg)`, but can also be referred to as `![](resources/foo.jpg)`.
2. An image called `bar.png` in a subdirectory `images` of the `resources`
   directory should be referred to as `![](images/bar.png)`, but can also be
   referred to as `![](resources/images/foo.jpg)`.
3. For security reasons, leading slashes `/` and navigating upward (`../`) are
   not allowed: `![](/foo.jpg)`, `![](/images/bar.png)` and `![](../foo.jpg)`
   are all illegal.

The reason that paths can either include or omit the resources directory is
simple: including it makes it a simple relative path, which means that
Markdown-aware tools that support, say, external images will just work. However,
omitting it is nice to type, so this is something which should be supported as
well. And the reason the resources directory exists is to keep the Markua
manuscript file(s) separate from the resources, to reduce clutter.

Nested directory trees work as well. A file called `foo.rb` in a
`ch1/examples/ruby` directory tree inside the `resources` directory is referenced
as `![](ch1/examples/ruby/foo.rb)` or as `![](resources/ch1/examples/ruby/foo.rb)`.

Markua does not specify whether there are any subdirectories of the `resources`
directory, or what their names are. Since any subdirectories have their names as
part of the path to the resource, authors can do whatever they want. For example,
you can create subdirectories of the `resources` directory for different types of
resource, such as `audio`, `code`, `images`, etc., but you can also just put them
all in the `resources` directory together. To be clear: the names of the
directories have no meaning, and do not restrict the formats of what can go inside
them.

If you are using a hosted service to write in Markua, this service can store
resources wherever it wants. However, if they provide a download (say as a zip
file) they should create the resources directory and provide the uploaded
resources in that directory. If a nested structure is used, it should be exported
that way--if a web service produces paths which reference images inside an images
directory (e.g. as `images/foo.png`), then the zip file containing an export
should contain a `resources` directory which contains an `images` subdirectory
with the images.

#### Web resources

If web resources are supported, both `http:` and `https:` resources should be
supported.

Web resources are identified by the absolute URL of the resource on the internet.

#### Inline resources

Inline resources can be of type `code`, `image` (of SVG format only), `math`
(regardless of format), `poetry`, or `table`. Since an SVG image is just XML
text, it can be contained inline in the text of a Markua document. This is not
something that is true for binary resources like PNG or JPEG images or any type
of audio or video file--these can only be local or web resources.

The syntax for SVG images is discussed later.

### Resource types

There are seven types of resources:

1. `audio`
2. `code`
3. `image`
4. `math`
5. `poetry`
6. `table`
7. `video`

Each type of resource has a number of supported formats. Any of the seven
resource types can be inserted as a local resource or web resource, and many of
the resource types can also be inserted as an inline resource.

### Resource formats

Both the type and the format can be specified in an attribute list, by the
respective `type` and `format` attributes.

The type and the format can also be inferred from the file extension and, in the
case of web resources, the URL.

Markua Processors must interpret all unspecified file extensions as specifying a
resource of type `code` with a format of `guess`, unless the resource is a web
resource.

If the type and format are not specified and the resource is a web resource, the
Markua Processor may use the domain to decide what type of resource to assume.
For example, a domain of `youtube.com` may be assumed to be of type `video`, a
domain of `instagram.com` may be assumed to be of type `image`, and a domain of
`github.com` may be assumed to be of type `code`.

If the type is not specified in the attribute list, the format determines the
type. The formats can either be specified by the `format` attribute or (in most
cases) inferred from the file extension for local and web resources. (Inline
resources obviously have no file extension, since they are contained in the body
of a Markua document.)

As an author, all you typically do is provide the correct file extension for a
local resource or set the format in the attribute list. Markua recognizes the
format, and uses it to determine the type. If the format is unrecognized, then
the resource is treated as a resource of type `code` and with a format of
`guess`.

It's important to emphasize that the type and format of a resource can be
overridden using an attribute list. The file extensions just set the default
type and format that are inferred.

In rare instances, it is useful to override the `type` and `format` which have
been inferred by the Markua Processor based on the file extension of the
resource. This is done by specifying a type and/or format in the attribute list
of the resource.

The following sections list the various resource formats for each type of
resource, along with the file extensions which make that format and type be
inferred. Note that these file extensions are case-insensitive.

#### Audio resource formats

* `aac` - AAC audio - `.aac`, `.m4a`
* `mp3` - MP3 audio - `.mp3`
* `ogg` - Ogg Vorbis  - `.oga`, `.ogg`
* `wav` - WAV audio - `.wav`, `.wave`

#### Image resource formats

* `jpeg` - JPEG image - `.jpg` or `.jpeg`
* `gif` - GIF image - `.gif`
* `png` - PNG image - `.png`
* `svg` - SVG image - `.svg`
* `svgz` - SVG image (zipped) - `.svgz`

#### Math resource formats

Note that AsciiMath and LaTeX math are almost always contained as inline
resources in a Markua document. They only have file extensions for completeness.
Also, note that `.tex` is assumed to be LaTeX math, not a vanilla LaTeX file.
There is a simple reason for this: Markua needs LaTeX math for math, but only
needs to display LaTeX for people writing about LaTeX. So, if you have a LaTeX
file with an extension of `.tex` that just contains LaTeX code and you want to
display it, then add a `{type: code, format: latex}` attribute list.

* `asciimath` - AsciiMath math - `.asciimath`
* `latexmath` - LaTeX math - `.tex`

Note that the assumption is that AsciiMath will almost always be used as an
inline resource. So, the `.asciimath` file extension is deliberately verbose.

#### Table resource formats

Note that tables are almost always contained as inline resources in a Markua
document. They only have a file extension for completeness. The `.md` file
extension is used, since the tables are formatted in a Markdown extension, and
since Markdown and Markua files themselves are not inserted as resources.

* `table` - Markua table - `.md`

#### Poetry resource formats

Note that poetry is almost always contained as an inline resource in a Markua
document. It only have a file extension for completeness. The `.text` file
extension is used, since `.txt` was used for unformatted code, and since
anything else would not have the appropriate behaviour for authors when trying
to open the files locally by double-clicking.

* `poetry` - Markua poetry - `.text`

#### Video resource formats

Note that .mp4 is used for MP4 video, not MP4 AAC audio.

* `mp4` - MP4 video - `.mp4`
* `webm` - WebM video - `.webm`

#### Code resource formats

Note that most code languages are not specified, and are guessed at with a format
of `guess`. A Markua Processor typically leaves this decision about the language
recognized to the syntax highlighter, such as Pygments.

* `text` - Unformatted code (with no syntax highlighting) - `.txt`
* `guess` - Formatted code, with the language guessed at - any other file
  extension not listed previously in the sections above

</div>

</div>


## Indented code blocks

An [indented code block](@) is composed of one or more
[indented chunks] separated by blank lines.
An [indented chunk](@) is a sequence of non-blank lines,
each indented four or more spaces. The contents of the code block are
the literal contents of the lines, including trailing
[line endings], minus four spaces of indentation.
An indented code block has no [info string].

An indented code block cannot interrupt a paragraph, so there must be
a blank line between a paragraph and a following indented code block.
(A blank line is not needed, however, between a code block and a following
paragraph.)

```````````````````````````````` example
    a simple
      indented code block
.
<pre><code>a simple
  indented code block
</code></pre>
````````````````````````````````


If there is any ambiguity between an interpretation of indentation
as a code block and as indicating that material belongs to a [list
item][list items], the list item interpretation takes precedence:

```````````````````````````````` example
  - foo

    bar
.
<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
````````````````````````````````


```````````````````````````````` example
1.  foo

    - bar
.
<ol>
<li>
<p>foo</p>
<ul>
<li>bar</li>
</ul>
</li>
</ol>
````````````````````````````````



The contents of a code block are literal text, and do not get parsed
as Markdown:

```````````````````````````````` example
    <a/>
    *hi*

    - one
.
<pre><code>&lt;a/&gt;
*hi*

- one
</code></pre>
````````````````````````````````


Here we have three chunks separated by blank lines:

```````````````````````````````` example
    chunk1

    chunk2
  
 
 
    chunk3
.
<pre><code>chunk1

chunk2



chunk3
</code></pre>
````````````````````````````````


Any initial spaces beyond four will be included in the content, even
in interior blank lines:

```````````````````````````````` example
    chunk1
      
      chunk2
.
<pre><code>chunk1
  
  chunk2
</code></pre>
````````````````````````````````


An indented code block cannot interrupt a paragraph.  (This
allows hanging indents and the like.)

```````````````````````````````` example
Foo
    bar

.
<p>Foo
bar</p>
````````````````````````````````


However, any non-blank line with fewer than four leading spaces ends
the code block immediately.  So a paragraph may occur immediately
after indented code:

```````````````````````````````` example
    foo
bar
.
<pre><code>foo
</code></pre>
<p>bar</p>
````````````````````````````````


And indented code can occur immediately before and after other kinds of
blocks:

```````````````````````````````` example
# Heading
    foo
Heading
------
    foo
----
.
<h1>Heading</h1>
<pre><code>foo
</code></pre>
<h2>Heading</h2>
<pre><code>foo
</code></pre>
<hr />
````````````````````````````````


The first line can be indented more than four spaces:

```````````````````````````````` example
        foo
    bar
.
<pre><code>    foo
bar
</code></pre>
````````````````````````````````


Blank lines preceding or following an indented code block
are not included in it:

```````````````````````````````` example

    
    foo
    

.
<pre><code>foo
</code></pre>
````````````````````````````````


Trailing spaces are included in the code block's content:

```````````````````````````````` example
    foo  
.
<pre><code>foo  
</code></pre>
````````````````````````````````



## Fenced code blocks

A [code fence](@) is a sequence
of at least three consecutive backtick characters (`` ` ``) or
tildes (`~`).  (Tildes and backticks cannot be mixed.)
A [fenced code block](@)
begins with a code fence, indented no more than three spaces.

The line with the opening code fence may optionally contain some text
following the code fence; this is trimmed of leading and trailing
whitespace and called the [info string](@). If the [info string] comes
after a backtick fence, it may not contain any backtick
characters.  (The reason for this restriction is that otherwise
some inline code would be incorrectly interpreted as the
beginning of a fenced code block.)

The content of the code block consists of all subsequent lines, until
a closing [code fence] of the same type as the code block
began with (backticks or tildes), and with at least as many backticks
or tildes as the opening code fence.  If the leading code fence is
indented N spaces, then up to N spaces of indentation are removed from
each line of the content (if present).  (If a content line is not
indented, it is preserved unchanged.  If it is indented less than N
spaces, all of the indentation is removed.)

The closing code fence may be indented up to three spaces, and may be
followed only by spaces, which are ignored.  If the end of the
containing block (or document) is reached and no closing code fence
has been found, the code block contains all of the lines after the
opening code fence until the end of the containing block (or
document).  (An alternative spec would require backtracking in the
event that a closing code fence is not found.  But this makes parsing
much less efficient, and there seems to be no real down side to the
behavior described here.)

A fenced code block may interrupt a paragraph, and does not require
a blank line either before or after.

The content of a code fence is treated as literal text, not parsed
as inlines.  The first word of the [info string] is typically used to
specify the language of the code sample, and rendered in the `class`
attribute of the `code` tag.  However, this spec does not mandate any
particular treatment of the [info string].

Here is a simple example with backticks:

```````````````````````````````` example
```
<
 >
```
.
<pre><code>&lt;
 &gt;
</code></pre>
````````````````````````````````


With tildes:

```````````````````````````````` example
~~~
<
 >
~~~
.
<pre><code>&lt;
 &gt;
</code></pre>
````````````````````````````````

Fewer than three backticks is not enough:

```````````````````````````````` example
``
foo
``
.
<p><code>foo</code></p>
````````````````````````````````

The closing code fence must use the same character as the opening
fence:

```````````````````````````````` example
```
aaa
~~~
```
.
<pre><code>aaa
~~~
</code></pre>
````````````````````````````````


```````````````````````````````` example
~~~
aaa
```
~~~
.
<pre><code>aaa
```
</code></pre>
````````````````````````````````


The closing code fence must be at least as long as the opening fence:

```````````````````````````````` example
````
aaa
```
``````
.
<pre><code>aaa
```
</code></pre>
````````````````````````````````


```````````````````````````````` example
~~~~
aaa
~~~
~~~~
.
<pre><code>aaa
~~~
</code></pre>
````````````````````````````````


Unclosed code blocks are closed by the end of the document
(or the enclosing [block quote][block quotes] or [list item][list items]):

```````````````````````````````` example
```
.
<pre><code></code></pre>
````````````````````````````````


```````````````````````````````` example
`````

```
aaa
.
<pre><code>
```
aaa
</code></pre>
````````````````````````````````


```````````````````````````````` example
> ```
> aaa

bbb
.
<blockquote>
<pre><code>aaa
</code></pre>
</blockquote>
<p>bbb</p>
````````````````````````````````


A code block can have all empty lines as its content:

```````````````````````````````` example
```

  
```
.
<pre><code>
  
</code></pre>
````````````````````````````````


A code block can be empty:

```````````````````````````````` example
```
```
.
<pre><code></code></pre>
````````````````````````````````


Fences can be indented.  If the opening fence is indented,
content lines will have equivalent opening indentation removed,
if present:

```````````````````````````````` example
 ```
 aaa
aaa
```
.
<pre><code>aaa
aaa
</code></pre>
````````````````````````````````


```````````````````````````````` example
  ```
aaa
  aaa
aaa
  ```
.
<pre><code>aaa
aaa
aaa
</code></pre>
````````````````````````````````


```````````````````````````````` example
   ```
   aaa
    aaa
  aaa
   ```
.
<pre><code>aaa
 aaa
aaa
</code></pre>
````````````````````````````````


Four spaces indentation produces an indented code block:

```````````````````````````````` example
    ```
    aaa
    ```
.
<pre><code>```
aaa
```
</code></pre>
````````````````````````````````


Closing fences may be indented by 0-3 spaces, and their indentation
need not match that of the opening fence:

```````````````````````````````` example
```
aaa
  ```
.
<pre><code>aaa
</code></pre>
````````````````````````````````


```````````````````````````````` example
   ```
aaa
  ```
.
<pre><code>aaa
</code></pre>
````````````````````````````````


This is not a closing fence, because it is indented 4 spaces:

```````````````````````````````` example
```
aaa
    ```
.
<pre><code>aaa
    ```
</code></pre>
````````````````````````````````



Code fences (opening and closing) cannot contain internal spaces:

```````````````````````````````` example
``` ```
aaa
.
<p><code> </code>
aaa</p>
````````````````````````````````


```````````````````````````````` example
~~~~~~
aaa
~~~ ~~
.
<pre><code>aaa
~~~ ~~
</code></pre>
````````````````````````````````


Fenced code blocks can interrupt paragraphs, and can be followed
directly by paragraphs, without a blank line between:

```````````````````````````````` example
foo
```
bar
```
baz
.
<p>foo</p>
<pre><code>bar
</code></pre>
<p>baz</p>
````````````````````````````````


Other blocks can also occur before and after fenced code blocks
without an intervening blank line:

```````````````````````````````` example
foo
---
~~~
bar
~~~
# baz
.
<h2>foo</h2>
<pre><code>bar
</code></pre>
<h1>baz</h1>
````````````````````````````````


An [info string] can be provided after the opening code fence.
Although this spec doesn't mandate any particular treatment of
the info string, the first word is typically used to specify
the language of the code block. In HTML output, the language is
normally indicated by adding a class to the `code` element consisting
of `language-` followed by the language name.

```````````````````````````````` example
```ruby
def foo(x)
  return 3
end
```
.
<pre><code class="language-ruby">def foo(x)
  return 3
end
</code></pre>
````````````````````````````````


```````````````````````````````` example
~~~~    ruby startline=3 $%@#$
def foo(x)
  return 3
end
~~~~~~~
.
<pre><code class="language-ruby">def foo(x)
  return 3
end
</code></pre>
````````````````````````````````


```````````````````````````````` example
````;
````
.
<pre><code class="language-;"></code></pre>
````````````````````````````````


[Info strings] for backtick code blocks cannot contain backticks:

```````````````````````````````` example
``` aa ```
foo
.
<p><code>aa</code>
foo</p>
````````````````````````````````


[Info strings] for tilde code blocks can contain backticks and tildes:

```````````````````````````````` example
~~~ aa ``` ~~~
foo
~~~
.
<pre><code class="language-aa">foo
</code></pre>
````````````````````````````````


Closing code fences cannot have [info strings]:

```````````````````````````````` example
```
``` aaa
```
.
<pre><code>``` aaa
</code></pre>
````````````````````````````````



<div class="extension-chunk">

<div class="extension">

## Code resources (Markua extension)

Code can be a local, web or inline resource, just like any other resource, and
the same resource syntax applies to code as to all other resources.

As discussed, code cannot have alt text. It's just text. If any alt text is
provided for a code resource, it is ignored.

Markua specifies only one specific file extension to be associated with a type of
`code`: the `.txt` extension, which is for the format of `text`. However, Markua
Processors must interpret **all** unspecified file extensions as specifying a
resource of type `code` with a format of `guess`.

Regardless of whether syntax highlighting is supported and the programming
language is detected, all code must be formatted as `monospaced text` by Markua
Processors.

The `text` format means to not do any syntax highlighting as well.

The `guess` format is a request for the Markua Processor to guess at the
programming language based on the file extension and/or the syntax of the code
itself. Then, if the detected language corresponds to a particular programming
language which the Markua Processor recognizes, and if the Markua Processor
supports syntax highlighting, then it can format the resource as nicely
syntax-highlighted code. Syntax highlighting is entirely optional in Markua
Processors. If a Markua Processor does not support syntax highlighting, and/or
if it cannot detect a matching supported programming language, then it must
format the code as though the format was `text`--i.e. to format it as
unformatted monospaced text.

Besides the `text` and `guess` values of the format attribute, you can also
specify the programming language by setting the format attribute to a specific
programming language. This is more reliable than `guess`. Unlike other resource
types, Markua does not specify the complete set of the values of the `format`
attribute--there are so many programming languages in the world, and new ones
are added so frequently, that doing so would be impractical.

However, while a complete set of the values of the `format` attribute is not
specified, Markua does specify the `console` value of the `format` attribute to
indicate console input. A Markua Processor should format console input as such.
(For example, Leanpub uses the open source Pygments library for its code
formatting, and Pygments handles `console` format correctly, so Leanpub gets this
for free.)

The default value of the format attribute for code is complex:

1. For code which is inserted as a span (which is only supported with inline
   resources), the default format is `text`.
2. For code which is inserted as a figure which is inserted as an inline
   resource using three tildes, the default format is `text`.
3. For all other code, the default format is `guess`. This includes local and web
   resources inserted as figures, and code inserted as an inline figure using
   three backticks.

Note that the default format can be overridden by specifying it via an attribute
list, or after the three backticks in syntactic sugar.

### Supported Attributes for Code

The following are the supported attributes for code resources, in addition to the
`class`, `format`, `title` and `type` attributes which all resources support.

`line-numbers`
: This determines whether the code sample shows line numbers. Legal values are
`true` or `false`. The default value is `false`. Any value other than `true` is
interpreted as `false`.

`number-from`
: If line numbers are shown, this lets you override the starting number of the
line numbers. The default value is `1`.

`crop-start`
: Sometimes it's desirable to only show part of a code resource defined in an
external file as the code example. The `crop-start` and `crop-end` attributes let
you accomplish this. The `crop-start` attribute defines the line which represents
the first line included from the resource. For example, `{crop-start: 10,
crop-end: 15, line-numbers: true, number-from: 10}` ensures that lines 10-15 are
shown and are numbered as lines 10-15. The default value is 1, which is the first
line of the file.

`crop-end`
: This attribute ends the range started with crop-start. The default value of
`crop-end` is to be omitted, which is equivalent to specifying the last line of
the file.

#### Default Value of the `format` attribute in Inline Code Samples

The default value of the `format` attribute for a code resource inserted as a
figure varies based on context.

If the code resource is a local or web resource, it defaults to `guess`.

If the code resource is an inline resource, the default varies based on the
delimiter, and whether the code is inserted as a span or as a block.

With three backticks the default format is `guess`, and with three tildes, the
default format is `text`. This way, you can vary the default without having to
type an attribute list: if you want the code language guessed at, use backticks;
if you don't, use tildes. Of course, you can specify any attributes you wish
with either delimiter, and specified attributes override default ones. The only
reason there are different defaults are to make things easier to type.
Programmers refer to such niceties as "syntactic sugar".

The default value of block code resources inserted with three backticks can be
overridden from `guess` to some other value by setting by the
`default-code-language` attribute on the entire Markua document. (This attribute
has no effect on resources inserted with three tildes.) The default value of
code span resources inserted as spans with single backticks can be overridden
from the default value of `text` to some other value by setting the
`default-code-span-language` on the entire Markua document.

### Local Code Resources

Local code resources can be inserted as a figure.

This first figure will be a type of code and a format of `guess`. A Markua
Processor which associates `.rb` file extensions with Ruby code will treat this
as Ruby code; a Markua Processor which has no association for `.rb` files will
treat it as plain text:

~~~
Here's a paragraph before the figure.

![](hello.rb "Hello World in Ruby")

Here's a paragraph after the figure.
~~~

That is equivalent to:

~~~
Here's a paragraph before the figure.

{format: guess}
![](hello.rb "Hello World in Ruby")

Here's a paragraph after the figure.
~~~

If you don't want to take chances you can do this:

~~~
Here's a paragraph before the figure.

{format: ruby}
![](hello.rb "Hello World in Ruby")

Here's a paragraph after the figure.
~~~

Note that the title is optional in all figures:

~~~
Here's a paragraph before the figure.

![](hello.rb)

Here's a paragraph after the figure.
~~~

### Web Code Resources

Web code resources function identically to how local code resources work,
including the significance of file extensions. The only differences is that the
files are on the web.

This will be a type of code and a format of `guess` since the file extension is
not specified:

~~~
![](http://markua.com/hello.rb "Hello World in Ruby")
~~~

That is equivalent to:

~~~
{format: guess}
![](http://markua.com/hello.rb "Hello World in Ruby")
~~~

If you don't want to take chances you can do this:

~~~
{format: ruby}
![](http://markua.com/hello.rb "Hello World in Ruby")
~~~

### Inline Code Resources

Inline code resources are the most flexible way to insert code. They are the only
way to insert code as a span resource, and the most straightforward way to add
short code examples as figures.

The great thing about inline code resources, either as spans or figures, is that
they work the same way as they do in CommonMark and GFM, with small additions
by Markua.

#### No Attribute Lists or Format Specifiers on Indented Code Blocks

Indented code blocks are supported for compatibility with CommonMark and GFM.
However, no attribute lists or format specifiers can be used. If you want to use
them, use a fenced code block.

#### Attribute Lists and Format Specifiers on Fenced Code Blocks

Fenced code blocks, discussed earlier, are how to insert inline code resources
as figures. These can have attribute lists or format specifiers.

This will be a type of code and a format of `guess` since three backticks are
used and since the format is not specified:

~~~
Some paragraph.

```
puts "hello"
```

Some paragraph.
~~~

That is equivalent to:

~~~
Some paragraph.

```guess
puts "hello"
```

Some paragraph.
~~~

If you don't want to take chances you can do this to explicitly specify the
format:

~~~
Some paragraph.

```ruby
puts "hello"
```

Some paragraph.
~~~

This Ruby code may be formatted as such if the Markua Processor understands
`ruby`. If not, the `ruby` format will be ignored.

If you don't like syntactic sugar you can do:

~~~
Some paragraph.

{format: ruby}
```
puts "hello"
```

Some paragraph.
~~~

If you want a figure title, you can add it to the attribute list with any of
the above. For example:

~~~
Some paragraph.

{title: "Hello World in Ruby"}
```ruby
puts "hello"
```

Some paragraph.
~~~

Finally, if you want the code to definitely not get syntax highlighted, you can
force format to be `text` in one of two ways.

First, you can set it explicitly:

~~~
Some paragraph.

```text
puts "hello"
```

Some paragraph.
~~~

Second, you can use three tildes instead of three backticks, since the default
with tildes is `text` not `guess`:

```
Some paragraph.

~~~
puts "hello"
~~~

Some paragraph.
```

As discussed previously, console input and output should be formatted as such by
a Markua Processor:

~~~
```console
$ git init
Initialized empty Git repository in /path/to/repo
```
~~~

Finally, it's important to note that when you are writing about other inline
formats, such as SVG or AsciiMath, what you are really doing is creating a code
resource. This is shown in the sections below, which discuss SVG and AsciiMath,
but this applies more broadly.

#### Attribute Lists on Code Spans

Code spans are discussed later in the spec. While code spans are done just as in
CommonMark and GFM, Markua adds one thing: attribute lists to specify the format.
This serves as a hint to any syntax highlighter:

~~~
Hello World in Ruby is a simple `puts "hello world"`{format: ruby} statement.
~~~

### Marking Code as Added or Deleted

Markua supports marking code as added or deleted, which can be helpful if you are
writing a computer programming book and want to indicate what code should be
added or removed to a larger program.

The way to do this is to add special comment lines to your code.

The magic words are `markua-start-insert`, `markua-end-insert`,
`markua-start-delete` and `markua-end-delete`. Any line containing one of those
words will be removed completely by a Markua Processor before being inserted into
the output.

The Markua Processor will then be able to determine which code is being deleted
or inserted, and format it accordingly. The recommended way for a Markua
Processor to do this is to make code which is being inserted get **`bolded`**,
and to make code which is getting deleted to be put in ~~`strikethrough`~~.

Finally, while syntax highlighting is optional in a Markua Processor, if a Markua
Processor does support syntax highlighting it is allowed for the Markua Processor
to not do any syntax highlighting when there is the presence of any of any
special `markua-*` comments. Syntax highlighting may make it harder to notice the
added and removed code, if they are formatted with bold and strikethrough
respectively.

### Line Wrapping in Code Resources

Code resources should have newlines added by the author to ensure that automatic
line wrapping is not relied upon. Markua Processors may wrap lines to ensure that
all code is visible on a page, and *may* add continuation characters (like the
backslash `\` character) in the output to indicate that a line has been
automatically wrapped. However, adding a continuation character is not a
requirement, nor is the choice of which continuation character is used.

</div>


<div class="extension">

## Poetry (Markua extension)

Poetry can be a local, web or inline resource, just like any other resource, and
the same resource syntax applies to poetry as to all other resources.

Poetry can only be inserted as a figure. It cannot be inserted as a span
resource, like code can. (When you insert poetry in a sentence, nothing is needed
except quotes, so this makes sense.)

Markua specifies only one specific file extension to be associated with a type of
`poetry`: the `.text` extension.

Poetry is different from code resources in one important way: in poetry, you can
use Markua text formatting (bold, italic, strikethrough, etc.) to format your
text. This is true regardless of whether the poetry is formatted with a
proportional or monospaced font.

### Supported attributes for poetry

The following are the supported attributes for poetry resources, in addition to
the `class`, `format`, `title` and `type` attributes which all resources support.

`monospaced`
: `true` or `false`. The default is `false`, except for a special case with
inline poetry resources, discussed below. If `true`, the Markua Processor must
use a monospaced font to output the poetry. If false, the Markua Processor may
use whatever font (proportional or monospaced) it is configured to use to output
poetry.

### Poetry, whitespace and newlines

Regardless of the value of the `monospaced` attribute, all whitespace inside a
poetry resource is respected. This includes all spaces and newlines, regardless
of whether they are leading, internal or trailing spaces, and regardless of the
number of consecutive newlines.

(The whitespace is preserved, but it is rendered using either a proportional
font or a monospaced one based on the value of the `monospaced` attribute.)

Poetry resources should have newlines added by the author to ensure that
automatic line wrapping is not relied upon.

Markua Processors may wrap lines to ensure that all poetry is visible on a page,
and *may* add continuation characters (like the backslash `\` character) in the
output to indicate that a line has been automatically wrapped by the Markua
Processor.

Obviously, seeing a continuation character is in poetry is terrible, so the
author should consider this a mistake that needs to be fixed by manually line
wrapping.

### Local poetry resources

Local poetry resources look like many other resources inserted as figures.

~~~
Here's a Shakespearean sonnet:

![](sonnet130.text "Sonnet 130")

Here's an E. E. Cummings poem:

{monospaced: true}
![](iwillbe.text "I Will Be")
~~~

If you don't want to rely on the `.text` extension, you can specify the `type`
and `format` explicitly:

~~~
Here's a Shakespearean sonnet:

{type: poetry, monospaced: false}
![](sonnet130.text "Sonnet 130")

Here's an E. E. Cummings poem:

{type: poetry, monospaced: true}
![](iwillbe.text "I Will Be")
~~~

### Web poetry resources

Web poetry resources function identically to how local poetry resources work,
including the significance of file extensions. The only differences is that the
files are on the web.

~~~
Here's a Shakespearean sonnet:

![](http://markua.com/sonnet130.text "Sonnet 130")

Here's a paragraph after the figure.
~~~

You can also specify the type and format explicitly:

~~~
Here's a Shakespearean sonnet:

{type: poetry, monospaced: false}
![](http://markua.com/sonnet130.text "Sonnet 130")

Here's a paragraph after the figure.
~~~

### Inline poetry resources

To create an inline poetry resource, you use the fenced code block syntax, and
you either use an attribute list or one of two types of syntactic sugar.

`&`
: This is equivalent to `{type: poetry, monospaced: false}`

`*`
: This is equivalent to `{type: poetry, monospaced: true}`

Here's a portion of Shakespearean Sonnet 130, using `&` to indicate that
`monospaced` is false:

```````````````````````````````` example
Foo

```&
I grant I never saw a goddess go;
My mistress when she walks treads on the ground.
    And yet, by heaven, I think my love as rare
    As any she belied with false compare.
```

Bar
.
<p>Foo</p>
<div class="poetry">
<p>I grant I never saw a goddess go;<br />
My mistress when she walks treads on the ground.<br />
&nbsp;&nbsp;&nbsp;&nbsp;And yet, by heaven, I think my love as rare<br />
&nbsp;&nbsp;&nbsp;&nbsp;As any she belied with false compare.</p>
</div>
<p>Bar</p>
````````````````````````````````

Yes, manual indentation of the last two lines of the sonnet is done with
`&nbsp;`, since that's what they are: non-breaking spaces. Also, note that this
sonnet didn't use any formatting characters to make things bold or italic, since
Shakespeare spent his time writing, not formatting. (If Shakespeare *had* used a
computer, I'd like to think he would have written in Markua.)

Here's a portion of a "poem" using `*` to indicate that `monospaced` is true:

```````````````````````````````` example
Foo

```*
i
  *am*
      a        cat
            a        **l a z y**          cat

me   ow
```

Bar
.
<p>Foo</p>
<div class="poetry monospaced">
<p>i<br />
&nbsp;&nbsp;<em>am</em><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>l a z y</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat<br />
<br />
me&nbsp;&nbsp;&nbsp;ow</p>
</div>
<p>Bar</p>
````````````````````````````````

No, the `&nbsp;` isn't very poetic. Neither is my poem.

### But what if I want every character taken literally?

If you want to type poetry where every character is taken exactly literally, use
a code block with a format of text for that:

```````````````````````````````` example
```text
*this* isn't italic
and **this** is not bold
* * * cherry blossoms * * *
```
.
<pre><code>*this* isn't italic
and **this** is not bold
* * * cherry blossoms * * *
</code></pre>
````````````````````````````````

</div>

</div>


## HTML blocks

An [HTML block](@) is a group of lines that is treated
as raw HTML (and will not be escaped in HTML output).

There are seven kinds of [HTML block], which can be defined by their
start and end conditions.  The block begins with a line that meets a
[start condition](@) (after up to three spaces optional indentation).
It ends with the first subsequent line that meets a matching [end
condition](@), or the last line of the document, or the last line of
the [container block](#container-blocks) containing the current HTML
block, if no line is encountered that meets the [end condition].  If
the first line meets both the [start condition] and the [end
condition], the block will contain just that line.

1.  **Start condition:**  line begins with the string `<script`,
`<pre`, or `<style` (case-insensitive), followed by whitespace,
the string `>`, or the end of the line.\
**End condition:**  line contains an end tag
`</script>`, `</pre>`, or `</style>` (case-insensitive; it
need not match the start tag).

2.  **Start condition:** line begins with the string `<!--`.\
**End condition:**  line contains the string `-->`.

3.  **Start condition:** line begins with the string `<?`.\
**End condition:** line contains the string `?>`.

4.  **Start condition:** line begins with the string `<!`
followed by an uppercase ASCII letter.\
**End condition:** line contains the character `>`.

5.  **Start condition:**  line begins with the string
`<![CDATA[`.\
**End condition:** line contains the string `]]>`.

6.  **Start condition:** line begins the string `<` or `</`
followed by one of the strings (case-insensitive) `address`,
`article`, `aside`, `base`, `basefont`, `blockquote`, `body`,
`caption`, `center`, `col`, `colgroup`, `dd`, `details`, `dialog`,
`dir`, `div`, `dl`, `dt`, `fieldset`, `figcaption`, `figure`,
`footer`, `form`, `frame`, `frameset`,
`h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `head`, `header`, `hr`,
`html`, `iframe`, `legend`, `li`, `link`, `main`, `menu`, `menuitem`,
`nav`, `noframes`, `ol`, `optgroup`, `option`, `p`, `param`,
`section`, `source`, `summary`, `table`, `tbody`, `td`,
`tfoot`, `th`, `thead`, `title`, `tr`, `track`, `ul`, followed
by [whitespace], the end of the line, the string `>`, or
the string `/>`.\
**End condition:** line is followed by a [blank line].

7.  **Start condition:**  line begins with a complete [open tag]
(with any [tag name] other than `script`,
`style`, or `pre`) or a complete [closing tag],
followed only by [whitespace] or the end of the line.\
**End condition:** line is followed by a [blank line].

HTML blocks continue until they are closed by their appropriate
[end condition], or the last line of the document or other [container
block](#container-blocks).  This means any HTML **within an HTML
block** that might otherwise be recognised as a start condition will
be ignored by the parser and passed through as-is, without changing
the parser's state.

For instance, `<pre>` within a HTML block started by `<table>` will not affect
the parser state; as the HTML block was started in by start condition 6, it
will end at any blank line. This can be surprising:

```````````````````````````````` example
<table><tr><td>
<pre>
**Hello**,

_world_.
</pre>
</td></tr></table>
.
<table><tr><td>
<pre>
**Hello**,
<p><em>world</em>.
</pre></p>
</td></tr></table>
````````````````````````````````

In this case, the HTML block is terminated by the newline — the `**Hello**`
text remains verbatim — and regular parsing resumes, with a paragraph,
emphasised `world` and inline and block HTML following.

All types of [HTML blocks] except type 7 may interrupt
a paragraph.  Blocks of type 7 may not interrupt a paragraph.
(This restriction is intended to prevent unwanted interpretation
of long tags inside a wrapped paragraph as starting HTML blocks.)

Some simple examples follow.  Here are some basic HTML blocks
of type 6:

```````````````````````````````` example
<table>
  <tr>
    <td>
           hi
    </td>
  </tr>
</table>

okay.
.
<table>
  <tr>
    <td>
           hi
    </td>
  </tr>
</table>
<p>okay.</p>
````````````````````````````````


```````````````````````````````` example
 <div>
  *hello*
         <foo><a>
.
 <div>
  *hello*
         <foo><a>
````````````````````````````````


A block can also start with a closing tag:

```````````````````````````````` example
</div>
*foo*
.
</div>
*foo*
````````````````````````````````


Here we have two HTML blocks with a Markdown paragraph between them:

```````````````````````````````` example
<DIV CLASS="foo">

*Markdown*

</DIV>
.
<DIV CLASS="foo">
<p><em>Markdown</em></p>
</DIV>
````````````````````````````````


The tag on the first line can be partial, as long
as it is split where there would be whitespace:

```````````````````````````````` example
<div id="foo"
  class="bar">
</div>
.
<div id="foo"
  class="bar">
</div>
````````````````````````````````


```````````````````````````````` example
<div id="foo" class="bar
  baz">
</div>
.
<div id="foo" class="bar
  baz">
</div>
````````````````````````````````


An open tag need not be closed:
```````````````````````````````` example
<div>
*foo*

*bar*
.
<div>
*foo*
<p><em>bar</em></p>
````````````````````````````````



A partial tag need not even be completed (garbage
in, garbage out):

```````````````````````````````` example
<div id="foo"
*hi*
.
<div id="foo"
*hi*
````````````````````````````````


```````````````````````````````` example
<div class
foo
.
<div class
foo
````````````````````````````````


The initial tag doesn't even need to be a valid
tag, as long as it starts like one:

```````````````````````````````` example
<div *???-&&&-<---
*foo*
.
<div *???-&&&-<---
*foo*
````````````````````````````````


In type 6 blocks, the initial tag need not be on a line by
itself:

```````````````````````````````` example
<div><a href="bar">*foo*</a></div>
.
<div><a href="bar">*foo*</a></div>
````````````````````````````````


```````````````````````````````` example
<table><tr><td>
foo
</td></tr></table>
.
<table><tr><td>
foo
</td></tr></table>
````````````````````````````````


Everything until the next blank line or end of document
gets included in the HTML block.  So, in the following
example, what looks like a Markdown code block
is actually part of the HTML block, which continues until a blank
line or the end of the document is reached:

```````````````````````````````` example
<div></div>
``` c
int x = 33;
```
.
<div></div>
``` c
int x = 33;
```
````````````````````````````````


To start an [HTML block] with a tag that is *not* in the
list of block-level tags in (6), you must put the tag by
itself on the first line (and it must be complete):

```````````````````````````````` example
<a href="foo">
*bar*
</a>
.
<a href="foo">
*bar*
</a>
````````````````````````````````


In type 7 blocks, the [tag name] can be anything:

```````````````````````````````` example
<Warning>
*bar*
</Warning>
.
<Warning>
*bar*
</Warning>
````````````````````````````````


```````````````````````````````` example
<i class="foo">
*bar*
</i>
.
<i class="foo">
*bar*
</i>
````````````````````````````````


```````````````````````````````` example
</ins>
*bar*
.
</ins>
*bar*
````````````````````````````````


These rules are designed to allow us to work with tags that
can function as either block-level or inline-level tags.
The `<del>` tag is a nice example.  We can surround content with
`<del>` tags in three different ways.  In this case, we get a raw
HTML block, because the `<del>` tag is on a line by itself:

```````````````````````````````` example
<del>
*foo*
</del>
.
<del>
*foo*
</del>
````````````````````````````````


In this case, we get a raw HTML block that just includes
the `<del>` tag (because it ends with the following blank
line).  So the contents get interpreted as CommonMark:

```````````````````````````````` example
<del>

*foo*

</del>
.
<del>
<p><em>foo</em></p>
</del>
````````````````````````````````


Finally, in this case, the `<del>` tags are interpreted
as [raw HTML] *inside* the CommonMark paragraph.  (Because
the tag is not on a line by itself, we get inline HTML
rather than an [HTML block].)

```````````````````````````````` example
<del>*foo*</del>
.
<p><del><em>foo</em></del></p>
````````````````````````````````


HTML tags designed to contain literal content
(`script`, `style`, `pre`), comments, processing instructions,
and declarations are treated somewhat differently.
Instead of ending at the first blank line, these blocks
end at the first line containing a corresponding end tag.
As a result, these blocks can contain blank lines:

A pre tag (type 1):

```````````````````````````````` example
<pre language="haskell"><code>
import Text.HTML.TagSoup

main :: IO ()
main = print $ parseTags tags
</code></pre>
okay
.
<pre language="haskell"><code>
import Text.HTML.TagSoup

main :: IO ()
main = print $ parseTags tags
</code></pre>
<p>okay</p>
````````````````````````````````


A script tag (type 1):

```````````````````````````````` example
<script type="text/javascript">
// JavaScript example

document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>
okay
.
<script type="text/javascript">
// JavaScript example

document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>
<p>okay</p>
````````````````````````````````


A style tag (type 1):

```````````````````````````````` example
<style
  type="text/css">
h1 {color:red;}

p {color:blue;}
</style>
okay
.
<style
  type="text/css">
h1 {color:red;}

p {color:blue;}
</style>
<p>okay</p>
````````````````````````````````


If there is no matching end tag, the block will end at the
end of the document (or the enclosing [block quote][block quotes]
or [list item][list items]):

```````````````````````````````` example
<style
  type="text/css">

foo
.
<style
  type="text/css">

foo
````````````````````````````````


```````````````````````````````` example
> <div>
> foo

bar
.
<blockquote>
<div>
foo
</blockquote>
<p>bar</p>
````````````````````````````````


```````````````````````````````` example
- <div>
- foo
.
<ul>
<li>
<div>
</li>
<li>foo</li>
</ul>
````````````````````````````````


The end tag can occur on the same line as the start tag:

```````````````````````````````` example
<style>p{color:red;}</style>
*foo*
.
<style>p{color:red;}</style>
<p><em>foo</em></p>
````````````````````````````````


```````````````````````````````` example
<!-- foo -->*bar*
*baz*
.
<!-- foo -->*bar*
<p><em>baz</em></p>
````````````````````````````````


Note that anything on the last line after the
end tag will be included in the [HTML block]:

```````````````````````````````` example
<script>
foo
</script>1. *bar*
.
<script>
foo
</script>1. *bar*
````````````````````````````````


A comment (type 2):

```````````````````````````````` example
<!-- Foo

bar
   baz -->
okay
.
<!-- Foo

bar
   baz -->
<p>okay</p>
````````````````````````````````



A processing instruction (type 3):

```````````````````````````````` example
<?php

  echo '>';

?>
okay
.
<?php

  echo '>';

?>
<p>okay</p>
````````````````````````````````


A declaration (type 4):

```````````````````````````````` example
<!DOCTYPE html>
.
<!DOCTYPE html>
````````````````````````````````


CDATA (type 5):

```````````````````````````````` example
<![CDATA[
function matchwo(a,b)
{
  if (a < b && a < 0) then {
    return 1;

  } else {

    return 0;
  }
}
]]>
okay
.
<![CDATA[
function matchwo(a,b)
{
  if (a < b && a < 0) then {
    return 1;

  } else {

    return 0;
  }
}
]]>
<p>okay</p>
````````````````````````````````


The opening tag can be indented 1-3 spaces, but not 4:

```````````````````````````````` example
  <!-- foo -->

    <!-- foo -->
.
  <!-- foo -->
<pre><code>&lt;!-- foo --&gt;
</code></pre>
````````````````````````````````


```````````````````````````````` example
  <div>

    <div>
.
  <div>
<pre><code>&lt;div&gt;
</code></pre>
````````````````````````````````


An HTML block of types 1--6 can interrupt a paragraph, and need not be
preceded by a blank line.

```````````````````````````````` example
Foo
<div>
bar
</div>
.
<p>Foo</p>
<div>
bar
</div>
````````````````````````````````


However, a following blank line is needed, except at the end of
a document, and except for blocks of types 1--5, [above][HTML
block]:

```````````````````````````````` example
<div>
bar
</div>
*foo*
.
<div>
bar
</div>
*foo*
````````````````````````````````


HTML blocks of type 7 cannot interrupt a paragraph:

```````````````````````````````` example
Foo
<a href="bar">
baz
.
<p>Foo
<a href="bar">
baz</p>
````````````````````````````````


This rule differs from John Gruber's original Markdown syntax
specification, which says:

> The only restrictions are that block-level HTML elements —
> e.g. `<div>`, `<table>`, `<pre>`, `<p>`, etc. — must be separated from
> surrounding content by blank lines, and the start and end tags of the
> block should not be indented with tabs or spaces.

In some ways Gruber's rule is more restrictive than the one given
here:

- It requires that an HTML block be preceded by a blank line.
- It does not allow the start tag to be indented.
- It requires a matching end tag, which it also does not allow to
  be indented.

Most Markdown implementations (including some of Gruber's own) do not
respect all of these restrictions.

There is one respect, however, in which Gruber's rule is more liberal
than the one given here, since it allows blank lines to occur inside
an HTML block.  There are two reasons for disallowing them here.
First, it removes the need to parse balanced tags, which is
expensive and can require backtracking from the end of the document
if no matching end tag is found. Second, it provides a very simple
and flexible way of including Markdown content inside HTML tags:
simply separate the Markdown from the HTML using blank lines:

Compare:

```````````````````````````````` example
<div>

*Emphasized* text.

</div>
.
<div>
<p><em>Emphasized</em> text.</p>
</div>
````````````````````````````````


```````````````````````````````` example
<div>
*Emphasized* text.
</div>
.
<div>
*Emphasized* text.
</div>
````````````````````````````````


Some Markdown implementations have adopted a convention of
interpreting content inside tags as text if the open tag has
the attribute `markdown=1`.  The rule given above seems a simpler and
more elegant way of achieving the same expressive power, which is also
much simpler to parse.

The main potential drawback is that one can no longer paste HTML
blocks into Markdown documents with 100% reliability.  However,
*in most cases* this will work fine, because the blank lines in
HTML are usually followed by HTML block tags.  For example:

```````````````````````````````` example
<table>

<tr>

<td>
Hi
</td>

</tr>

</table>
.
<table>
<tr>
<td>
Hi
</td>
</tr>
</table>
````````````````````````````````


There are problems, however, if the inner tags are indented
*and* separated by spaces, as then they will be interpreted as
an indented code block:

```````````````````````````````` example
<table>

  <tr>

    <td>
      Hi
    </td>

  </tr>

</table>
.
<table>
  <tr>
<pre><code>&lt;td&gt;
  Hi
&lt;/td&gt;
</code></pre>
  </tr>
</table>
````````````````````````````````


Fortunately, blank lines are usually not necessary and can be
deleted.  The exception is inside `<pre>` tags, but as described
[above][HTML blocks], raw HTML blocks starting with `<pre>`
*can* contain blank lines.

## Link reference definitions

A [link reference definition](@)
consists of a [link label], indented up to three spaces, followed
by a colon (`:`), optional [whitespace] (including up to one
[line ending]), a [link destination],
optional [whitespace] (including up to one
[line ending]), and an optional [link
title], which if it is present must be separated
from the [link destination] by [whitespace].
No further [non-whitespace characters] may occur on the line.

A [link reference definition]
does not correspond to a structural element of a document.  Instead, it
defines a label which can be used in [reference links]
and reference-style [images] elsewhere in the document.  [Link
reference definitions] can come either before or after the links that use
them.

```````````````````````````````` example
[foo]: /url "title"

[foo]
.
<p><a href="/url" title="title">foo</a></p>
````````````````````````````````


```````````````````````````````` example
   [foo]: 
      /url  
           'the title'  

[foo]
.
<p><a href="/url" title="the title">foo</a></p>
````````````````````````````````


```````````````````````````````` example
[Foo*bar\]]:my_(url) 'title (with parens)'

[Foo*bar\]]
.
<p><a href="my_(url)" title="title (with parens)">Foo*bar]</a></p>
````````````````````````````````


```````````````````````````````` example
[Foo bar]:
<my url>
'title'

[Foo bar]
.
<p><a href="my%20url" title="title">Foo bar</a></p>
````````````````````````````````


The title may extend over multiple lines:

```````````````````````````````` example
[foo]: /url '
title
line1
line2
'

[foo]
.
<p><a href="/url" title="
title
line1
line2
">foo</a></p>
````````````````````````````````


However, it may not contain a [blank line]:

```````````````````````````````` example
[foo]: /url 'title

with blank line'

[foo]
.
<p>[foo]: /url 'title</p>
<p>with blank line'</p>
<p>[foo]</p>
````````````````````````````````


The title may be omitted:

```````````````````````````````` example
[foo]:
/url

[foo]
.
<p><a href="/url">foo</a></p>
````````````````````````````````


The link destination may not be omitted:

```````````````````````````````` example
[foo]:

[foo]
.
<p>[foo]:</p>
<p>[foo]</p>
````````````````````````````````

 However, an empty link destination may be specified using
 angle brackets:

```````````````````````````````` example
[foo]: <>

[foo]
.
<p><a href="">foo</a></p>
````````````````````````````````

The title must be separated from the link destination by
whitespace:

```````````````````````````````` example
[foo]: <bar>(baz)

[foo]
.
<p>[foo]: <bar>(baz)</p>
<p>[foo]</p>
````````````````````````````````


Both title and destination can contain backslash escapes
and literal backslashes:

```````````````````````````````` example
[foo]: /url\bar\*baz "foo\"bar\baz"

[foo]
.
<p><a href="/url%5Cbar*baz" title="foo&quot;bar\baz">foo</a></p>
````````````````````````````````


A link can come before its corresponding definition:

```````````````````````````````` example
[foo]

[foo]: url
.
<p><a href="url">foo</a></p>
````````````````````````````````


If there are several matching definitions, the first one takes
precedence:

```````````````````````````````` example
[foo]

[foo]: first
[foo]: second
.
<p><a href="first">foo</a></p>
````````````````````````````````


As noted in the section on [Links], matching of labels is
case-insensitive (see [matches]).

```````````````````````````````` example
[FOO]: /url

[Foo]
.
<p><a href="/url">Foo</a></p>
````````````````````````````````


```````````````````````````````` example
[ΑΓΩ]: /φου

[αγω]
.
<p><a href="/%CF%86%CE%BF%CF%85">αγω</a></p>
````````````````````````````````


Here is a link reference definition with no corresponding link.
It contributes nothing to the document.

```````````````````````````````` example
[foo]: /url
.
````````````````````````````````


Here is another one:

```````````````````````````````` example
[
foo
]: /url
bar
.
<p>bar</p>
````````````````````````````````


This is not a link reference definition, because there are
[non-whitespace characters] after the title:

```````````````````````````````` example
[foo]: /url "title" ok
.
<p>[foo]: /url &quot;title&quot; ok</p>
````````````````````````````````


This is a link reference definition, but it has no title:

```````````````````````````````` example
[foo]: /url
"title" ok
.
<p>&quot;title&quot; ok</p>
````````````````````````````````


This is not a link reference definition, because it is indented
four spaces:

```````````````````````````````` example
    [foo]: /url "title"

[foo]
.
<pre><code>[foo]: /url &quot;title&quot;
</code></pre>
<p>[foo]</p>
````````````````````````````````


This is not a link reference definition, because it occurs inside
a code block:

```````````````````````````````` example
```
[foo]: /url
```

[foo]
.
<pre><code>[foo]: /url
</code></pre>
<p>[foo]</p>
````````````````````````````````


A [link reference definition] cannot interrupt a paragraph.

```````````````````````````````` example
Foo
[bar]: /baz

[bar]
.
<p>Foo
[bar]: /baz</p>
<p>[bar]</p>
````````````````````````````````


However, it can directly follow other block elements, such as headings
and thematic breaks, and it need not be followed by a blank line.

```````````````````````````````` example
# [Foo]
[foo]: /url
> bar
.
<h1><a href="/url">Foo</a></h1>
<blockquote>
<p>bar</p>
</blockquote>
````````````````````````````````

```````````````````````````````` example
[foo]: /url
bar
===
[foo]
.
<h1>bar</h1>
<p><a href="/url">foo</a></p>
````````````````````````````````

```````````````````````````````` example
[foo]: /url
===
[foo]
.
<p>===
<a href="/url">foo</a></p>
````````````````````````````````


Several [link reference definitions]
can occur one after another, without intervening blank lines.

```````````````````````````````` example
[foo]: /foo-url "foo"
[bar]: /bar-url
  "bar"
[baz]: /baz-url

[foo],
[bar],
[baz]
.
<p><a href="/foo-url" title="foo">foo</a>,
<a href="/bar-url" title="bar">bar</a>,
<a href="/baz-url">baz</a></p>
````````````````````````````````


[Link reference definitions] can occur
inside block containers, like lists and block quotations.  They
affect the entire document, not just the container in which they
are defined:

```````````````````````````````` example
[foo]

> [foo]: /url
.
<p><a href="/url">foo</a></p>
<blockquote>
</blockquote>
````````````````````````````````


Whether something is a [link reference definition] is
independent of whether the link reference it defines is
used in the document.  Thus, for example, the following
document contains just a link reference definition, and
no visible content:

```````````````````````````````` example
[foo]: /url
.
````````````````````````````````


## Paragraphs

A sequence of non-blank lines that cannot be interpreted as other
kinds of blocks forms a [paragraph](@).
The contents of the paragraph are the result of parsing the
paragraph's raw content as inlines.  The paragraph's raw content
is formed by concatenating the lines and removing initial and final
[whitespace].

A simple example with two paragraphs:

```````````````````````````````` example
aaa

bbb
.
<p>aaa</p>
<p>bbb</p>
````````````````````````````````


Paragraphs can contain multiple lines, but no blank lines:

```````````````````````````````` example
aaa
bbb

ccc
ddd
.
<p>aaa
bbb</p>
<p>ccc
ddd</p>
````````````````````````````````


Multiple blank lines between paragraph have no effect:

```````````````````````````````` example
aaa


bbb
.
<p>aaa</p>
<p>bbb</p>
````````````````````````````````


Leading spaces are skipped:

```````````````````````````````` example
  aaa
 bbb
.
<p>aaa
bbb</p>
````````````````````````````````


Lines after the first may be indented any amount, since indented
code blocks cannot interrupt paragraphs.

```````````````````````````````` example
aaa
             bbb
                                       ccc
.
<p>aaa
bbb
ccc</p>
````````````````````````````````


However, the first line may be indented at most three spaces,
or an indented code block will be triggered:

```````````````````````````````` example
   aaa
bbb
.
<p>aaa
bbb</p>
````````````````````````````````


```````````````````````````````` example
    aaa
bbb
.
<pre><code>aaa
</code></pre>
<p>bbb</p>
````````````````````````````````


Final spaces are stripped before inline parsing, so a paragraph
that ends with two or more spaces will not end with a [hard line
break]:

```````````````````````````````` example
aaa     
bbb     
.
<p>aaa<br />
bbb</p>
````````````````````````````````



<div class="extension-chunk">

<div class="extension">

## Paragraph continuations (Markua extension)

In books, you can insert things like lists in the middle of paragraphs.

Ideally, this would be one paragraph. However, it's not:

```````````````````````````````` example
foo
  * lorem
  * ipsum
bar
.
<p>foo</p>
<ul>
<li>lorem</li>
<li>ipsum
bar</li>
</ul>
````````````````````````````````

Here, you lose hard, because "bar" is considered to be part of the same list
item as ipsum. I think this is a mistake, but it is more important to preserve
Markdown compatibility than to fix this mistake.

Ideally, it would also be possible to insert a list inside a paragraph.
However, it's not:

```````````````````````````````` example
foo

  * lorem
  * ipsum

bar
.
<p>foo</p>
<ul>
<li>lorem</li>
<li>ipsum</li>
</ul>
<p>bar</p>
````````````````````````````````

The reason here is that HTML does not support inserting lists in paragraphs.
Lists are always siblings to paragraphs, not contained within them.

There is no way to fix this at the HTML tag level, since this is just how HTML
works. It would be possible to just construct a fake list with a bunch of CSS
and break tags inside a paragraph, but that would be far worse.

From an HTML perspective, you cannot insert lists inside paragraphs. But if
you are writing in Markua, you're not just writing HTML. You can also be
generating a book in PDF and other non-HTML formats, which do support lists
inside paragraphs just fine.

So, there needs to be some way to indicate that the beginning of a paragraph
after something like a list is actually a continuation of the previous
paragraph.

Now, this could have been done by just not adding blank lines, only single
newlines, but that would involve fighting against existing Markdown behaviour.
Worse, it would introduce an incompatibility just to fix something that many
people don't consider broken.

For authors who want a list to appear to be inside a paragraph, Markua does have
two solutions. First, you can just add a `continued-para` class to the
subsequent paragraph, via an attribute list:

```````````````````````````````` example
foo

  * lorem
  * ipsum

{class: continued-para}
bar
.
<p>foo</p>
<ul>
<li>lorem</li>
<li>ipsum</li>
</ul>
<p class="continued-para">bar</p>
````````````````````````````````

It would then be up to the Markua Processor to use the appropriate CSS to make
the paragraph with the `continued-para` class look like a continuation of the
previous paragraph, such as by removing indentation or decreasing leading space.

However, if you are an author who cares about this feature, typing an attribute
list whenever you want to continue a paragraph is really obnoxious. So, there
needs to be some syntactic sugar.

Here it is:

```````````````````````````````` example
foo

  * lorem
  * ipsum

^
bar
.
<p>foo</p>
<ul>
<li>lorem</li>
<li>ipsum</li>
</ul>
<p class="continued-para">bar</p>
````````````````````````````````

A caret (`^`) on a line by itself above a paragraph functions as a
`{class: continued-para}` attribute list for the following paragraph.

Note that this works for more than just lists. In fact, it has nothing to do
with lists, or even with images or other resources. It's all about the
indentation behaviour of a paragraph, typically following some other block. So,
you can use this whenever you want:

```````````````````````````````` example
foo

> a block quote

^
bar
.
<p>foo</p>
<blockquote>
<p>a block quote</p>
</blockquote>
<p class="continued-para">bar</p>
````````````````````````````````

</div>

</div>


## Blank lines

[Blank lines] between block-level elements are ignored,
except for the role they play in determining whether a [list]
is [tight] or [loose].

Blank lines at the beginning and end of the document are also ignored.

```````````````````````````````` example
  

aaa
  

# aaa

  
.
<p>aaa</p>
<h1>aaa</h1>
````````````````````````````````


<div class="extension-chunk">

<div class="extension">

## Tables (GFM extension, identical)

GFM enables the `table` extension, where an additional leaf block type is
available.

A [table](@) is an arrangement of data with rows and columns, consisting of a
single header row, a [delimiter row] separating the header from the data, and
zero or more data rows.

Each row consists of cells containing arbitrary text, in which [inlines] are
parsed, separated by pipes (`|`).  A leading and trailing pipe is also
recommended for clarity of reading, and if there's otherwise parsing ambiguity.
Spaces between pipes and cell content are trimmed.  Block-level elements cannot
be inserted in a table.

The [delimiter row](@) consists of cells whose only content are hyphens (`-`),
and optionally, a leading or trailing colon (`:`), or both, to indicate left,
right, or center alignment respectively.

```````````````````````````````` example
| foo | bar |
| --- | --- |
| baz | bim |
.
<table>
<thead>
<tr>
<th>foo</th>
<th>bar</th>
</tr>
</thead>
<tbody>
<tr>
<td>baz</td>
<td>bim</td>
</tr>
</tbody>
</table>
````````````````````````````````

Cells in one column don't need to match length, though it's easier to read if
they are. Likewise, use of leading and trailing pipes may be inconsistent:

```````````````````````````````` example
| abc | defghi |
:-: | -----------:
bar | baz
.
<table>
<thead>
<tr>
<th align="center">abc</th>
<th align="right">defghi</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">bar</td>
<td align="right">baz</td>
</tr>
</tbody>
</table>
````````````````````````````````

Include a pipe in a cell's content by escaping it, including inside other
inline spans:

```````````````````````````````` example
| f\|oo  |
| ------ |
| b `\|` az |
| b **\|** im |
.
<table>
<thead>
<tr>
<th>f|oo</th>
</tr>
</thead>
<tbody>
<tr>
<td>b <code>|</code> az</td>
</tr>
<tr>
<td>b <strong>|</strong> im</td>
</tr>
</tbody>
</table>
````````````````````````````````

The table is broken at the first empty line, or beginning of another
block-level structure:

```````````````````````````````` example
| abc | def |
| --- | --- |
| bar | baz |
> bar
.
<table>
<thead>
<tr>
<th>abc</th>
<th>def</th>
</tr>
</thead>
<tbody>
<tr>
<td>bar</td>
<td>baz</td>
</tr>
</tbody>
</table>
<blockquote>
<p>bar</p>
</blockquote>
````````````````````````````````

```````````````````````````````` example
| abc | def |
| --- | --- |
| bar | baz |
bar

bar
.
<table>
<thead>
<tr>
<th>abc</th>
<th>def</th>
</tr>
</thead>
<tbody>
<tr>
<td>bar</td>
<td>baz</td>
</tr>
<tr>
<td>bar</td>
<td></td>
</tr>
</tbody>
</table>
<p>bar</p>
````````````````````````````````

The header row must match the [delimiter row] in the number of cells.  If not,
a table will not be recognized:

```````````````````````````````` example
| abc | def |
| --- |
| bar |
.
<p>| abc | def |
| --- |
| bar |</p>
````````````````````````````````

The remainder of the table's rows may vary in the number of cells.  If there
are a number of cells fewer than the number of cells in the header row, empty
cells are inserted.  If there are greater, the excess is ignored:

```````````````````````````````` example
| abc | def |
| --- | --- |
| bar |
| bar | baz | boo |
.
<table>
<thead>
<tr>
<th>abc</th>
<th>def</th>
</tr>
</thead>
<tbody>
<tr>
<td>bar</td>
<td></td>
</tr>
<tr>
<td>bar</td>
<td>baz</td>
</tr>
</tbody>
</table>
````````````````````````````````

If there are no rows in the body, no `<tbody>` is generated in HTML output:

```````````````````````````````` example
| abc | def |
| --- | --- |
.
<table>
<thead>
<tr>
<th>abc</th>
<th>def</th>
</tr>
</thead>
</table>
````````````````````````````````

</div>

</div>


# Container blocks

A [container block](#container-blocks) is a block that has other
blocks as its contents.  There are two basic kinds of container blocks:
[block quotes] and [list items].
[Lists] are meta-containers for [list items].

We define the syntax for container blocks recursively.  The general
form of the definition is:

> If X is a sequence of blocks, then the result of
> transforming X in such-and-such a way is a container of type Y
> with these blocks as its content.

So, we explain what counts as a block quote or list item by explaining
how these can be *generated* from their contents. This should suffice
to define the syntax, although it does not give a recipe for *parsing*
these constructions.  (A recipe is provided below in the section entitled
[A parsing strategy](#appendix-a-parsing-strategy).)

## Block quotes

A [block quote marker](@)
consists of 0-3 spaces of initial indent, plus (a) the character `>` together
with a following space, or (b) a single character `>` not followed by a space.

The following rules define [block quotes]:

1.  **Basic case.**  If a string of lines *Ls* constitute a sequence
    of blocks *Bs*, then the result of prepending a [block quote
    marker] to the beginning of each line in *Ls*
    is a [block quote](#block-quotes) containing *Bs*.

2.  **Laziness.**  If a string of lines *Ls* constitute a [block
    quote](#block-quotes) with contents *Bs*, then the result of deleting
    the initial [block quote marker] from one or
    more lines in which the next [non-whitespace character] after the [block
    quote marker] is [paragraph continuation
    text] is a block quote with *Bs* as its content.
    [Paragraph continuation text](@) is text
    that will be parsed as part of the content of a paragraph, but does
    not occur at the beginning of the paragraph.

3.  **Consecutiveness.**  A document cannot contain two [block
    quotes] in a row unless there is a [blank line] between them.

Nothing else counts as a [block quote](#block-quotes).

Here is a simple example:

```````````````````````````````` example
> # Foo
> bar
> baz
.
<blockquote>
<h1>Foo</h1>
<p>bar
baz</p>
</blockquote>
````````````````````````````````


The spaces after the `>` characters can be omitted:

```````````````````````````````` example
># Foo
>bar
> baz
.
<blockquote>
<h1>Foo</h1>
<p>bar
baz</p>
</blockquote>
````````````````````````````````


The `>` characters can be indented 1-3 spaces:

```````````````````````````````` example
   > # Foo
   > bar
 > baz
.
<blockquote>
<h1>Foo</h1>
<p>bar
baz</p>
</blockquote>
````````````````````````````````


Four spaces gives us a code block:

```````````````````````````````` example
    > # Foo
    > bar
    > baz
.
<pre><code>&gt; # Foo
&gt; bar
&gt; baz
</code></pre>
````````````````````````````````


The Laziness clause allows us to omit the `>` before
[paragraph continuation text]:

```````````````````````````````` example
> # Foo
> bar
baz
.
<blockquote>
<h1>Foo</h1>
<p>bar
baz</p>
</blockquote>
````````````````````````````````


A block quote can contain some lazy and some non-lazy
continuation lines:

```````````````````````````````` example
> bar
baz
> foo
.
<blockquote>
<p>bar
baz
foo</p>
</blockquote>
````````````````````````````````


Laziness only applies to lines that would have been continuations of
paragraphs had they been prepended with [block quote markers].
For example, the `> ` cannot be omitted in the second line of

``` markdown
> foo
> ---
```

without changing the meaning:

```````````````````````````````` example
> foo
---
.
<blockquote>
<p>foo</p>
</blockquote>
<hr />
````````````````````````````````


Similarly, if we omit the `> ` in the second line of

``` markdown
> - foo
> - bar
```

then the block quote ends after the first line:

```````````````````````````````` example
> - foo
- bar
.
<blockquote>
<ul>
<li>foo</li>
</ul>
</blockquote>
<ul>
<li>bar</li>
</ul>
````````````````````````````````


For the same reason, we can't omit the `> ` in front of
subsequent lines of an indented or fenced code block:

```````````````````````````````` example
>     foo
    bar
.
<blockquote>
<pre><code>foo
</code></pre>
</blockquote>
<pre><code>bar
</code></pre>
````````````````````````````````


```````````````````````````````` example
> ```
foo
```
.
<blockquote>
<pre><code></code></pre>
</blockquote>
<p>foo</p>
<pre><code></code></pre>
````````````````````````````````


Note that in the following case, we have a [lazy
continuation line]:

```````````````````````````````` example
> foo
    - bar
.
<blockquote>
<p>foo
- bar</p>
</blockquote>
````````````````````````````````


To see why, note that in

```markdown
> foo
>     - bar
```

the `- bar` is indented too far to start a list, and can't
be an indented code block because indented code blocks cannot
interrupt paragraphs, so it is [paragraph continuation text].

A block quote can be empty:

```````````````````````````````` example
>
.
<blockquote>
</blockquote>
````````````````````````````````


```````````````````````````````` example
>
>  
> 
.
<blockquote>
</blockquote>
````````````````````````````````


A block quote can have initial or final blank lines:

```````````````````````````````` example
>
> foo
>  
.
<blockquote>
<p>foo</p>
</blockquote>
````````````````````````````````


A blank line always separates block quotes:

```````````````````````````````` example
> foo

> bar
.
<blockquote>
<p>foo</p>
</blockquote>
<blockquote>
<p>bar</p>
</blockquote>
````````````````````````````````


(Most current Markdown implementations, including John Gruber's
original `Markdown.pl`, will parse this example as a single block quote
with two paragraphs.  But it seems better to allow the author to decide
whether two block quotes or one are wanted.)

Consecutiveness means that if we put these block quotes together,
we get a single block quote:

```````````````````````````````` example
> foo
> bar
.
<blockquote>
<p>foo
bar</p>
</blockquote>
````````````````````````````````


To get a block quote with two paragraphs, use:

```````````````````````````````` example
> foo
>
> bar
.
<blockquote>
<p>foo</p>
<p>bar</p>
</blockquote>
````````````````````````````````


Block quotes can interrupt paragraphs:

```````````````````````````````` example
foo
> bar
.
<p>foo</p>
<blockquote>
<p>bar</p>
</blockquote>
````````````````````````````````


In general, blank lines are not needed before or after block
quotes:

```````````````````````````````` example
> aaa
***
> bbb
.
<blockquote>
<p>aaa</p>
</blockquote>
<hr />
<blockquote>
<p>bbb</p>
</blockquote>
````````````````````````````````


However, because of laziness, a blank line is needed between
a block quote and a following paragraph:

```````````````````````````````` example
> bar
baz
.
<blockquote>
<p>bar
baz</p>
</blockquote>
````````````````````````````````


```````````````````````````````` example
> bar

baz
.
<blockquote>
<p>bar</p>
</blockquote>
<p>baz</p>
````````````````````````````````


```````````````````````````````` example
> bar
>
baz
.
<blockquote>
<p>bar</p>
</blockquote>
<p>baz</p>
````````````````````````````````


It is a consequence of the Laziness rule that any number
of initial `>`s may be omitted on a continuation line of a
nested block quote:

```````````````````````````````` example
> > > foo
bar
.
<blockquote>
<blockquote>
<blockquote>
<p>foo
bar</p>
</blockquote>
</blockquote>
</blockquote>
````````````````````````````````


```````````````````````````````` example
>>> foo
> bar
>>baz
.
<blockquote>
<blockquote>
<blockquote>
<p>foo
bar
baz</p>
</blockquote>
</blockquote>
</blockquote>
````````````````````````````````


When including an indented code block in a block quote,
remember that the [block quote marker] includes
both the `>` and a following space.  So *five spaces* are needed after
the `>`:

```````````````````````````````` example
>     code

>    not code
.
<blockquote>
<pre><code>code
</code></pre>
</blockquote>
<blockquote>
<p>not code</p>
</blockquote>
````````````````````````````````



<div class="extension-chunk">

<div class="extension">

## Block quotes with curly braces (Markua extension)

Block quotes in Markua are created in one of two ways:

1. By prefacing lines with `> `, i.e. a greater than character followed by a
space. This was shown above.
2. By wrapping the blockquote in `{blockquote}` ... `{/blockquote}`

Option #1 is preferable for short quotes; option #2 is easier on authors for
really long quotes.

Like figures and tables, blockquotes can be inserted in the middle of a
paragraph or as a sibling of it.

These are the two ways to make block quotes in Markua:

```````````````````````````````` example
This is the first paragraph.

> This is a blockquote.
>
> You saw this above.

This is the second paragraph.

{blockquote}
This is also a blockquote.

It is good for longer quotes.
{/blockquote}

This is the third paragraph.
.
<p>This is the first paragraph.</p>
<blockquote>
<p>This is a blockquote.</p>
<p>You saw this above.</p>
</blockquote>
<p>This is the second paragraph.</p>
<blockquote>
<p>This is also a blockquote.</p>
<p>It is good for longer quotes.</p>
</blockquote>
<p>This is the third paragraph.</p>
````````````````````````````````

If a blockquote contains headings, these headings may be formatted by a Markua
Processor differently than normal headings. Finally, if a Markua Processor is
automatically generating a [Table of Contents](#toc) from chapter and section
headings, any headings inside blockquotes should be ignored.

</div>


<div class="extension">

## Asides (Markua extension)

Since Markua is for writing books and courses, including technical books and
courses, it needs not just a syntax for blockquotes--it also needs a syntax for
asides and for blurbs.

These syntaxes are very similar to the Markua syntax for blockquotes. Like
blockquotes, any headings inside asides or blurbs do not show up in a Table of
Contents (if one is present), and they can also be formatted differently by
Markua Processors.

We will consider asides first.

Asides are typically short or long notes in books which are tangential to the
main idea--sort of like footnotes, but in the body text itself. In technical
books, quite often they are formatted in a box. Asides can span multiple pages.

The syntaxes for asides are very similar to blockquotes:

1. By prefacing lines with `A> `, i.e. an `A`, then a greater than character
   (`>`), then a space.
2. By wrapping the aside in `{aside}` ... `{/aside}`

Option #1 is preferable for short asides; option #2 is easier on authors for
really long asides.

For consistency with blockquotes, asides can be siblings of paragraphs or nested
in them.

Here's a short aside:

```````````````````````````````` example
A> This is a short aside.
.
<aside>
<p>This is a short aside.</p>
</aside>
````````````````````````````````

Here's a longer aside, which also contains a heading:

```````````````````````````````` example
A> # A Longer Aside
A>
A> This is a longer aside.
A>
A> It can have multiple paragraphs.
.
<aside>
<h1>A Longer Aside</h1>
<p>This is a longer aside.</p>
<p>It can have multiple paragraphs.</p>
</aside>
````````````````````````````````

Here's the same longer aside using the `{aside}` syntax:

```````````````````````````````` example
{aside}
# A Longer Aside

This is a longer aside.

It can have multiple paragraphs.
{/aside}
.
<aside>
<h1>A Longer Aside</h1>
<p>This is a longer aside.</p>
<p>It can have multiple paragraphs.</p>
</aside>
````````````````````````````````

</div>


<div class="extension">

## Blurbs (Markua extension)

Blurbs are like asides, but shorter. A blurb is not intended to span multiple
pages of output.

The syntaxes for blurbs are very similar to asides:

1. By prefacing lines with `B> `, i.e. a `B`, then a greater than character
   (`>`), then a space.
2. By wrapping the blurb in `{blurb}` ... `{/blurb}`

Here's a short blurb:

```````````````````````````````` example
B> This is a short blurb.
.
<aside class="blurb">
<p>This is a short blurb.</p>
</aside>
````````````````````````````````

Here's a longer blurb, which also contains a heading:

```````````````````````````````` example
B> # A Longer Blurb
B>
B> This is a longer blurb.
B>
B> It can have multiple paragraphs.
.
<aside class="blurb">
<h1>A Longer Blurb</h1>
<p>This is a longer blurb.</p>
<p>It can have multiple paragraphs.</p>
</aside>
````````````````````````````````

Here's the same longer blurb using the `{blurb}` syntax:

```````````````````````````````` example
{blurb}
# A Longer Blurb

This is a longer blurb.

It can have multiple paragraphs.
{/blurb}
.
<aside class="blurb">
<h1>A Longer Blurb</h1>
<p>This is a longer blurb.</p>
<p>It can have multiple paragraphs.</p>
</aside>
````````````````````````````````

</div>


<div class="extension">

## Blurb classes (Markua extension)

Blurbs also have support for an attribute list, which can contain a `class`
attribute.

Markua has its origin in authoring computer programming books. In computer
programming books, there are a number of blurb types which are a
de facto standard:

* `center`
* `discussion`
* `error`
* `information`
* `tip`
* `warning`

These blurb types can be set on a blurb as its `class` attribute. A Markua
Processor can optionally style these blurbs appropriately based on the class,
for example by adding custom icons for each class of blurb.

Here's how this looks with the `B> ` syntax:

```````````````````````````````` example
{class: warning}
B> This is a warning!
.
<aside class="blurb warning">
<p>This is a warning!</p>
</aside>
````````````````````````````````

Here's how this looks with the `{blurb}` syntax:

```````````````````````````````` example
{blurb, class: warning}
This is a warning!
{/blurb}
.
<aside class="blurb warning">
<p>This is a warning!</p>
</aside>
````````````````````````````````

The attribute list must either directly precede the `B>` with no blank line
between it and the `B>`, or it must be combined with the `{blurb}` block
opening. It is **NOT** legal Markua syntax to have an attribute list preceding a
`{blurb}` block opening like this:

~~~
{class: warning}
{blurb}
That is not legal Markua...
~~~


</div>


<div class="extension">

## Syntactic sugar for blurb classes (Markua extension)

Having to constantly type `{class: warning}` in a computer programming book with
a number of warnings would get tedious, as would any of the other blurb classes
listed above.

So, Markua defines a standard shorthand syntax for these classes of blurbs. With
this syntax, you use a different letter than `B` in the `B>`, to create a blurb
with the appropriate `class`.

These are the syntactic sugar values you can use which have a heritage in
computer programming books:

`D>`
: `{class: discussion}`

`E>`
: `{class: error}`

`I>`
: `{class: information}`

`Q>`
: `{class: question}`

`T>`
: `{class: tip}`

`W>`
: `{class: warning}`

`X>`
: `{class: exercise}`

```````````````````````````````` example
D> This is a discussion blurb.

{class: discussion}
B> This is a discussion blurb.

{blurb, class: discussion}
This is a discussion blurb.
{/blurb}
.
<aside class="blurb discussion">
<p>This is a discussion blurb.</p>
</aside>

<aside class="blurb discussion">
<p>This is a discussion blurb.</p>
</aside>

<aside class="blurb discussion">
<p>This is a discussion blurb.</p>
</aside>
````````````````````````````````

```````````````````````````````` example
E> This is an error blurb.

{class: error}
B> This is an error blurb.

{blurb, class: error}
This is an error blurb.
{/blurb}
.
<aside class="blurb error">
<p>This is an error blurb.</p>
</aside>

<aside class="blurb error">
<p>This is an error blurb.</p>
</aside>

<aside class="blurb error">
<p>This is an error blurb.</p>
</aside>
````````````````````````````````

```````````````````````````````` example
X> This is an exercise blurb.

{class: exercise}
B> This is an exercise blurb.

{blurb, class: exercise}
This is an exercise blurb.
{/blurb}
.
<aside class="blurb exercise">
<p>This is an exercise blurb.</p>
</aside>

<aside class="blurb exercise">
<p>This is an exercise blurb.</p>
</aside>

<aside class="blurb exercise">
<p>This is an exercise blurb.</p>
</aside>
````````````````````````````````

```````````````````````````````` example
I> This is an information blurb.

{class: information}
B> This is an information blurb.

{blurb, class: information}
This is an information blurb.
{/blurb}
.
<aside class="blurb information">
<p>This is an information blurb.</p>
</aside>

<aside class="blurb information">
<p>This is an information blurb.</p>
</aside>

<aside class="blurb information">
<p>This is an information blurb.</p>
</aside>
````````````````````````````````

```````````````````````````````` example
Q> This is a question blurb.

{class: question}
B> This is a question blurb.

{blurb, class: question}
This is a question blurb.
{/blurb}
.
<aside class="blurb question">
<p>This is a question blurb.</p>
</aside>

<aside class="blurb question">
<p>This is a question blurb.</p>
</aside>

<aside class="blurb question">
<p>This is a question blurb.</p>
</aside>
````````````````````````````````

```````````````````````````````` example
T> This is a tip blurb.

{class: tip}
B> This is a tip blurb.

{blurb, class: tip}
This is a tip blurb.
{/blurb}
.
<aside class="blurb tip">
<p>This is a tip blurb.</p>
</aside>

<aside class="blurb tip">
<p>This is a tip blurb.</p>
</aside>

<aside class="blurb tip">
<p>This is a tip blurb.</p>
</aside>
````````````````````````````````

```````````````````````````````` example
W> This is a warning blurb.

{class: warning}
B> This is a warning blurb.

{blurb, class: warning}
This is a warning blurb.
{/blurb}
.
<aside class="blurb warning">
<p>This is a warning blurb.</p>
</aside>

<aside class="blurb warning">
<p>This is a warning blurb.</p>
</aside>

<aside class="blurb warning">
<p>This is a warning blurb.</p>
</aside>
````````````````````````````````

Note that `Q>` and `X>` are a bit confusing:

* `Q>` defines a blurb which is formatted like a question, but `{quiz}`
(discussed later) defines a quiz, and quizzes have actual numbered questions in
them. It is unfortunate that the words `quiz` and `question` both start with the
letter `Q`. Also, please note that the `question` blurb is not the same thing as
a question in a quiz.
* `X>` defines a blurb which is formatted like an exercise, but `{exercise}`
(discussed later) defines a structured exercise similar to a quiz. It is
unfortunate that the term "exercise" is used for both. However, picking a worse
word (such as, say, example) just to avoid any ambiguity would be worse.

Also note that nothing in this section defines what a Markua Processor must *do*
with the given class of blurb, in terms of formatting. Leanpub, for example, uses
it to add an appropriate icon from
[Font Awesome](https://fortawesome.github.io/Font-Awesome/)
at the left of the blurb, but other Markua Processors are free to do something
different.

Finally, note that specifying a class in metadata overrides what the syntactic
sugar does, and is also an error:

```````````````````````````````` example
{class: tip}
W> This is a tip blurb, not a warning blurb.
.
<aside class="blurb tip">
<p>This is a tip blurb, not a warning blurb.</p>
</aside>
````````````````````````````````

</div>


<div class="extension">

## Using blurbs to center text (Markua extension)

You can also use a blurb to center text.

The following two ways to do this are equivalent:

```````````````````````````````` example
C> This is a centered blurb.

{class: center}
B> This is a centered blurb.
.
<aside class="blurb center">
<p>This is a centered blurb.</p>
</aside>
<aside class="blurb center">
<p>This is a centered blurb.</p>
</aside>
````````````````````````````````

This is the only way to center text in Markua.

Unlike other blurb types which have their origin in technical books, centering
text has a wide range of uses. So, it could have been thought of as something
different than a blurb. However, in terms of its behaviour and the way it's
inserted, centered text is a blurb--whether it's inserted via syntactic sugar or
via a class attribute on a normal blurb element.

</div>


<div class="extension">

## Blurb icons with extension attributes (Markua extension)

Markua Processors must ignore any attributes which they do not understand.

Because of this, Markua attribute lists can contain any number of extension
attributes. An extension attribute is an attribute which is not defined in the
Markua specification, but which is understood by some specific Markua Processor.

As an example of an extension attribute, Leanpub adds an `icon` attribute to
blurbs. Markua does not specify that a blurb must support an `icon` attribute,
or what it would mean if it did. However, Leanpub understands an `icon`
attribute to reference an icon from Font Awesome. The value of this attribute
is assumed to be the name of an icon in Font Awesome, without the `fa-` prefix.
So, in any Markua Processor, you can do this:

~~~
{icon: car}
B> You can't spell carbon without it!

{icon: leanpub}
B> Yes, we're in Font Awesome!

{icon: github}
B> So is GitHub, of course. Unicorns.
~~~

In Leanpub, this will produce a nice icon of a car, using the Font Awesome icon.
In a Markua implementation that does not understand the icon attribute, nothing
will be generated for that attribute--it will be functionally equivalent to the
attribute not being present.

</div>

</div>



## List items

A [list marker](@) is a
[bullet list marker] or an [ordered list marker].

A [bullet list marker](@)
is a `-`, `+`, or `*` character.

An [ordered list marker](@)
is a sequence of 1--9 arabic digits (`0-9`), followed by either a
`.` character or a `)` character.  (The reason for the length
limit is that with 10 digits we start seeing integer overflows
in some browsers.)

The following rules define [list items]:

1.  **Basic case.**  If a sequence of lines *Ls* constitute a sequence of
    blocks *Bs* starting with a [non-whitespace character], and *M* is a
    list marker of width *W* followed by 1 ≤ *N* ≤ 4 spaces, then the result
    of prepending *M* and the following spaces to the first line of
    *Ls*, and indenting subsequent lines of *Ls* by *W + N* spaces, is a
    list item with *Bs* as its contents.  The type of the list item
    (bullet or ordered) is determined by the type of its list marker.
    If the list item is ordered, then it is also assigned a start
    number, based on the ordered list marker.

    Exceptions:

    1. When the first list item in a [list] interrupts
       a paragraph---that is, when it starts on a line that would
       otherwise count as [paragraph continuation text]---then (a)
       the lines *Ls* must not begin with a blank line, and (b) if
       the list item is ordered, the start number must be 1.
    2. If any line is a [thematic break][thematic breaks] then
       that line is not a list item.

For example, let *Ls* be the lines

```````````````````````````````` example
A paragraph
with two lines.

    indented code

> A block quote.
.
<p>A paragraph
with two lines.</p>
<pre><code>indented code
</code></pre>
<blockquote>
<p>A block quote.</p>
</blockquote>
````````````````````````````````


And let *M* be the marker `1.`, and *N* = 2.  Then rule #1 says
that the following is an ordered list item with start number 1,
and the same contents as *Ls*:

```````````````````````````````` example
1.  A paragraph
    with two lines.

        indented code

    > A block quote.
.
<ol>
<li>
<p>A paragraph
with two lines.</p>
<pre><code>indented code
</code></pre>
<blockquote>
<p>A block quote.</p>
</blockquote>
</li>
</ol>
````````````````````````````````


The most important thing to notice is that the position of
the text after the list marker determines how much indentation
is needed in subsequent blocks in the list item.  If the list
marker takes up two spaces, and there are three spaces between
the list marker and the next [non-whitespace character], then blocks
must be indented five spaces in order to fall under the list
item.

Here are some examples showing how far content must be indented to be
put under the list item:

```````````````````````````````` example
- one

 two
.
<ul>
<li>one</li>
</ul>
<p>two</p>
````````````````````````````````


```````````````````````````````` example
- one

  two
.
<ul>
<li>
<p>one</p>
<p>two</p>
</li>
</ul>
````````````````````````````````


```````````````````````````````` example
 -    one

     two
.
<ul>
<li>one</li>
</ul>
<pre><code> two
</code></pre>
````````````````````````````````


```````````````````````````````` example
 -    one

      two
.
<ul>
<li>
<p>one</p>
<p>two</p>
</li>
</ul>
````````````````````````````````


It is tempting to think of this in terms of columns:  the continuation
blocks must be indented at least to the column of the first
[non-whitespace character] after the list marker. However, that is not quite right.
The spaces after the list marker determine how much relative indentation
is needed.  Which column this indentation reaches will depend on
how the list item is embedded in other constructions, as shown by
this example:

```````````````````````````````` example
   > > 1.  one
>>
>>     two
.
<blockquote>
<blockquote>
<ol>
<li>
<p>one</p>
<p>two</p>
</li>
</ol>
</blockquote>
</blockquote>
````````````````````````````````


Here `two` occurs in the same column as the list marker `1.`,
but is actually contained in the list item, because there is
sufficient indentation after the last containing blockquote marker.

The converse is also possible.  In the following example, the word `two`
occurs far to the right of the initial text of the list item, `one`, but
it is not considered part of the list item, because it is not indented
far enough past the blockquote marker:

```````````````````````````````` example
>>- one
>>
  >  > two
.
<blockquote>
<blockquote>
<ul>
<li>one</li>
</ul>
<p>two</p>
</blockquote>
</blockquote>
````````````````````````````````


Note that at least one space is needed between the list marker and
any following content, so these are not list items:

```````````````````````````````` example
-one

2.two
.
<p>-one</p>
<p>2.two</p>
````````````````````````````````


A list item may contain blocks that are separated by more than
one blank line.

```````````````````````````````` example
- foo


  bar
.
<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
````````````````````````````````


A list item may contain any kind of block:

```````````````````````````````` example
1.  foo

    ```
    bar
    ```

    baz

    > bam
.
<ol>
<li>
<p>foo</p>
<pre><code>bar
</code></pre>
<p>baz</p>
<blockquote>
<p>bam</p>
</blockquote>
</li>
</ol>
````````````````````````````````


A list item that contains an indented code block will preserve
empty lines within the code block verbatim.

```````````````````````````````` example
- Foo

      bar


      baz
.
<ul>
<li>
<p>Foo</p>
<pre><code>bar


baz
</code></pre>
</li>
</ul>
````````````````````````````````

Note that ordered list start numbers must be nine digits or less:

```````````````````````````````` example
123456789. ok
.
<ol start="123456789">
<li>ok</li>
</ol>
````````````````````````````````


```````````````````````````````` example
1234567890. not ok
.
<p>1234567890. not ok</p>
````````````````````````````````


A start number may begin with 0s:

```````````````````````````````` example
0. ok
.
<ol start="0">
<li>ok</li>
</ol>
````````````````````````````````


```````````````````````````````` example
003. ok
.
<ol start="3">
<li>ok</li>
</ol>
````````````````````````````````


A start number may not be negative:

```````````````````````````````` example
-1. not ok
.
<p>-1. not ok</p>
````````````````````````````````



2.  **Item starting with indented code.**  If a sequence of lines *Ls*
    constitute a sequence of blocks *Bs* starting with an indented code
    block, and *M* is a list marker of width *W* followed by
    one space, then the result of prepending *M* and the following
    space to the first line of *Ls*, and indenting subsequent lines of
    *Ls* by *W + 1* spaces, is a list item with *Bs* as its contents.
    If a line is empty, then it need not be indented.  The type of the
    list item (bullet or ordered) is determined by the type of its list
    marker.  If the list item is ordered, then it is also assigned a
    start number, based on the ordered list marker.

An indented code block will have to be indented four spaces beyond
the edge of the region where text will be included in the list item.
In the following case that is 6 spaces:

```````````````````````````````` example
- foo

      bar
.
<ul>
<li>
<p>foo</p>
<pre><code>bar
</code></pre>
</li>
</ul>
````````````````````````````````


And in this case it is 11 spaces:

```````````````````````````````` example
  10.  foo

           bar
.
<ol start="10">
<li>
<p>foo</p>
<pre><code>bar
</code></pre>
</li>
</ol>
````````````````````````````````


If the *first* block in the list item is an indented code block,
then by rule #2, the contents must be indented *one* space after the
list marker:

```````````````````````````````` example
    indented code

paragraph

    more code
.
<pre><code>indented code
</code></pre>
<p>paragraph</p>
<pre><code>more code
</code></pre>
````````````````````````````````


```````````````````````````````` example
1.     indented code

   paragraph

       more code
.
<ol>
<li>
<pre><code>indented code
</code></pre>
<p>paragraph</p>
<pre><code>more code
</code></pre>
</li>
</ol>
````````````````````````````````


Note that an additional space indent is interpreted as space
inside the code block:

```````````````````````````````` example
1.      indented code

   paragraph

       more code
.
<ol>
<li>
<pre><code> indented code
</code></pre>
<p>paragraph</p>
<pre><code>more code
</code></pre>
</li>
</ol>
````````````````````````````````


Note that rules #1 and #2 only apply to two cases:  (a) cases
in which the lines to be included in a list item begin with a
[non-whitespace character], and (b) cases in which
they begin with an indented code
block.  In a case like the following, where the first block begins with
a three-space indent, the rules do not allow us to form a list item by
indenting the whole thing and prepending a list marker:

```````````````````````````````` example
   foo

bar
.
<p>foo</p>
<p>bar</p>
````````````````````````````````


```````````````````````````````` example
-    foo

  bar
.
<ul>
<li>foo</li>
</ul>
<p>bar</p>
````````````````````````````````


This is not a significant restriction, because when a block begins
with 1-3 spaces indent, the indentation can always be removed without
a change in interpretation, allowing rule #1 to be applied.  So, in
the above case:

```````````````````````````````` example
-  foo

   bar
.
<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>
````````````````````````````````


3.  **Item starting with a blank line.**  If a sequence of lines *Ls*
    starting with a single [blank line] constitute a (possibly empty)
    sequence of blocks *Bs*, not separated from each other by more than
    one blank line, and *M* is a list marker of width *W*,
    then the result of prepending *M* to the first line of *Ls*, and
    indenting subsequent lines of *Ls* by *W + 1* spaces, is a list
    item with *Bs* as its contents.
    If a line is empty, then it need not be indented.  The type of the
    list item (bullet or ordered) is determined by the type of its list
    marker.  If the list item is ordered, then it is also assigned a
    start number, based on the ordered list marker.

Here are some list items that start with a blank line but are not empty:

```````````````````````````````` example
-
  foo
-
  ```
  bar
  ```
-
      baz
.
<ul>
<li>foo</li>
<li>
<pre><code>bar
</code></pre>
</li>
<li>
<pre><code>baz
</code></pre>
</li>
</ul>
````````````````````````````````

When the list item starts with a blank line, the number of spaces
following the list marker doesn't change the required indentation:

```````````````````````````````` example
-   
  foo
.
<ul>
<li>foo</li>
</ul>
````````````````````````````````


A list item can begin with at most one blank line.
In the following example, `foo` is not part of the list
item:

```````````````````````````````` example
-

  foo
.
<ul>
<li></li>
</ul>
<p>foo</p>
````````````````````````````````


Here is an empty bullet list item:

```````````````````````````````` example
- foo
-
- bar
.
<ul>
<li>foo</li>
<li></li>
<li>bar</li>
</ul>
````````````````````````````````


It does not matter whether there are spaces following the [list marker]:

```````````````````````````````` example
- foo
-   
- bar
.
<ul>
<li>foo</li>
<li></li>
<li>bar</li>
</ul>
````````````````````````````````


Here is an empty ordered list item:

```````````````````````````````` example
1. foo
2.
3. bar
.
<ol>
<li>foo</li>
<li></li>
<li>bar</li>
</ol>
````````````````````````````````


A list may start or end with an empty list item:

```````````````````````````````` example
*
.
<ul>
<li></li>
</ul>
````````````````````````````````

However, an empty list item cannot interrupt a paragraph:

```````````````````````````````` example
foo
*

foo
1.
.
<p>foo
*</p>
<p>foo
1.</p>
````````````````````````````````


4.  **Indentation.**  If a sequence of lines *Ls* constitutes a list item
    according to rule #1, #2, or #3, then the result of indenting each line
    of *Ls* by 1-3 spaces (the same for each line) also constitutes a
    list item with the same contents and attributes.  If a line is
    empty, then it need not be indented.

Indented one space:

```````````````````````````````` example
 1.  A paragraph
     with two lines.

         indented code

     > A block quote.
.
<ol>
<li>
<p>A paragraph
with two lines.</p>
<pre><code>indented code
</code></pre>
<blockquote>
<p>A block quote.</p>
</blockquote>
</li>
</ol>
````````````````````````````````


Indented two spaces:

```````````````````````````````` example
  1.  A paragraph
      with two lines.

          indented code

      > A block quote.
.
<ol>
<li>
<p>A paragraph
with two lines.</p>
<pre><code>indented code
</code></pre>
<blockquote>
<p>A block quote.</p>
</blockquote>
</li>
</ol>
````````````````````````````````


Indented three spaces:

```````````````````````````````` example
   1.  A paragraph
       with two lines.

           indented code

       > A block quote.
.
<ol>
<li>
<p>A paragraph
with two lines.</p>
<pre><code>indented code
</code></pre>
<blockquote>
<p>A block quote.</p>
</blockquote>
</li>
</ol>
````````````````````````````````


Four spaces indent gives a code block:

```````````````````````````````` example
    1.  A paragraph
        with two lines.

            indented code

        > A block quote.
.
<pre><code>1.  A paragraph
    with two lines.

        indented code

    &gt; A block quote.
</code></pre>
````````````````````````````````



5.  **Laziness.**  If a string of lines *Ls* constitute a [list
    item](#list-items) with contents *Bs*, then the result of deleting
    some or all of the indentation from one or more lines in which the
    next [non-whitespace character] after the indentation is
    [paragraph continuation text] is a
    list item with the same contents and attributes.  The unindented
    lines are called
    [lazy continuation line](@)s.

Here is an example with [lazy continuation lines]:

```````````````````````````````` example
  1.  A paragraph
with two lines.

          indented code

      > A block quote.
.
<ol>
<li>
<p>A paragraph
with two lines.</p>
<pre><code>indented code
</code></pre>
<blockquote>
<p>A block quote.</p>
</blockquote>
</li>
</ol>
````````````````````````````````


Indentation can be partially deleted:

```````````````````````````````` example
  1.  A paragraph
    with two lines.
.
<ol>
<li>A paragraph
with two lines.</li>
</ol>
````````````````````````````````


These examples show how laziness can work in nested structures:

```````````````````````````````` example
> 1. > Blockquote
continued here.
.
<blockquote>
<ol>
<li>
<blockquote>
<p>Blockquote
continued here.</p>
</blockquote>
</li>
</ol>
</blockquote>
````````````````````````````````


```````````````````````````````` example
> 1. > Blockquote
> continued here.
.
<blockquote>
<ol>
<li>
<blockquote>
<p>Blockquote
continued here.</p>
</blockquote>
</li>
</ol>
</blockquote>
````````````````````````````````



6.  **That's all.** Nothing that is not counted as a list item by rules
    #1--5 counts as a [list item](#list-items).

The rules for sublists follow from the general rules
[above][List items].  A sublist must be indented the same number
of spaces a paragraph would need to be in order to be included
in the list item.

So, in this case we need two spaces indent:

```````````````````````````````` example
- foo
  - bar
    - baz
      - boo
.
<ul>
<li>foo
<ul>
<li>bar
<ul>
<li>baz
<ul>
<li>boo</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
````````````````````````````````


One is not enough:

```````````````````````````````` example
- foo
 - bar
  - baz
   - boo
.
<ul>
<li>foo</li>
<li>bar</li>
<li>baz</li>
<li>boo</li>
</ul>
````````````````````````````````


Here we need four, because the list marker is wider:

```````````````````````````````` example
10) foo
    - bar
.
<ol start="10">
<li>foo
<ul>
<li>bar</li>
</ul>
</li>
</ol>
````````````````````````````````


Three is not enough:

```````````````````````````````` example
10) foo
   - bar
.
<ol start="10">
<li>foo</li>
</ol>
<ul>
<li>bar</li>
</ul>
````````````````````````````````


A list may be the first block in a list item:

```````````````````````````````` example
- - foo
.
<ul>
<li>
<ul>
<li>foo</li>
</ul>
</li>
</ul>
````````````````````````````````


```````````````````````````````` example
1. - 2. foo
.
<ol>
<li>
<ul>
<li>
<ol start="2">
<li>foo</li>
</ol>
</li>
</ul>
</li>
</ol>
````````````````````````````````


A list item can contain a heading:

```````````````````````````````` example
- # Foo
- Bar
  ---
  baz
.
<ul>
<li>
<h1>Foo</h1>
</li>
<li>
<h2>Bar</h2>
baz</li>
</ul>
````````````````````````````````


### Motivation

John Gruber's Markdown spec says the following about list items:

1. "List markers typically start at the left margin, but may be indented
   by up to three spaces. List markers must be followed by one or more
   spaces or a tab."

2. "To make lists look nice, you can wrap items with hanging indents....
   But if you don't want to, you don't have to."

3. "List items may consist of multiple paragraphs. Each subsequent
   paragraph in a list item must be indented by either 4 spaces or one
   tab."

4. "It looks nice if you indent every line of the subsequent paragraphs,
   but here again, Markdown will allow you to be lazy."

5. "To put a blockquote within a list item, the blockquote's `>`
   delimiters need to be indented."

6. "To put a code block within a list item, the code block needs to be
   indented twice — 8 spaces or two tabs."

These rules specify that a paragraph under a list item must be indented
four spaces (presumably, from the left margin, rather than the start of
the list marker, but this is not said), and that code under a list item
must be indented eight spaces instead of the usual four.  They also say
that a block quote must be indented, but not by how much; however, the
example given has four spaces indentation.  Although nothing is said
about other kinds of block-level content, it is certainly reasonable to
infer that *all* block elements under a list item, including other
lists, must be indented four spaces.  This principle has been called the
*four-space rule*.

The four-space rule is clear and principled, and if the reference
implementation `Markdown.pl` had followed it, it probably would have
become the standard.  However, `Markdown.pl` allowed paragraphs and
sublists to start with only two spaces indentation, at least on the
outer level.  Worse, its behavior was inconsistent: a sublist of an
outer-level list needed two spaces indentation, but a sublist of this
sublist needed three spaces.  It is not surprising, then, that different
implementations of Markdown have developed very different rules for
determining what comes under a list item.  (Pandoc and python-Markdown,
for example, stuck with Gruber's syntax description and the four-space
rule, while discount, redcarpet, marked, PHP Markdown, and others
followed `Markdown.pl`'s behavior more closely.)

Unfortunately, given the divergences between implementations, there
is no way to give a spec for list items that will be guaranteed not
to break any existing documents.  However, the spec given here should
correctly handle lists formatted with either the four-space rule or
the more forgiving `Markdown.pl` behavior, provided they are laid out
in a way that is natural for a human to read.

The strategy here is to let the width and indentation of the list marker
determine the indentation necessary for blocks to fall under the list
item, rather than having a fixed and arbitrary number.  The writer can
think of the body of the list item as a unit which gets indented to the
right enough to fit the list marker (and any indentation on the list
marker).  (The laziness rule, #5, then allows continuation lines to be
unindented if needed.)

This rule is superior, we claim, to any rule requiring a fixed level of
indentation from the margin.  The four-space rule is clear but
unnatural. It is quite unintuitive that

``` markdown
- foo

  bar

  - baz
```

should be parsed as two lists with an intervening paragraph,

``` html
<ul>
<li>foo</li>
</ul>
<p>bar</p>
<ul>
<li>baz</li>
</ul>
```

as the four-space rule demands, rather than a single list,

``` html
<ul>
<li>
<p>foo</p>
<p>bar</p>
<ul>
<li>baz</li>
</ul>
</li>
</ul>
```

The choice of four spaces is arbitrary.  It can be learned, but it is
not likely to be guessed, and it trips up beginners regularly.

Would it help to adopt a two-space rule?  The problem is that such
a rule, together with the rule allowing 1--3 spaces indentation of the
initial list marker, allows text that is indented *less than* the
original list marker to be included in the list item. For example,
`Markdown.pl` parses

``` markdown
   - one

  two
```

as a single list item, with `two` a continuation paragraph:

``` html
<ul>
<li>
<p>one</p>
<p>two</p>
</li>
</ul>
```

and similarly

``` markdown
>   - one
>
>  two
```

as

``` html
<blockquote>
<ul>
<li>
<p>one</p>
<p>two</p>
</li>
</ul>
</blockquote>
```

This is extremely unintuitive.

Rather than requiring a fixed indent from the margin, we could require
a fixed indent (say, two spaces, or even one space) from the list marker (which
may itself be indented).  This proposal would remove the last anomaly
discussed.  Unlike the spec presented above, it would count the following
as a list item with a subparagraph, even though the paragraph `bar`
is not indented as far as the first paragraph `foo`:

``` markdown
 10. foo

   bar  
```

Arguably this text does read like a list item with `bar` as a subparagraph,
which may count in favor of the proposal.  However, on this proposal indented
code would have to be indented six spaces after the list marker.  And this
would break a lot of existing Markdown, which has the pattern:

``` markdown
1.  foo

        indented code
```

where the code is indented eight spaces.  The spec above, by contrast, will
parse this text as expected, since the code block's indentation is measured
from the beginning of `foo`.

The one case that needs special treatment is a list item that *starts*
with indented code.  How much indentation is required in that case, since
we don't have a "first paragraph" to measure from?  Rule #2 simply stipulates
that in such cases, we require one space indentation from the list marker
(and then the normal four spaces for the indented code).  This will match the
four-space rule in cases where the list marker plus its initial indentation
takes four spaces (a common case), but diverge in other cases.

## Lists

A [list](@) is a sequence of one or more
list items [of the same type].  The list items
may be separated by any number of blank lines.

Two list items are [of the same type](@)
if they begin with a [list marker] of the same type.
Two list markers are of the
same type if (a) they are bullet list markers using the same character
(`-`, `+`, or `*`) or (b) they are ordered list numbers with the same
delimiter (either `.` or `)`).

A list is an [ordered list](@)
if its constituent list items begin with
[ordered list markers], and a
[bullet list](@) if its constituent list
items begin with [bullet list markers].

The [start number](@)
of an [ordered list] is determined by the list number of
its initial list item.  The numbers of subsequent list items are
disregarded.

A list is [loose](@) if any of its constituent
list items are separated by blank lines, or if any of its constituent
list items directly contain two block-level elements with a blank line
between them.  Otherwise a list is [tight](@).
(The difference in HTML output is that paragraphs in a loose list are
wrapped in `<p>` tags, while paragraphs in a tight list are not.)

Changing the bullet or ordered list delimiter starts a new list:

```````````````````````````````` example
- foo
- bar
+ baz
.
<ul>
<li>foo</li>
<li>bar</li>
</ul>
<ul>
<li>baz</li>
</ul>
````````````````````````````````


```````````````````````````````` example
1. foo
2. bar
3) baz
.
<ol>
<li>foo</li>
<li>bar</li>
</ol>
<ol start="3">
<li>baz</li>
</ol>
````````````````````````````````


In CommonMark, a list can interrupt a paragraph. That is,
no blank line is needed to separate a paragraph from a following
list:

```````````````````````````````` example
Foo
- bar
- baz
.
<p>Foo</p>
<ul>
<li>bar</li>
<li>baz</li>
</ul>
````````````````````````````````

`Markdown.pl` does not allow this, through fear of triggering a list
via a numeral in a hard-wrapped line:

``` markdown
The number of windows in my house is
14.  The number of doors is 6.
```

Oddly, though, `Markdown.pl` *does* allow a blockquote to
interrupt a paragraph, even though the same considerations might
apply.

In CommonMark, we do allow lists to interrupt paragraphs, for
two reasons.  First, it is natural and not uncommon for people
to start lists without blank lines:

``` markdown
I need to buy
- new shoes
- a coat
- a plane ticket
```

Second, we are attracted to a

> [principle of uniformity](@):
> if a chunk of text has a certain
> meaning, it will continue to have the same meaning when put into a
> container block (such as a list item or blockquote).

(Indeed, the spec for [list items] and [block quotes] presupposes
this principle.) This principle implies that if

``` markdown
  * I need to buy
    - new shoes
    - a coat
    - a plane ticket
```

is a list item containing a paragraph followed by a nested sublist,
as all Markdown implementations agree it is (though the paragraph
may be rendered without `<p>` tags, since the list is "tight"),
then

``` markdown
I need to buy
- new shoes
- a coat
- a plane ticket
```

by itself should be a paragraph followed by a nested sublist.

Since it is well established Markdown practice to allow lists to
interrupt paragraphs inside list items, the [principle of
uniformity] requires us to allow this outside list items as
well.  ([reStructuredText](http://docutils.sourceforge.net/rst.html)
takes a different approach, requiring blank lines before lists
even inside other list items.)

In order to solve of unwanted lists in paragraphs with
hard-wrapped numerals, we allow only lists starting with `1` to
interrupt paragraphs.  Thus,

```````````````````````````````` example
The number of windows in my house is
14.  The number of doors is 6.
.
<p>The number of windows in my house is
14.  The number of doors is 6.</p>
````````````````````````````````

We may still get an unintended result in cases like

```````````````````````````````` example
The number of windows in my house is
1.  The number of doors is 6.
.
<p>The number of windows in my house is</p>
<ol>
<li>The number of doors is 6.</li>
</ol>
````````````````````````````````

but this rule should prevent most spurious list captures.

There can be any number of blank lines between items:

```````````````````````````````` example
- foo

- bar


- baz
.
<ul>
<li>
<p>foo</p>
</li>
<li>
<p>bar</p>
</li>
<li>
<p>baz</p>
</li>
</ul>
````````````````````````````````

```````````````````````````````` example
- foo
  - bar
    - baz


      bim
.
<ul>
<li>foo
<ul>
<li>bar
<ul>
<li>
<p>baz</p>
<p>bim</p>
</li>
</ul>
</li>
</ul>
</li>
</ul>
````````````````````````````````


To separate consecutive lists of the same type, or to separate a
list from an indented code block that would otherwise be parsed
as a subparagraph of the final list item, you can insert a blank HTML
comment:

```````````````````````````````` example
- foo
- bar

<!-- -->

- baz
- bim
.
<ul>
<li>foo</li>
<li>bar</li>
</ul>
<!-- -->
<ul>
<li>baz</li>
<li>bim</li>
</ul>
````````````````````````````````


```````````````````````````````` example
-   foo

    notcode

-   foo

<!-- -->

    code
.
<ul>
<li>
<p>foo</p>
<p>notcode</p>
</li>
<li>
<p>foo</p>
</li>
</ul>
<!-- -->
<pre><code>code
</code></pre>
````````````````````````````````


List items need not be indented to the same level.  The following
list items will be treated as items at the same list level,
since none is indented enough to belong to the previous list
item:

```````````````````````````````` example
- a
 - b
  - c
   - d
  - e
 - f
- g
.
<ul>
<li>a</li>
<li>b</li>
<li>c</li>
<li>d</li>
<li>e</li>
<li>f</li>
<li>g</li>
</ul>
````````````````````````````````


```````````````````````````````` example
1. a

  2. b

   3. c
.
<ol>
<li>
<p>a</p>
</li>
<li>
<p>b</p>
</li>
<li>
<p>c</p>
</li>
</ol>
````````````````````````````````

Note, however, that list items may not be indented more than
three spaces.  Here `- e` is treated as a paragraph continuation
line, because it is indented more than three spaces:

```````````````````````````````` example
- a
 - b
  - c
   - d
    - e
.
<ul>
<li>a</li>
<li>b</li>
<li>c</li>
<li>d
- e</li>
</ul>
````````````````````````````````

And here, `3. c` is treated as in indented code block,
because it is indented four spaces and preceded by a
blank line.

```````````````````````````````` example
1. a

  2. b

    3. c
.
<ol>
<li>
<p>a</p>
</li>
<li>
<p>b</p>
</li>
</ol>
<pre><code>3. c
</code></pre>
````````````````````````````````


This is a loose list, because there is a blank line between
two of the list items:

```````````````````````````````` example
- a
- b

- c
.
<ul>
<li>
<p>a</p>
</li>
<li>
<p>b</p>
</li>
<li>
<p>c</p>
</li>
</ul>
````````````````````````````````


So is this, with a empty second item:

```````````````````````````````` example
* a
*

* c
.
<ul>
<li>
<p>a</p>
</li>
<li></li>
<li>
<p>c</p>
</li>
</ul>
````````````````````````````````


These are loose lists, even though there is no space between the items,
because one of the items directly contains two block-level elements
with a blank line between them:

```````````````````````````````` example
- a
- b

  c
- d
.
<ul>
<li>
<p>a</p>
</li>
<li>
<p>b</p>
<p>c</p>
</li>
<li>
<p>d</p>
</li>
</ul>
````````````````````````````````


```````````````````````````````` example
- a
- b

  [ref]: /url
- d
.
<ul>
<li>
<p>a</p>
</li>
<li>
<p>b</p>
</li>
<li>
<p>d</p>
</li>
</ul>
````````````````````````````````


This is a tight list, because the blank lines are in a code block:

```````````````````````````````` example
- a
- ```
  b


  ```
- c
.
<ul>
<li>a</li>
<li>
<pre><code>b


</code></pre>
</li>
<li>c</li>
</ul>
````````````````````````````````


This is a tight list, because the blank line is between two
paragraphs of a sublist.  So the sublist is loose while
the outer list is tight:

```````````````````````````````` example
- a
  - b

    c
- d
.
<ul>
<li>a
<ul>
<li>
<p>b</p>
<p>c</p>
</li>
</ul>
</li>
<li>d</li>
</ul>
````````````````````````````````


This is a tight list, because the blank line is inside the
block quote:

```````````````````````````````` example
* a
  > b
  >
* c
.
<ul>
<li>a
<blockquote>
<p>b</p>
</blockquote>
</li>
<li>c</li>
</ul>
````````````````````````````````


This list is tight, because the consecutive block elements
are not separated by blank lines:

```````````````````````````````` example
- a
  > b
  ```
  c
  ```
- d
.
<ul>
<li>a
<blockquote>
<p>b</p>
</blockquote>
<pre><code>c
</code></pre>
</li>
<li>d</li>
</ul>
````````````````````````````````


A single-paragraph list is tight:

```````````````````````````````` example
- a
.
<ul>
<li>a</li>
</ul>
````````````````````````````````


```````````````````````````````` example
- a
  - b
.
<ul>
<li>a
<ul>
<li>b</li>
</ul>
</li>
</ul>
````````````````````````````````


This list is loose, because of the blank line between the
two block elements in the list item:

```````````````````````````````` example
1. ```
   foo
   ```

   bar
.
<ol>
<li>
<pre><code>foo
</code></pre>
<p>bar</p>
</li>
</ol>
````````````````````````````````


Here the outer list is loose, the inner list tight:

```````````````````````````````` example
* foo
  * bar

  baz
.
<ul>
<li>
<p>foo</p>
<ul>
<li>bar</li>
</ul>
<p>baz</p>
</li>
</ul>
````````````````````````````````


```````````````````````````````` example
- a
  - b
  - c

- d
  - e
  - f
.
<ul>
<li>
<p>a</p>
<ul>
<li>b</li>
<li>c</li>
</ul>
</li>
<li>
<p>d</p>
<ul>
<li>e</li>
<li>f</li>
</ul>
</li>
</ul>
````````````````````````````````


<div class="extension-chunk">

<div class="extension">

## List attributes (Markua extension)

Lists in Markdown (as described by John Gruber and specified by CommonMark) have
some pretty major issues. Here are two of the biggest ones:

* You can't make descending order lists.
* You can't use letters or Roman numerals for labels.

This list gets rendered as 3,4,5, since Markdown does not have a way of
specifying that a list is descending, and it does not infer it from the
order by default:

```````````````````````````````` example
before

3. foo
2. bar
1. baz

after
.
<p>before</p>
<ol start="3">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This looks like a list, but it is in fact a paragraph. There are no break tags
after the foo, bar and baz, just soft breaks:

```````````````````````````````` example
before

a. foo
b. bar
c. baz

after
.
<p>before</p>
<p>a. foo
b. bar
c. baz</p>
<p>after</p>
````````````````````````````````

Again, both of these behaviours are as defined in the CommonMark spec.

Now, Markua can't change this by default, without being incompatibile with
Markdown.

So what to do?

Markua adds the list attributes extension, to support being able to output all
the needed types of list from the limited list support in Markdown. The way this
is done is by giving lists an attribute list, much like how resources can have
an attribute list. (Lists are not resources, however.)

### Supported Attributes for Lists

The following are the supported attributes for lists.

`reversed`
: This determines whether the list is in ascending or descending order. Legal
values are `true` or `false`. The default value is `false`, for ascending.
Any value other than `true` is interpreted as `false`.

`type`
: The type of the list marker to use. Valid choices are `1`, `A`, `a`, `I` or
`i`. `A` and `a` mean uppercase or lowercase letters; `I` or `i` mean uppercase
or lowercase Roman numerals.

The use of these attributes are shown in the following examples.

### Lists with Attributes: Good Style

This list will be numbered a, b, c:

```````````````````````````````` example
before

{type: a}
1. foo
2. bar
3. baz

after
.
<p>before</p>
<ol type="a">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered A, B, C:

```````````````````````````````` example
before

{type: A}
1. foo
2. bar
3. baz

after
.
<p>before</p>
<ol type="A">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered c, d, e:

```````````````````````````````` example
before

{type: a}
3. foo
4. bar
5. baz

after
.
<p>before</p>
<ol type="a" start="3">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered i, ii, iii:

```````````````````````````````` example
before

{type: i}
1. foo
2. bar
3. baz

after
.
<p>before</p>
<ol type="i">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered I, II, III:

```````````````````````````````` example
before

{type: I}
1. foo
2. bar
3. baz

after
.
<p>before</p>
<ol type="i">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered iii, iv, v:

```````````````````````````````` example
before

{type: i}
3. foo
4. bar
5. baz

after
.
<p>before</p>
<ol type="i" start="3">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered 3, 2, 1:

```````````````````````````````` example
before

{reversed: true}
3. foo
2. bar
1. baz

after
.
<p>before</p>
<ol start="3" reversed="true">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered c, b, a:

```````````````````````````````` example
before

{type: a, reversed: true}
3. foo
2. bar
1. baz

after
.
<p>before</p>
<ol start="3" type="a" reversed="true">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered iii, ii, i:

```````````````````````````````` example
before

{type: i, reversed: true}
3. foo
2. bar
1. baz

after
.
<p>before</p>
<ol start="3" type="i" reversed="true">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

### Nested Lists with Attributes

Everything which has been said about attribute lists on lists applies to nested
lists as well. This example shows a nested list of the form 1, a, i, * (the
final nested list is an unordered list, not an ordered list):

```````````````````````````````` example
before

1. lorem
   {type: a}
   1. foo
      {type: i}
      1. apple
         * Gala
         * Spartan
         * McIntosh
      2. orange
      3. banana
   2. bar
   3. baz
2. ipsum
3. dolor

after
.
<p>before</p>
<ol>
<li>lorem
<ol type="a">
<li>foo
<ol type="i">
<li>apple
<ul>
<li>Gala</li>
<li>Spartan</li>
<li>McIntosh</li>
</ul>
</li>
<li>orange</li>
<li>banana</li>
</ol>
</li>
<li>bar</li>
<li>baz</li>
</ol>
</li>
<li>ipsum</li>
<li>dolor</li>
</ol>
<p>after</p>
````````````````````````````````

This nested list will be rendered somewhat like this:

~~~
before

1. lorem
   a. foo
        i. apple
           * Gala
           * Spartan
           * McIntosh
       ii. orange
      iii. banana
   b. bar
   c. baz
2. ipsum
3. dolor

after
~~~

### Lists with Attributes: Lazy Style

It is acceptable to just use the number of the first label, and rely on list
behaviour.

This list will be numbered 1, 2, 3:

```````````````````````````````` example
before

1. foo
1. bar
1. baz

after
.
<p>before</p>
<ol>
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered 3, 4, 5:

```````````````````````````````` example
before

3. foo
3. bar
3. baz

after
.
<p>before</p>
<ol start="3">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered c, d, e:

```````````````````````````````` example
before

{type: a}
3. foo
3. bar
3. baz

after
.
<p>before</p>
<ol start="3" type="a">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered iii, iv, v:

```````````````````````````````` example
before

{type: i}
3. foo
3. bar
3. baz

after
.
<p>before</p>
<ol start="3" type="i">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered 3, 2, 1:

```````````````````````````````` example
before

{reversed: true}
3. foo
3. bar
3. baz

after
.
<p>before</p>
<ol start="3" reversed="true">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

### Lists with Attributes: Redundant Style

This list will be numbered 1, 2, 3. This is just the default behaviour made
explicit:

```````````````````````````````` example
before

{type: 1, reversed: false}
1. foo
2. bar
3. baz

after
.
<p>before</p>
<ol>
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

### Lists with Attributes: Bad Style

This list will be numbered 3, 2, 1, regardless of the order of the numbers:

```````````````````````````````` example
before

{reversed: true}
1. foo
2. bar
3. baz

after
.
<p>before</p>
<ol reversed="true">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered c, d, e, regardless of the order of the numbers:

```````````````````````````````` example
before

{type: a}
3. foo
2. bar
1. baz

after
.
<p>before</p>
<ol start="3" type="a">
<li>three</li>
<li>bar</li>
<li>one</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered 1, 0, -1:

```````````````````````````````` example
before

{reversed: true}
1. foo
1. bar
1. baz

after
.
<p>before</p>
<ol reversed="true" start="1" type="i">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered i, 0, -1, since the Romans didn't have the concept of
zero or negative numbers (and thus neither do Roman numerals):

```````````````````````````````` example
before

{type: i, reversed: true}
1. foo
1. bar
1. baz

after
.
<p>before</p>
<ol reversed="true" start="1" type="i">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

This list will be numbered a, 0, -1, since there are no negative letters either:

```````````````````````````````` example
before

{type: a, reversed: true}
1. foo
1. bar
1. baz

after
.
<p>before</p>
<ol reversed="true" start="1" type="a">
<li>foo</li>
<li>bar</li>
<li>baz</li>
</ol>
<p>after</p>
````````````````````````````````

</div>


<div class="extension">

## Definition lists (Markua extension)

Definition lists are also supported in Markua. To define a definition list, use
the following syntax:

```````````````````````````````` example
term 1
: definition 1

term 2
: definition 2
.
<dl>
  <dt>term 1</dt>
  <dd>definition 1</dd>

  <dt>term 1</dt>
  <dd>definition 1</dd>
</dl>
````````````````````````````````

There can be one to three spaces after the colon, or one tab.

Note that in HTML the terms produce `<dt>` elements (for "description term")
and the definitions produce `<dd>` elements (for "description details"). Since
it is not certain that the definition list contains definitions, and since it
is desirable for the syntax to remain simple, the `<dd>` element does not
contain a `<dfn>` element.

There can only be one term per definition, but there can be multiple definitions
for a term:

```````````````````````````````` example
term 1
: definition 1a
: definition 1b

term 2
: definition 2
.
<dl>
  <dt>term 1</dt>
  <dd>definition 1a</dd>
  <dd>definition 1b</dd>

  <dt>term 2</dt>
  <dd>definition 2</dd>
</dl>
````````````````````````````````

A single term definition list is a definition list, regardless of how many
definitions for the term exist:

```````````````````````````````` example
term
: definition
.
<dl>
  <dt>term</dt>
  <dd>definition</dd>
</dl>
````````````````````````````````

Finally, each definition list item can contain newlines and multiple paragraphs.
What you do here is indent the subsequent lines by the same amount of space as
the initial line.

(If you do not indent the subsequent lines, then you're ending the definition
list and just starting a new paragraph.)

```````````````````````````````` example
before

one
: foo
: bar

  baz

two
: foo

after
.
<p>before</p>
<dl>
  <dt>one</dt>
  <dd>foo</dd>
  <dd>
    <p>bar</p>
    <p>baz</p>
  </dd>

  <dt>two</dt>
  <dd>foo</dd>
</dl>
<p>after</p>
````````````````````````````````

Note that single line breaks within the definitions (the `<dd>` not `<dt>`)
are handled the same way as single line breaks within paragraphs, and are
subject to the `soft-breaks` global setting which defaults to `source` for
compatibility with Markdown.

```````````````````````````````` example
before

one
: lorem
  ipsum

  dolor

  sit amet

two
: foo

after
.
<p>before</p>
<dl>
  <dt>one</dt>
  <dd>
    <p>lorem
    ipsum</p>
    <p>dolor</p>
    <p>sit amet</p>
  </dd>

  <dt>two</dt>
  <dd>foo</dd>
</dl>
<p>after</p>
````````````````````````````````

Finally, with definition lists, one thing you often want to do is link to a
specific definition, not just to the list itself. This is useful to do, since
in a document with many definitions, it's helpful if the reader scrolls to the
right spot or opens to the right page.

To do this, just define a span id on the element itself, and then link to it.

```````````````````````````````` example
foo{#foo}
: This is foo.

bar{#bar}
: This is bar.
.
<dl>
  <dt><span id="foo">foo</span></dt>
  <dd>This is foo.</dd>

  <dt><span id="bar">bar</span></dt>
  <dd>This is bar.</dd>
</dl>
````````````````````````````````

Note that if you define an id attribute above the first definition list item,
what you are doing is defining an id on the entire definition list. As such,
this does not work on any subsequent list item: in the following definition
list, the `{#definitions}` is the id of the definition list. It is not the id
of foo.

```````````````````````````````` example
{#definitions}
foo{#foo}
: This is foo.

bar{#bar}
: This is bar.
.
<dl id="definitions">
  <dt><span id="foo">foo</span></dt>
  <dd>This is foo.</dd>

  <dt><span id="bar">bar</span></dt>
  <dd>This is bar.</dd>
</dl>
````````````````````````````````

To be clear, the following is not legal in Markua:

```````````````````````````````` example
{#foo}
foo
: This is foo.

{#bar}
bar
: This is bar.
.
<dl id="foo">
  <dt>foo</dt>
  <dd>This is foo.</dd>

  <dt>bar</dt>
  <dd>This is bar.</dd>
</dl>
````````````````````````````````

Here, the id above foo is actually the id of the entire definition list, and the
id above bar is not legal. A Markua Processor should ignore this id, and add an
error to the list of errors.

</div>


<div class="extension">

# Quizzes and exercises (Markua extension)

Markua was initially designed for the writing of books, but it has been extended
to support creating courses. For example, Leanpub authors can click a button to
create a massive open online course (MOOC), complete with automated marking,
entirely from a Markua document.

**To convert a Markua document from a book into a course, all you need to do is
add quizzes and exercises.**

Over the past decade, there has been a steady growth of interest in courses
delivered over the internet at massive scale. These Massive Open Online Courses,
or MOOCs, consist of essentially four things:

1. Reading material
2. Video or audio lectures
3. Exercises, with answers provided to the student
4. Quizzes, with answers used to automatically mark the quiz

It turns out the four things in this list all work perfectly in a Markua
document. So, not only can Markua be used to easily create a textbook which
includes video, audio, images and quizzes, it is also an amazingly simple and
flexible way of creating a MOOC. A MOOC is essentially just a textbook which is
executable, plus discussion forums and credentials. For example,
[Leanpub](https://leanpub.com) authors can click one button to create a massive
open online course (MOOC), complete with automated marking for all the quizzes
in the course, entirely from one Markua document.

Quizzes and exercises are essentially the same. The only difference is that
quizzes are intended to be marked, and exercises are not. Because of their
similarities, they are discussed here together.

Quizzes or exercises in a textbook consist of two things:

1. Questions, typically in the chapter itself.
2. Answers, typically at the back of the book.

The questions in the chapter essentially are placed there like any other block
element, such as an aside or blurb. The answers are positioned at the back of
the book, along with other elements like the index and appendices. The specific
location that they are positioned can be controlled by the author using insert
directives, discussed earlier.

There is only one syntax to create a quiz or exercise. For a quiz, it's by
wrapping the quiz in `{quiz}` ... `{/quiz}`; for an exercise, it's by wrapping
the exercise in `{exercise}` ... `{/exercise}`.

Here is a brief example of a quiz:

~~~
{quiz, id: quiz1}
? How many letters are in the word Markua?

a) 5
B) 6
c) 7

? How many unique letters are in the word Markua?

! 5
{/quiz}
~~~

This quiz contains two questions: a multiple-choice question where the correct
answer is b, and a fill-in-the-blank question where the correct answer is 5.
Quizzes and exercises have the same question types, discussed later.

With a quiz, the `id` attribute is **required**. This is so the identity of a
quiz can be preserved across generations of a course.

Here is the same example, but as an exercise:

~~~
{exercise, id: exercise1}
? How many letters are in the word Markua?

a) 5
B) 6
c) 7

? How many unique letters are in the word Markua?

! 5
{/exercise}
~~~

Just like with quiz, with an exercise the `id` attribute is **required**. This
is so the identity of an exercise can be preserved across generations of a
course.



A quiz or exercise can contain any Markua content, not just questions and
answers. This is true regardless of whether the quiz or exercise is in a MOOC,
an ebook or on paper. Note that video and audio resources don't work so well on
paper, however.

If a quiz or exercise starts with any type of heading immediately after the
`{quiz}` or `{exercise}` line, this heading's content should be considered the
name of the quiz or exercise. This can be used in a list of quizzes or exercises
produced by the Markua Processor. Typically the heading will be a chapter
heading (`# `), but section headings (`## `) and lower headings also are
supported. (The reason for this is that quizzes are sometimes top-level things,
and other times are nested inside chapters, sections or sub-sections. Some
course authors would correctly feel that the quiz should have the appropriate
level of heading given their position in the document.

Example:

~~~
{quiz, id: quiz2}
# Markua Quiz

Watch this [video](https://www.youtube.com/watch?time_continue=1&v=VOCYL-FNbr0)
of Peter explaining Markua.

? What year was that video from?

What year? Really? Did it really take that long? What was going on???

a) 2012
b) 2013
C) 2014
d) 2015

{words: 500}
? Why do you think the first version of the Markua spec took so long?

Look at the Leanpub website and read the [pricing
essay](https://leanpub.com/pricing).

! Answers could include "bootstrapped startup", the spec evolving, etc.

That's it for this quiz, and this MOOC!

**Thanks for taking my course!**
{/quiz}
~~~

There are four types of questions supported by Markua.

1. Multiple Choice
2. Multiple Selection
3. Fill In The Blank
4. Written

These types are not specified by a `{type}` attribute. Instead, they are
inferred from properties of the answers or from other attributes of the
question.

The exact way to create these types of questions is discussed further below.

## Quiz and exercise output (Markua extension)

A Markua Processor has many degrees of freedom in terms of whether, and how,
to output quizzes and exercises. As such, no HTML mapping is shown here.

For example, when outputting an online course or MOOC, the Markua Processor
can basically do whatever it wants. It can choose to output an ebook of the
course material only, and put all quizzes and exercises only in the online
version. Or it can choose to put all the quizzes only in the online version,
and include the exercises in the ebook version as well. Or it can include the
quizzes and exercises in the ebook version, but only include the answers for
the exercises in the ebook version.

If, on the other hand, a Markua Processor is outputting a textbook, it may
choose to output the quizzes in an entirely separate ebook or print-ready PDF,
for use in physical classrooms.

If a Markua Processor does output a quiz or exercise, it needs to do so in a
medium-appropriate way. This includes outputting multiple-choice questions
without showing their answers, of course. The display of fill in the blank
and essay questions varies greatly based on whether the question is in an
online quiz or exercise, in an ebook or on paper.

Markua Processors are encouraged to be creative here.

However, there are some rules. If a given quiz or exercise is output by a
Markua Processor in an ebook or a physical book, the following things must
occur:

1. The quiz or exercise must be output as questions-only, in the place in the
   document where the quiz was defined.
2. The questions must be numbered sequentially, incrementing by 1 for each
   question.
3. The questions must be numbered starting from the number specified by the
   `start-at` attribute if specified, or 1 if no `start-at` attribute is
   specified.
4. The multiple choice options in any question must be converted into a set of
   choices which all look the same, so that the correct answer is not indicated.
   Converting all choice letters to lowercase is sufficient here.
5. The answers, if provided, must be positioned somewhere separate from the
   questions, typically at the back of the book. This position can be controlled
   by the author using insert directives, discussed earlier.

## Quiz and exercise validation (Markua extension)

### An empty quiz or exercise is not an error

A quiz or exercise which contains no questions is not an error. Instead, a if a
Markua Processor encounters a quiz or exercise with no questions it must filter
the quiz or exercise from the output, optionally providing a warning to the
author.

This lets authors create placeholders for quizzes or exercises in their courses
before the quizzes or exercises are ready, which is potentially very useful in
an in-progress course.

### A malformed quiz or exercise is an error

If a Markua Processor encounters a malformed quiz or exercise it must treat this
as an error and not generate the output from the Markua document. Quizzes and
exercises are not something that should ever be produced in a broken state.

However, it is also an error to parse quiz syntax outside a quiz or exercise
block. A Markua Processor must not parse lines starting with ? or ! as
representing questions or answers unless those are contained in a quiz or
exercise block.

## Quiz and exercise attributes (Markua extension)

These are the supported attributes on quizzes and/or exercises:

`attempts`
: The number of allowed attempts on a quiz. The default is defined by the value
of `default-quiz-attempts` on the containing course, or `1` if this is not
present. A value of `0` means the quiz cannot be taken (yet). A value of `-1`
means the quiz has an unlimited number of attempts. Since an exercise does not
count toward the mark on a course, an exercise always has an unlimited number
of attempts.

`auto-submit`
: `true` or `false`. The default is `true`. If true, an incomplete quiz is
submitted when the `time-limit` is expired. If false, it is not. Either way, an
incomplete quiz counts as an attempt.

`case-sensitive`
: `true` or `false`. The default is `true`. This sets the default behaviour of
fill in the blank questions. If `true`, the fill in the blank question answers
are case-sensitive. If false, they are not.

`id`
: All Markua elements support an `id` attribute. The reason the `id` attribute
is explicitly listed here is to emphasize that a Markua Processor may require
an `id` attribute on a quiz or exercise. For example, Leanpub requires the `id`
attribute on all quizzes, in order to determine the identity of quizzes when a
course is being published in-progress. (As a student, you'd be pretty unhappy
if you had to re-take an unchanged quiz simply because a professor published a
new course version.)

`mark-request-url`
: If omitted, all the quiz or exercise answers are defined in the Markua
document. If present, some or all of the quiz or exercise questions are
externally marked via an API defined at the URL specified in this attribute.
When the quiz or exercise is completed, the entire quiz or exercise should be
sent to the endpoint at the `mark-request-url`. Here's how this works in
Leanpub; other Markua Processors should presumably do something similar. When a
quiz or exercise with this attribute defined is completed, its state is set to
"pending". Leanpub then sends the quiz or exercise data as a JSON payload to the
marking endpoint. This JSON contains the following attributes:
`mark-response-url` (which defines where responses are sent), `quiz_id`,
`quiz_version`, `quiz_hash` (an SHA hash, for an automated quiz versioning
approach which does not rely on the course author updating a version attribute),
`quiz_results` (an array of question data structures containing the question,
the possible answers, the correct answer according to the Markua document, the
answer provided by the student, and (if the question is markable) the mark
determined automatically). The API endpoint should send results to the
`mark-response-url`. (Even though exercises are not worth points in a course,
they can be marked, for the benefit of the student. However, the expectation is
that this attribute will be used primarily by quizzes.) The `mark-response-url`
in the payload contains URL to respond to with the results of the marking the
quiz or exercise. The format of the expected payload should be defined by the
Markua Processor. For Leanpub this is a JSON payload containing the question ids
and the marks for each question. The mark is a decimal number of points between
0 and the maximum number of points for the question, inclusive. The decimal
supports two decimal places, so you can get 3.75 out of 4, for example. The
mark response must include marks for all questions that are unmarked. It may
also include marks for questions that Leanpub marked, and those will override
Leanpub’s marks. Finally, note that even though exercises are not worth points
in a course, they can be marked, for the benefit of the student. So, since
they can be marked, they can also be externally-marked via a
`mark-request-url`. However, the expectation is that this attribute will be
used primarily by quizzes.

`points`
: If present, this is the total number of points the quiz or exercise is worth.
(This really only matters for quizzes, but is supported for exercises as well,
in case a Markua Processor wishes to display the points on exercises to make
them feel more real.) If `points` is not present, the worth of the quiz is
determined by summing the points of the questions. (Questions are worth 1 point
each if they have no `points` attribute.) If the quiz has a `points` attribute
and its questions also have `points` attributes, the worth of each question in
a larger course context is determined as follows: its `points` are the
numerator, and the total `points` in the quiz or exercise is the denominator.

`random-choice-order`
: `true` or `false`. The default is `false`. This sets the default behaviour of
multiple choice questions. If `true`, the choices in the multiple choice
question are randomly arranged; if `false`, they are presented in the order
written.

`random-question-order`
: `true` or `false`. The default is `false`. This sets the default behaviour
of the quiz or exercise. If `true`, the questions are randomly arranged; if
`false`, they are presented in the order written.

`start-at`
: The `start-at` is the number of the first question. The default is 1. Any
integer is permitted. Subsequent questions will have a number which is 1 higher
than the previous question.

`show-answers`
: This can be `all`, `incorrect` or `none`. It affects how answers are shown
after a quiz or exercise is completed, say in a MOOC. For exercises, the
default value is determined by the value of the `default-exercise-show-answers`
global setting, with `all` being the default value of that attribute. For
quizzes, the default value is determined by the value of the
`default-quiz-show-answers` global setting, with `incorrect` being the default
value of that attribute. Global settings are discussed later.

`time-limit`
: The time limit to finish the quiz, once started. The format is `XdYhZm`. For
example, 3 days, 6 hours and 45 minutes is expressed as `3d6h45m`; 7 days is
expressed as `7d`. The default is `7d`.

`use-result`
: `best` or `latest`. Whether the best result on the quiz is used, or the latest
one. The default is the value of `default-quiz-use-result` on the course.

`version`
: The version of the quiz. This does not replace the function of the `id`; it's
more for use in analytics by the instructor. The default is `1`.

As discussed above, there is no `title` or `title` attribute for a quiz--you can
just add a heading inside the quiz or exercise itself, using the normal Markua
formatting for a chapter heading.

## Multiple choice questions (Markua extension)

A multiple choice question has 2 or more answer choices, and 1 correct answer
choice.

The correct answer choice is in capital letters before the parentheses;
incorrect answer choices have lowercase letters before the parentheses.

Example:

~~~
? How many letters are in the word Markua?

a) 5
B) 6
c) 7
~~~

Obviously, when generating the question in the actual quiz or exercise, a
Markua Processor must make all answer choices have the same type of letter.
This is usually a lowercase letter, although either all lowercase or all
uppercase letters would be fine.

Unless a `choose-answers` attribute is used, the multiple choice answers all
must start from a or A, and must use a right-parenthesis after the a or A. Any
line starting with a) ar A) in a quiz is considered a set of multiple choice
quiz answers, not an ordered list using a) or A) as a delimiter. If you want to
put an ordered list in a quiz body, use periods for the delimiter.

A multiple choice question may also have a dynamic number of answer choices,
including for the correct answer. This done with the special `choose-answers`
attribute, shown and explained below.

~~~
{choose-answers: 4}
? How many grams are in a pound?

C) 454
C) 453
m) 451
m) 1000
o) 100
o) 150
o) 200
o) 250
o) 300
o) 500
~~~

The `choose-answers` attribute specifies how many answer choices should be
shown. This includes exactly one of the correct answers (indicated with `C`),
all of the mandatory incorrect answers (indicated with `m`) and as many of the
optional incorrect answers (indicated with `o`) as are needed for the question
to have the total number of answers as indicated by the `choose-answers`
attribute.

So, in the above example, either `453` or `454` will be shown, along with the
mandatory incorrect answer choices `451` (a literary joke) and `1000` (a
kilogram, not a pound) and one of the optional incorrect answers (`100`,
`150`, `200`, `250`, `300` or `500`).

When a `choose-answers` attribute is used, the question will always have
`random-choice-order`.

The following are errors in a question where a `choose-answers` attribute is
used:
- 0 correct (`C`) answers
- not enough mandatory (`m`) incorrect or optional (`o`) incorrect answers for
the question to have the `choose-answers` number of answers
- if `choose-answers` is n, a number of mandatory (`m`) incorrect answers >= n
(since there needs to be one correct answer shown)
- if `choose-answers` is n and the number of mandatory (`m`) answers is n - 1,
then any optional (`o`) incorrect answers existing
- answers starting with something other than `C`, `m` or `o`

### Supported attributes on multiple choice questions

`choose-answers`
: This is described above. If `choose-answers` is used, `random-choice-order`
is forced to true.

`points`
: The number of points the question is worth. This number can be 0 or higher.
The default is 1.

`random-choice-order`
: `true` or `false`. The default is `false`, unless `choose-answers` is used.
This sets the behaviour of the specific multiple choice question. If `true`,
the choices in the multiple choice question are randomly arranged; if `false`,
they are presented in the order written. If this attribute is omitted, its
value is determined by the `random-choice-order` attribute on the quiz itself,
which defaults to `false` if absent.

## Multiple selection questions (Markua extension)

A multiple selection question has 2 or more answer choices, and 1 or more `true`
answer choices.

(Leanpub authors: This question type is not yet supported in Leanpub.)

The `true` answer choices are specified with `T`; `false` answer choices are
specified with `F`.

To get the question 100% correct, you must select **ALL** answers which are
`true` (not just one of them) and **NONE** of the answers which are `false`.
As discussed later, the `mark` attribute determines whether the marking is
all-or-nothing (with the `binary` value) or whether a partial credit can be
earned (with the `ratio`) value.

Regardless of the value of the `mark` attribute, to get any score for a
multiple selection question, at least one answer choice must be selected.
Leaving a multiple selection question blank always gets zero points, even if
the `mark` attribute is `ratio`. Otherwise, if a test had nothing but multiple
selection questions with `ratio`-marked questions, with half the answers `true`
and half the answers `false`, you could get 50% on the test by just handing it
in blank!

### Supported attributes on multiple selection questions

`mark`
: `binary` or `ratio`. The default is `binary`. This sets the marking behaviour
of the specific multiple selection question. If `binary`, the question is all
or nothing: you either get full points for the question, or a 0 on the question.
To get full points, you must select every `true` choice and none of the `false`
choices. If `ratio`, you get a fractional score defined as `(number of true
choices selected + number of false choices not selected) / (total number of
choices)`. This fraction is then multiplied by the `points` that the question
is worth to compute the `points` that you received on the question. Note that
regardless of whether the `mark` is `binary` or `ratio`, a question which is
left blank is always completely wrong, earning no credit for the
correctly-not-selected `false` choices.

`points`
: The number of points the question is worth. This number can be 0 or higher.
The default is 1. The `mark` attribute is used to determine how the points are
computed. Again, regardless of whether the `mark` is `binary` or `ratio`, a
question which is left blank always earns 0 points.

`random-choice-order`
: `true` or `false`. The default is `false`. This sets the behaviour of the
specific multiple selection question. If `true`, the choices in the multiple
choice question are randomly arranged; if `false`, they are presented in the
order written. If this attribute is omitted, its value is determined by the
`random-choice-order` attribute on the quiz itself, which defaults to `false`
if absent.

### Examples of multiple selection questions

~~~
? Which of these are animals?

F) apple
T) cow
F) lettuce

{mark: ratio, points: 2}
? Which of these are fruits?

T) apple
F) cow
F) lettuce
T) peach
T) pear
F) rice
~~~

Here the first question defaults to `binary` and 1 point; the second question
is `ratio` and 2 points.

To get the first question correct, you must select `cow`, and neither of
`apple` or `lettuce`.

To get this second question 100% correct, you must select all of `apple`,
`peach` and `pear`, and none of `cow`, `lettuce` or `rice`. For this question,
if the `mark` attribute had been `binary`, the only way to get any points for it
would be to select `apple`, `peach` and `pear`, and to leave `cow`, `lettuce`
and `rice` all unselected. However, the `mark` is not `binary`; it is `ratio`.
So, if you selected `apple`, `peach` and `rice`, then the score would be
computed as follows: ((2 correctly-selected true choices + 2
correctly-not-selected false choices) / 6 choices) * 2 points = (4/6) * 2
points = 1.5 points. Since at least one choice was selected, you get just as
much credit for correctly not selecting `cow` and `lettuce` as you do for
correctly selecting `apple` and `peach`. If an instructor thinks this is too
lenient, then `binary` is the choice for them!

## Fill in the blank questions (Markua extension)

A fill in the blank question consists of a question and a set of answers. Each
answer is specified by `!`, an optional points value, a space, and then a
semicolon-separated list of the acceptable values of that answer. Each answer
value can be a text string (quoted or not) or a regular expression (regex).
If a points value is not specified for an answer, the answer is worth full
points.

Support for regular expression answer values is optional. However, a Markua
Processor which supports regular expression marking must interpret any answer
which starts with a forward slash (`/`) and ends with a forward slash followed
by some word characters (e.g. `i`) as being a regular expression. Note that the
particular format of the regular expression used is implementation-specific.
For example, Leanpub uses Ruby regular expressions. Other Markua Processors
could, for example, use Perl or JavaScript regular expressions.

Finally, note that you can separate regular expressions with semicolons, just
like any other answer value. There's no reason not to support this, and it may
lead to simpler regular expressions. However, if you're good at regular
expressions, you can also combine them into one regular expression, of course.

Note that since a semicolon is used to separate answer values, to provide an
actual semicolon as part of an answer value you must either put the answer
value in quotes, use a backslash-escape `\;` or make the semicolon part of a
regular expression.

Examples:

~~~
? How many unique letters are in the word Markua?

! 5

? What's the global capital of investment banking?

! New York ; London

? What's the global capital of investment banking?

! "New York" ; "London"

? What's the global capital of investment banking?

! New York
! London

? What's the global capital of investment banking?

! "New York"
! "London"

{case-sensitive: false}
? What's pi?

! "The ratio of a circle's circumference to its diameter" ; 3.14 ... 3.1416 ;
an irrational number

{case-sensitive: false}
? What's pi?

! "The ratio of a circle's circumference to its diameter"
! 3.14 ... 3.1416
! an irrational number

? Where's the Eiffel Tower?

! /(Paris|France)/i

? Where's the Eiffel Tower?

! /Paris/i ; /France/i

{points: 2}
? Where's the Eiffel Tower?

! /Paris/i
! /France/i

{points: 2}
? Where's the Eiffel Tower?

!2 /Paris/
!1 /paris/i
!.5 /France/i

{points: 2}
? Where's the Eiffel Tower?

! /Paris/
!1 /paris/i
!.5 /France/i

{points: 2}
? Where's the global capital of investment banking?

!2 New York ; London
!1 USA ; UK
~~~

As shown by the answer (`"The ratio of a circle's circumference to its diameter"
; 3.14 ... 3.1416; an irrational number`), acceptable answer values in a fill
in the blank question can be of completely different types, and numeric answer
values can be expressed as ranges (min <= x <= max), expressed as `min ... max`.
Also, this answer shows that quotes are optional around text strings. The reason
to use quotes is for clarity, or to ensure that any semicolons used are treated
as semicolons instead of as answer choice delimiters. Semicolons inside quotes
are just semicolons and do not need to be backslash-escaped. You do, however,
need to backslash-escape a quote if you want it to be treated as a literal
quote, instead of the start or end of a string.

If there are multiple answers to a fill in the blank question and an answer key
is being output by the Markua Processor for use by human markers, the acceptable
values should be clearly distinguished from each other. The recommendation is to
use an unordered list of acceptable values, one per line, but there are no
requirements here.

If you're a programmer, you may wonder what number types and formats are
supported. Are they integers? Floating point numbers? Can you use scientific
notation? And how are the numbers formatted? Are they US or Canadian numbers
(`123,456.78`) or EU numbers (`123 456,78`)?  What if there's a number that
means something different in the US and EU--does `123,456` mean `123456` or
`123.456`?

These questions are made worse by the fact that Markua can be used to create
human-marked paper quizzes as well as automatically-marked MOOCs. So,
specifying rules which made the syntax unambiguous for MOOCs would mean that
the answers for human-marked paper quizzes could not be specified with a
tolerable amount of ambiguity. So, the format of the answer values in a fill
in the blank question is out of scope of the Markua Spec.

### Supported attributes on fill in the blank questions

`points`
: The number of points the question is worth. This number can be 0 or higher.
The default is the 1. The answers must either not specify points (in which case
they are worth the full value of points that the question is worth), or they
must specify points between 0 and the `points` value.

`case-sensitive`
: `true` or `false`. The default is `true`. This sets the behaviour of the
specific fill in the blank question. If `true`, the fill in the blank question
answer is case-sensitive. If false, it is not. In the case of multiple
acceptable answer values, this attribute applies to all of them. Note that this
only applies to text string answers, not to regular expressions. For a regular
expression to be case-insensitive, you must end it with an `i` after the
closing backtick.

## Written questions (Markua extension)

A written question corresponds to short answer, long answer or essay questions
in traditional tests. It looks the same as a fill in the blank question, except
the answer is optional.

A question is interpreted as a written question if either the `words`, `lines`
or `pages` attribute is specified, if there is no answer provided, or if an
answer is provided using the `{answer}` syntax discussed shortly.

Note that an answer may be provided in a written question. If this is done, the
answer is not split into answer choices and values like a fill in the blank
answer. Instead, the answer is essentially a "note to markers", whether those
markers are underpaid graduate students or unpaid AIs. Markua does not specify
any microformat for this note to markers: it is just Markua text, kind of like
a blockquote (but with each line starting with `!` not `>`).

A Markua Processor generating a MOOC may handle written questions at its own
discretion, including not including them or giving them a `points` value of 0.

Examples:

~~~
{quiz, id: "quiz3"}

{pages: 2, points: 10}
? Why is 2019 like *1984*?

! If the student mentions Newspeak, give them an extra mark.

{words: 100, points: 2}
? Why is doubleplusungood the worst?

{lines: 10}
? Can you have multiple line answers in a written question?

! You bet you can!
!
! You can separate them with blank lines,
! and without blank lines.
!
! This is like a blockquote, which uses `>` characters.
~~~

Since a written question can have long answers, this increases the likelihood
that typing these answers after a bunch of `! ` delimiters will be a pain. So,
written questions (and **only** written questions) also support answers in the
form of `{answer} ... {/answer}`, like this:

~~~
{quiz, points: 0, id: "quiz3"}

{lines: 10}
? Write a function in Ruby that takes an argument and returns three times that
argument.

{answer}
The most straightforward way to do this is like this, since the last value
evaluated in the function is returned:

```ruby
def triple(y)
  y*3
end
```

However, you can also explicitly say `return` if you like:

```ruby
def triple(y)
  return y*3
end
```
{/answer}
{/quiz}
~~~

### Supported attributes on written questions

Note that only one of `words`, `lines` or `pages` may be provided. Providing
more than one is an error. Providing none of them means that the question is a
fill in the blank question, not a written question.

`points`
: The number of points the question is worth. This number can be 0 or higher.
The default is 1. A Markua Processor generating a MOOC may override this. For
example, when generating a MOOC, Leanpub overrides all written questions to
have a points attribute of 0, regardless of what (if anything) is specified for
this attribute by the author.

`words`
: The maximum number of words the answer can be. Obviously this is more useful
for online quizzes than paper ones.

`lines`
: The maximum number of lines the answer can be. Obviously this is more useful
for paper quizzes than online ones. On paper, this is most useful for a short
or long answer question.

`pages`
: The maximum number of pages the answer can be. Obviously this is more useful
for paper quizzes than online ones. On paper, this is most useful for an essay
question.

## Hints on questions (Markua extension)

Any question can contain a hint, regardless of question type or whether an
answer is provided.

The hint starts on a line with a percent sign (`%`) followed by a single space.
It must follow the question, but it can come either before or after the answer
choices.

Hints can span multiple lines, if each line starts with a `%` sign. This is
similar to Markdown handles block quotes with `>`.

The hint can be used by a Markua processor to show to students at appropriate
times, such as when they get the answer wrong or leave it blank. The exact
specifics are implementation-dependent. Hint support is optional in a Markua
Processor. However, if it's not supported, it must be ignored.

~~~
? What's 1 + 2?

% In a multiple choice question, if you're not sure, `c` is usually a good guess.

a) 1
b) 2
C) 3
d) 4

? Explain the meaning of *The Myth of Sisyphus*.

% Not the actual myth, the essay by Camus.
%
% For bonus points, speculate about Camus' life, death, and what he would have
% thought about autonomous cars.

? Where's the Eiffel Tower?

! /(Paris|France)/i

% The answer must contain the city and/or country.
~~~

The hint can be a useful feature for a Markua Processor. There is a lot of
discretion here for Markua Processors to compete on features.

For example, here's how Leanpub handles hints:

1. We will show the hint as a popup next to the question in the web and mobile
   quiz views.
2. We will track if the student looked at the hint.
3. We will not subtract points for looking at hints for Leanpub-marked questions.
4. Whether the hint was used will be provided in the analytics, such as a CSV
   download that we make available to professors.
5. We will also output the hints for exercises in the "material book" for a
   course, in a section near the end of the book. This will be linked to via
   crosslinks from each exercise.
6. The answers page for a quiz or exercise will show the question, hint and
   answers for each question.

## Question alternates (Markua extension)

The fact that a Markua document can be used to create an online course or MOOC
means that certain aspects of the syntax for quizzes and exercises are more
robust than they would otherwise. One example of this is question alternates.

In an online course or MOOC, some professors might not want every question the
same, despite the fact that question order and answer order can be randomized.
So, Markua supports question alternates, using a simple (if slightly ugly)
syntax. Question alternates are only supported in quizzes, since they make no
sense to include in exercises.

To create question alternates, every question in the quiz (not just those with
alternates) must be numbered sequentially, starting from 1, using a `?#` syntax.
This is a question mark followed by the number of the question, e.g.
`?1, ?2, ?3`. The questions in a quiz are numbered using sequential positive
integers starting from 1: 1, 2, 3, etc.

The alternates are specified by providing the same number for multiple
questions, e.g. `?1, ?1, ?1, ?2, ?3, ?4, ?4, ?5`. When the actual quiz is given,
only one of the questions for the given question number is used.

Note that only the first question with a given number may have a `points`
attribute--since all other alternates must use the same points value, specifying
it would be pointless.

The following is an example of a quiz which uses question alternates. This
ensures that to ensure that students get randomly selected versions of
questions 1 and 4. Also, since `random-question-order: true` is used, the actual
position of the questions is randomized after the specific questions are
selected from the alternates.

~~~
{quiz, id: "midterm", random-question-order: true}
?1 What's 2 + 2?

! 4

?1 What's 2.2 + 2.2?

! 4.4

?2 what's 3 + 3?

! 6

?3 What's 4 + 4?

! 8

{points: 2}
?4 What's 5 + 5?

! 10

?4 What's 6 + 6?

! 12

?5 What's 7 + 7?

! 14
{/quiz}
~~~

Note that the syntax for question alternates is very strict. Every question
must have a number, and these numbers must be in ascending order (except for
the alternates, which have the same number as each other).

Question alternates can also be grouped by a `choose-questions` attribute
attached to the first question alternate. In this case, the Markua Processor
must choose the number of questions `m` specified from the given alternates
with that number `n`, or `n choose m`. Note that in this scenario, the numbering
after the alternates increases by `m`: for example, if a quiz starts with a
`choose: 3`, the next question is numbered 4, not 2. This ensures that the
person constructing the quiz knows what they are doing, and saves them from
having to keep track in a scenario where there are multiple questions with a
`choose-questions` attribute.

~~~
{quiz, id: "midterm", random-question-order: true}

{choose-questions: 3}
?1 What's 2 + 2?

! 4

?1 What's 2.2 + 2.2?

! 4.4

?1 what's 3 + 3?

! 6

?1 What's 4 + 4?

! 8

?1 What's 5 + 5?

! 10

{points: 2}
?4 What's 6 + 6?

! 12

?5 What's 7 + 7?

! 14
{/quiz}
~~~

A Markua Processor must treat any error in the numbering of question
alternates (and the questions which follow) as an error, and not generate the
quiz if there is any error. This is preferable to a Markua Processor of trying
to guess at what the author meant, and trying to do the right thing. Fixing a
syntax error takes a couple minutes of editing and a few minutes to publish the
book or course again. However, fixing the consequences of a quiz being
administered to hundreds--or thousands, or tens of thousands--of people with an
incorrect number of questions, or with questions incorrectly used as alternates
for each other, would be much more difficult.

</div>

</div>



# Inlines

Inlines are parsed sequentially from the beginning of the character
stream to the end (left to right, in left-to-right languages).
Thus, for example, in

```````````````````````````````` example
`hi`lo`
.
<p><code>hi</code>lo`</p>
````````````````````````````````

`hi` is parsed as code, leaving the backtick at the end as a literal
backtick.


## Backslash escapes

Any ASCII punctuation character may be backslash-escaped:

```````````````````````````````` example
\!\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~
.
<p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</p>
````````````````````````````````


Backslashes before other characters are treated as literal
backslashes:

```````````````````````````````` example
\→\A\a\ \3\φ\«
.
<p>\→\A\a\ \3\φ\«</p>
````````````````````````````````


Escaped characters are treated as regular characters and do
not have their usual Markdown meanings:

```````````````````````````````` example
\*not emphasized*
\<br/> not a tag
\[not a link](/foo)
\`not code`
1\. not a list
\* not a list
\# not a heading
\[foo]: /url "not a reference"
\&ouml; not a character entity
.
<p>*not emphasized*
&lt;br/&gt; not a tag
[not a link](/foo)
`not code`
1. not a list
* not a list
# not a heading
[foo]: /url &quot;not a reference&quot;
&amp;ouml; not a character entity</p>
````````````````````````````````


If a backslash is itself escaped, the following character is not:

```````````````````````````````` example
\\*emphasis*
.
<p>\<em>emphasis</em></p>
````````````````````````````````


A backslash at the end of the line is a [hard line break]:

```````````````````````````````` example
foo\
bar
.
<p>foo<br />
bar</p>
````````````````````````````````


Backslash escapes do not work in code blocks, code spans, autolinks, or
raw HTML:

```````````````````````````````` example
`` \[\` ``
.
<p><code>\[\`</code></p>
````````````````````````````````


```````````````````````````````` example
    \[\]
.
<pre><code>\[\]
</code></pre>
````````````````````````````````


```````````````````````````````` example
~~~
\[\]
~~~
.
<pre><code>\[\]
</code></pre>
````````````````````````````````


```````````````````````````````` example
<http://example.com?find=\*>
.
<p><a href="http://example.com?find=%5C*">http://example.com?find=\*</a></p>
````````````````````````````````


```````````````````````````````` example
<a href="/bar\/)">
.
<a href="/bar\/)">
````````````````````````````````


But they work in all other contexts, including URLs and link titles,
link references, and [info strings] in [fenced code blocks]:

```````````````````````````````` example
[foo](/bar\* "ti\*tle")
.
<p><a href="/bar*" title="ti*tle">foo</a></p>
````````````````````````````````


```````````````````````````````` example
[foo]

[foo]: /bar\* "ti\*tle"
.
<p><a href="/bar*" title="ti*tle">foo</a></p>
````````````````````````````````


```````````````````````````````` example
``` foo\+bar
foo
```
.
<pre><code class="language-foo+bar">foo
</code></pre>
````````````````````````````````



<div class="extension-chunk">

<div class="extension">

## Character substitutions (Markua extension)

Markua documents can be written in UTF-8, so to produce any Unicode character, it
is possible to just use the proper Unicode characters. However, in certain cases,
it's desirable for Markua to specify automatic replacement of certain
combinations of characters with a Unicode replacement. If a Markua Processor
encounters one of these combinations of characters outside of a code block, the
Markua Processor must replace the combination of characters with the appropriate
Unicode character in the output.

`--`
: To produce an em dash (—), what is thought of by non-typography people as a
"dash" or a "long dash", you can just type two hyphens (`--`) directly after a
non-space character. You can also use the proper Unicode character, U+2014, of
course. The following all produce em dashes: `foo--bar, foo-- bar, foo--`.

` --`
: To produce a space followed by an en dash (–), or the kind of dash that's wider
than a hyphen but narrower than an em dash, you can just type a space, followed
by two hyphens (` --`). You can also use the proper Unicode character, U+2013,
of course. The following both produce en dashes preceded by spaces:
`foo -- bar`, `foo --`. (With `foo -- bar`, there's a space before and after the
en dash; with `foo --`, there's no space after it (e.g. at the end of a
paragraph).

`...`
: To produce a horizontal ellipsis (…), you can just type `...`. You can also use
the proper Unicode character, U+2026, of course.

### Optional Automatic Curly Quotes Outside of Code Blocks and Spans

A Markua Processor may replace the `"` character with the appropriate "curly
quote" at its discretion. This lets `"typography"` become `“typography”`, and
`it's` become `it’s` as appropriate.

Note that this is an optional behaviour: a Markua Processor may support this
fully, only in some output formats, or not at all.

Also, note that it is **NEVER** acceptable for a Markua Processor to do this,
or *any* character substitution, to text inside a code block or code span. In
almost all instances this would completely break the code. (If you wonder how I
got curly quotes into the code spans for `“typography”` and `it’s` above, it's
because I pasted them into the manuscript that way. Just as a Markua Processor
doesn't make straight quotes curly in a code span, it doesn't make curly quotes
straight in a code span either.)

</div>


<div class="extension">

## Footnotes and endnotes (Markua extension)

Books often have footnotes and endnotes. So, Markua has them too.

### Footnotes

To add a footnote, you insert a footnote tag using square brackets, a caret and
the tag, like this:

~~~
This has a footnote[^thenote].
~~~

Then, you define the footnote later in the document, using the same square
brackets, caret and tag, followed by a colon, a space and the footnote
definition:

~~~
[^thenote]: This is the footnote content.
~~~

If you wish to write multiple paragraphs in the footnote, you must indent the
subsequent paragraphs by four spaces or one tab:

~~~
This has a footnote[^thenote].

Here is some unrelated text.

[^thenote]: This is the first paragraph of footnote content.

    This is the second paragraph of footnote content.

Here is some more unrelated text.
~~~

Whether the numbering of footnotes restarts every chapter is something that can
be specified by the `restart-footnote-numbering` setting.

Markua does not specify how footnotes are output in HTML. A Markua Processor
should output them *somewhere*, but the details are not specified. This is
deliberate, in order to maximize implementation flexibility for Markua
Processors.

</div>

<div class="extension">

### Endnotes

Sometimes endnotes are used instead of footnotes, but other times, these are in
addition to footnotes. So, it makes sense for Markua to define separate syntaxes
for both, rather than just defining one "footnote or endnote" syntax and letting
the author pick whether the notes are footnotes or endnotes via a global setting.

To add an endnote, you insert an endnote tag using square brackets, two carets
and the tag, like this:

~~~
This has an endnote[^^thenote].
~~~

Endnotes are like footnotes, but happier (`^^`).

Then, you define the endnote later in the document, using the same square
brackets, two carets and tag, followed by a colon, a space and the endnote
definition:

~~~
[^^thenote]: This is the endnote content.
~~~

Just as with footnotes, if you wish to write multiple paragraphs in an endnote,
you must indent the subsequent paragraphs by four spaces or one tab.

Whether the numbering of endnotes restarts every chapter is something that can
be specified by the `restart-endnote-numbering` setting.

Markua does not specify how endnotes are output in HTML. A Markua Processor
should output them *somewhere*, but the details are not specified. This is
deliberate, in order to maximize implementation flexibility for Markua
Processors.

### Single reference to footnotes and endnotes

You can only refer to a footnote or endnote once. You can't define a footnote or
endnote in one place and refer to it multiple times in the same Markua document.
If you wish to refer to a parenthetical piece of text from multiple places in a
Markua document, the best approach is to put it in a section (or sub-section,
sub-sub-section, etc.) or aside and refer to it from multiple places using a
[crosslink](#crosslinks).

### Footnote and endnote support required for paragraphs only

A Markua Processor must support footnote and endnote references inserted in
normal paragraph content. However, that's it.

However, sometimes authors want to get creative with their footnotes and
endnotes. Sometimes they want to add them in headings, or in footnotes or
endnotes themselves. This latter style has been used on rare occasions, most
notably by David Foster Wallace.

However, supporting inserting footnotes and endnotes in places other than normal
paragraph content puts a hugely increased burden on implementors of Markua
Processors. As such, there is no requirement for a Markua Processor to support
inserting a footnote or endnote anywhere other than in normal paragraph content.

Authors should **not** assume that a particular Markua Processor supports
inserting a footnote or endnote anywhere other than in normal paragraph content
unless its documentation specifically states that it does. For example, Leanpub
only supports inserting footnotes or endnotes in normal paragraph content.

</div>

</div>



## Entity and numeric character references

Valid HTML entity references and numeric character references
can be used in place of the corresponding Unicode character,
with the following exceptions:

- Entity and character references are not recognized in code
  blocks and code spans.

- Entity and character references cannot stand in place of
  special characters that define structural elements in
  CommonMark.  For example, although `&#42;` can be used
  in place of a literal `*` character, `&#42;` cannot replace
  `*` in emphasis delimiters, bullet list markers, or thematic
  breaks.

Conforming CommonMark parsers need not store information about
whether a particular character was represented in the source
using a Unicode character or an entity reference.

[Entity references](@) consist of `&` + any of the valid
HTML5 entity names + `;`. The
document <https://html.spec.whatwg.org/multipage/entities.json>
is used as an authoritative source for the valid entity
references and their corresponding code points.

```````````````````````````````` example
&nbsp; &amp; &copy; &AElig; &Dcaron;
&frac34; &HilbertSpace; &DifferentialD;
&ClockwiseContourIntegral; &ngE;
.
<p>  &amp; © Æ Ď
¾ ℋ ⅆ
∲ ≧̸</p>
````````````````````````````````


[Decimal numeric character
references](@)
consist of `&#` + a string of 1--7 arabic digits + `;`. A
numeric character reference is parsed as the corresponding
Unicode character. Invalid Unicode code points will be replaced by
the REPLACEMENT CHARACTER (`U+FFFD`).  For security reasons,
the code point `U+0000` will also be replaced by `U+FFFD`.

```````````````````````````````` example
&#35; &#1234; &#992; &#0;
.
<p># Ӓ Ϡ �</p>
````````````````````````````````


[Hexadecimal numeric character
references](@) consist of `&#` +
either `X` or `x` + a string of 1-6 hexadecimal digits + `;`.
They too are parsed as the corresponding Unicode character (this
time specified with a hexadecimal numeral instead of decimal).

```````````````````````````````` example
&#X22; &#XD06; &#xcab;
.
<p>&quot; ആ ಫ</p>
````````````````````````````````


Here are some nonentities:

```````````````````````````````` example
&nbsp &x; &#; &#x;
&#987654321;
&#abcdef0;
&ThisIsNotDefined; &hi?;
.
<p>&amp;nbsp &amp;x; &amp;#; &amp;#x;
&amp;#987654321;
&amp;#abcdef0;
&amp;ThisIsNotDefined; &amp;hi?;</p>
````````````````````````````````


Although HTML5 does accept some entity references
without a trailing semicolon (such as `&copy`), these are not
recognized here, because it makes the grammar too ambiguous:

```````````````````````````````` example
&copy
.
<p>&amp;copy</p>
````````````````````````````````


Strings that are not on the list of HTML5 named entities are not
recognized as entity references either:

```````````````````````````````` example
&MadeUpEntity;
.
<p>&amp;MadeUpEntity;</p>
````````````````````````````````


Entity and numeric character references are recognized in any
context besides code spans or code blocks, including
URLs, [link titles], and [fenced code block][] [info strings]:

```````````````````````````````` example
<a href="&ouml;&ouml;.html">
.
<a href="&ouml;&ouml;.html">
````````````````````````````````


```````````````````````````````` example
[foo](/f&ouml;&ouml; "f&ouml;&ouml;")
.
<p><a href="/f%C3%B6%C3%B6" title="föö">foo</a></p>
````````````````````````````````


```````````````````````````````` example
[foo]

[foo]: /f&ouml;&ouml; "f&ouml;&ouml;"
.
<p><a href="/f%C3%B6%C3%B6" title="föö">foo</a></p>
````````````````````````````````


```````````````````````````````` example
``` f&ouml;&ouml;
foo
```
.
<pre><code class="language-föö">foo
</code></pre>
````````````````````````````````


Entity and numeric character references are treated as literal
text in code spans and code blocks:

```````````````````````````````` example
`f&ouml;&ouml;`
.
<p><code>f&amp;ouml;&amp;ouml;</code></p>
````````````````````````````````


```````````````````````````````` example
    f&ouml;f&ouml;
.
<pre><code>f&amp;ouml;f&amp;ouml;
</code></pre>
````````````````````````````````


Entity and numeric character references cannot be used
in place of symbols indicating structure in CommonMark
documents.

```````````````````````````````` example
&#42;foo&#42;
*foo*
.
<p>*foo*
<em>foo</em></p>
````````````````````````````````

```````````````````````````````` example
&#42; foo

* foo
.
<p>* foo</p>
<ul>
<li>foo</li>
</ul>
````````````````````````````````

```````````````````````````````` example
foo&#10;&#10;bar
.
<p>foo

bar</p>
````````````````````````````````

```````````````````````````````` example
&#9;foo
.
<p>→foo</p>
````````````````````````````````


```````````````````````````````` example
[a](url &quot;tit&quot;)
.
<p>[a](url &quot;tit&quot;)</p>
````````````````````````````````



<div class="extension-chunk">

<div class="extension">

## Entity and numeric character references (Markua extension)

In PDF and other non-HTML-based output formats, a Markua Processor may choose
to do the following for HTML entity and numeric character references:

1. Convert it to the correct character in the font which it is using for body
   text.
2. Convert it to a character for missing character, typically which is a box
   which looks like tofu.
3. Convert it into an image and insert the image. For example, when encountering
   `&#x1F602;` (the HTML entity reference to the Unicode code point in
   hexadecimal of the "face with tears of joy" emoji), a Markua processor can
   just insert an image of a smiling face with tears of joy.

In HTML and in HTML-based output formats such as EPUB, the entity or numeric
character reference must be output instead.

In output formats such as MOBI which are typically derived from EPUB, a Markua
Processor may either output the entity or numeric character reference or it may
choose to use one of the approaches used for non-HTML output formats.

</div>


<div class="extension">

## Emoji (Markua extension)

In 2015, emoji fully arrived. The 2015 Oxford Dictionaries Word of the Year
[was](http://blog.oxforddictionaries.com/2015/11/word-of-the-year-2015-emoji/),
in fact, the Face with Tears of Joy emoji. You may think of it as a smiling face
with tears of joy, but you can also can think of it as `&#x1F602;`, which is the
HTML entity reference to its Unicode code point (in hexadecimal). 

However, Unicode characters aren't the only way to do emoji. Another popular
syntax for emoji is `:emoji_name:` -- that is a colon (`:`), followed by the
underscore-separated name of the emoji, followed by a colon.

Markua supports both the HTML character reference approach for emoji as well as
the `:emoji_name:` syntax.

Which emoji are supported is up to the Markua Processor.

One recommended list of emoji names is at
<http://www.webpagefx.com/tools/emoji-cheat-sheet/>.

The preferred thing to do when a Markua Processor recognizes an emoji is to
replace it with the Unicode code point HTML entity reference, assuming that
those are also handled correctly:

```````````````````````````````` example
This makes me &#x1F602;.

This makes me :joy:.
```
.
<p>This makes me &#x1F602;.</p>
<p>This makes me &#x1F602;.</p>
````````````````````````````````

However, it is also acceptable for a Markua Processor to just output the "tofu"
characters for the HTML entity references while still supporting the
`:emoji_name:` style emoji. Presumably with this approach, either a set of
images or an emoji font will be used for the supported emoji.

Finally, if Font Awesome icons are going to be supported by a Markua Processor,
using the `:emoji_name:` syntax, they must have their `:fa-` prefix which they
always come with. So, the [Leanpub logo in Font
Awesome](https://fontawesome.com/icons/leanpub?style=brands) would be output as
`:fa-leanpub:`.

</div>

</div>



## Code spans

A [backtick string](@)
is a string of one or more backtick characters (`` ` ``) that is neither
preceded nor followed by a backtick.

A [code span](@) begins with a backtick string and ends with
a backtick string of equal length.  The contents of the code span are
the characters between the two backtick strings, normalized in the
following ways:

- First, [line endings] are converted to [spaces].
- If the resulting string both begins *and* ends with a [space]
  character, but does not consist entirely of [space]
  characters, a single [space] character is removed from the
  front and back.  This allows you to include code that begins
  or ends with backtick characters, which must be separated by
  whitespace from the opening or closing backtick strings.

This is a simple code span:

```````````````````````````````` example
`foo`
.
<p><code>foo</code></p>
````````````````````````````````


Here two backticks are used, because the code contains a backtick.
This example also illustrates stripping of a single leading and
trailing space:

```````````````````````````````` example
`` foo ` bar ``
.
<p><code>foo ` bar</code></p>
````````````````````````````````


This example shows the motivation for stripping leading and trailing
spaces:

```````````````````````````````` example
` `` `
.
<p><code>``</code></p>
````````````````````````````````

Note that only *one* space is stripped:

```````````````````````````````` example
`  ``  `
.
<p><code> `` </code></p>
````````````````````````````````

The stripping only happens if the space is on both
sides of the string:

```````````````````````````````` example
` a`
.
<p><code> a</code></p>
````````````````````````````````

Only [spaces], and not [unicode whitespace] in general, are
stripped in this way:

```````````````````````````````` example
` b `
.
<p><code> b </code></p>
````````````````````````````````

No stripping occurs if the code span contains only spaces:

```````````````````````````````` example
` `
`  `
.
<p><code> </code>
<code>  </code></p>
````````````````````````````````


[Line endings] are treated like spaces:

```````````````````````````````` example
``
foo
bar  
baz
``
.
<p><code>foo bar   baz</code></p>
````````````````````````````````

```````````````````````````````` example
``
foo 
``
.
<p><code>foo </code></p>
````````````````````````````````


Interior spaces are not collapsed:

```````````````````````````````` example
`foo   bar 
baz`
.
<p><code>foo   bar  baz</code></p>
````````````````````````````````

Note that browsers will typically collapse consecutive spaces
when rendering `<code>` elements, so it is recommended that
the following CSS be used:

    code{white-space: pre-wrap;}


Note that backslash escapes do not work in code spans. All backslashes
are treated literally:

```````````````````````````````` example
`foo\`bar`
.
<p><code>foo\</code>bar`</p>
````````````````````````````````


Backslash escapes are never needed, because one can always choose a
string of *n* backtick characters as delimiters, where the code does
not contain any strings of exactly *n* backtick characters.

```````````````````````````````` example
``foo`bar``
.
<p><code>foo`bar</code></p>
````````````````````````````````

```````````````````````````````` example
` foo `` bar `
.
<p><code>foo `` bar</code></p>
````````````````````````````````


Code span backticks have higher precedence than any other inline
constructs except HTML tags and autolinks.  Thus, for example, this is
not parsed as emphasized text, since the second `*` is part of a code
span:

```````````````````````````````` example
*foo`*`
.
<p>*foo<code>*</code></p>
````````````````````````````````


And this is not parsed as a link:

```````````````````````````````` example
[not a `link](/foo`)
.
<p>[not a <code>link](/foo</code>)</p>
````````````````````````````````


Code spans, HTML tags, and autolinks have the same precedence.
Thus, this is code:

```````````````````````````````` example
`<a href="`">`
.
<p><code>&lt;a href=&quot;</code>&quot;&gt;`</p>
````````````````````````````````


But this is an HTML tag:

```````````````````````````````` example
<a href="`">`
.
<p><a href="`">`</p>
````````````````````````````````


And this is code:

```````````````````````````````` example
`<http://foo.bar.`baz>`
.
<p><code>&lt;http://foo.bar.</code>baz&gt;`</p>
````````````````````````````````


But this is an autolink:

```````````````````````````````` example
<http://foo.bar.`baz>`
.
<p><a href="http://foo.bar.%60baz">http://foo.bar.`baz</a>`</p>
````````````````````````````````


When a backtick string is not closed by a matching backtick string,
we just have literal backticks:

```````````````````````````````` example
```foo``
.
<p>```foo``</p>
````````````````````````````````


```````````````````````````````` example
`foo
.
<p>`foo</p>
````````````````````````````````

The following case also illustrates the need for opening and
closing backtick strings to be equal in length:

```````````````````````````````` example
`foo``bar``
.
<p>`foo<code>bar</code></p>
````````````````````````````````


## Emphasis and strong emphasis

John Gruber's original [Markdown syntax
description](http://daringfireball.net/projects/markdown/syntax#em) says:

> Markdown treats asterisks (`*`) and underscores (`_`) as indicators of
> emphasis. Text wrapped with one `*` or `_` will be wrapped with an HTML
> `<em>` tag; double `*`'s or `_`'s will be wrapped with an HTML `<strong>`
> tag.

This is enough for most users, but these rules leave much undecided,
especially when it comes to nested emphasis.  The original
`Markdown.pl` test suite makes it clear that triple `***` and
`___` delimiters can be used for strong emphasis, and most
implementations have also allowed the following patterns:

``` markdown
***strong emph***
***strong** in emph*
***emph* in strong**
**in strong *emph***
*in emph **strong***
```

The following patterns are less widely supported, but the intent
is clear and they are useful (especially in contexts like bibliography
entries):

``` markdown
*emph *with emph* in it*
**strong **with strong** in it**
```

Many implementations have also restricted intraword emphasis to
the `*` forms, to avoid unwanted emphasis in words containing
internal underscores.  (It is best practice to put these in code
spans, but users often do not.)

``` markdown
internal emphasis: foo*bar*baz
no emphasis: foo_bar_baz
```

The rules given below capture all of these patterns, while allowing
for efficient parsing strategies that do not backtrack.

First, some definitions.  A [delimiter run](@) is either
a sequence of one or more `*` characters that is not preceded or
followed by a non-backslash-escaped `*` character, or a sequence
of one or more `_` characters that is not preceded or followed by
a non-backslash-escaped `_` character.

A [left-flanking delimiter run](@) is
a [delimiter run] that is (1) not followed by [Unicode whitespace],
and either (2a) not followed by a [punctuation character], or
(2b) followed by a [punctuation character] and
preceded by [Unicode whitespace] or a [punctuation character].
For purposes of this definition, the beginning and the end of
the line count as Unicode whitespace.

A [right-flanking delimiter run](@) is
a [delimiter run] that is (1) not preceded by [Unicode whitespace],
and either (2a) not preceded by a [punctuation character], or
(2b) preceded by a [punctuation character] and
followed by [Unicode whitespace] or a [punctuation character].
For purposes of this definition, the beginning and the end of
the line count as Unicode whitespace.

Here are some examples of delimiter runs.

  - left-flanking but not right-flanking:

    ```
    ***abc
      _abc
    **"abc"
     _"abc"
    ```

  - right-flanking but not left-flanking:

    ```
     abc***
     abc_
    "abc"**
    "abc"_
    ```

  - Both left and right-flanking:

    ```
     abc***def
    "abc"_"def"
    ```

  - Neither left nor right-flanking:

    ```
    abc *** def
    a _ b
    ```

(The idea of distinguishing left-flanking and right-flanking
delimiter runs based on the character before and the character
after comes from Roopesh Chander's
[vfmd](http://www.vfmd.org/vfmd-spec/specification/#procedure-for-identifying-emphasis-tags).
vfmd uses the terminology "emphasis indicator string" instead of "delimiter
run," and its rules for distinguishing left- and right-flanking runs
are a bit more complex than the ones given here.)

The following rules define emphasis and strong emphasis:

1.  A single `*` character [can open emphasis](@)
    iff (if and only if) it is part of a [left-flanking delimiter run].

2.  A single `_` character [can open emphasis] iff
    it is part of a [left-flanking delimiter run]
    and either (a) not part of a [right-flanking delimiter run]
    or (b) part of a [right-flanking delimiter run]
    preceded by punctuation.

3.  A single `*` character [can close emphasis](@)
    iff it is part of a [right-flanking delimiter run].

4.  A single `_` character [can close emphasis] iff
    it is part of a [right-flanking delimiter run]
    and either (a) not part of a [left-flanking delimiter run]
    or (b) part of a [left-flanking delimiter run]
    followed by punctuation.

5.  A double `**` [can open strong emphasis](@)
    iff it is part of a [left-flanking delimiter run].

6.  A double `__` [can open strong emphasis] iff
    it is part of a [left-flanking delimiter run]
    and either (a) not part of a [right-flanking delimiter run]
    or (b) part of a [right-flanking delimiter run]
    preceded by punctuation.

7.  A double `**` [can close strong emphasis](@)
    iff it is part of a [right-flanking delimiter run].

8.  A double `__` [can close strong emphasis] iff
    it is part of a [right-flanking delimiter run]
    and either (a) not part of a [left-flanking delimiter run]
    or (b) part of a [left-flanking delimiter run]
    followed by punctuation.

9.  Emphasis begins with a delimiter that [can open emphasis] and ends
    with a delimiter that [can close emphasis], and that uses the same
    character (`_` or `*`) as the opening delimiter.  The
    opening and closing delimiters must belong to separate
    [delimiter runs].  If one of the delimiters can both
    open and close emphasis, then the sum of the lengths of the
    delimiter runs containing the opening and closing delimiters
    must not be a multiple of 3 unless both lengths are
    multiples of 3.

10. Strong emphasis begins with a delimiter that
    [can open strong emphasis] and ends with a delimiter that
    [can close strong emphasis], and that uses the same character
    (`_` or `*`) as the opening delimiter.  The
    opening and closing delimiters must belong to separate
    [delimiter runs].  If one of the delimiters can both open
    and close strong emphasis, then the sum of the lengths of
    the delimiter runs containing the opening and closing
    delimiters must not be a multiple of 3 unless both lengths
    are multiples of 3.

11. A literal `*` character cannot occur at the beginning or end of
    `*`-delimited emphasis or `**`-delimited strong emphasis, unless it
    is backslash-escaped.

12. A literal `_` character cannot occur at the beginning or end of
    `_`-delimited emphasis or `__`-delimited strong emphasis, unless it
    is backslash-escaped.

Where rules 1--12 above are compatible with multiple parsings,
the following principles resolve ambiguity:

13. The number of nestings should be minimized. Thus, for example,
    an interpretation `<strong>...</strong>` is always preferred to
    `<em><em>...</em></em>`.

14. An interpretation `<em><strong>...</strong></em>` is always
    preferred to `<strong><em>...</em></strong>`.

15. When two potential emphasis or strong emphasis spans overlap,
    so that the second begins before the first ends and ends after
    the first ends, the first takes precedence. Thus, for example,
    `*foo _bar* baz_` is parsed as `<em>foo _bar</em> baz_` rather
    than `*foo <em>bar* baz</em>`.

16. When there are two potential emphasis or strong emphasis spans
    with the same closing delimiter, the shorter one (the one that
    opens later) takes precedence. Thus, for example,
    `**foo **bar baz**` is parsed as `**foo <strong>bar baz</strong>`
    rather than `<strong>foo **bar baz</strong>`.

17. Inline code spans, links, images, and HTML tags group more tightly
    than emphasis.  So, when there is a choice between an interpretation
    that contains one of these elements and one that does not, the
    former always wins.  Thus, for example, `*[foo*](bar)` is
    parsed as `*<a href="bar">foo*</a>` rather than as
    `<em>[foo</em>](bar)`.

These rules can be illustrated through a series of examples.

Rule 1:

```````````````````````````````` example
*foo bar*
.
<p><em>foo bar</em></p>
````````````````````````````````


This is not emphasis, because the opening `*` is followed by
whitespace, and hence not part of a [left-flanking delimiter run]:

```````````````````````````````` example
a * foo bar*
.
<p>a * foo bar*</p>
````````````````````````````````


This is not emphasis, because the opening `*` is preceded
by an alphanumeric and followed by punctuation, and hence
not part of a [left-flanking delimiter run]:

```````````````````````````````` example
a*"foo"*
.
<p>a*&quot;foo&quot;*</p>
````````````````````````````````


Unicode nonbreaking spaces count as whitespace, too:

```````````````````````````````` example
* a *
.
<p>* a *</p>
````````````````````````````````


Intraword emphasis with `*` is permitted:

```````````````````````````````` example
foo*bar*
.
<p>foo<em>bar</em></p>
````````````````````````````````


```````````````````````````````` example
5*6*78
.
<p>5<em>6</em>78</p>
````````````````````````````````


Rule 2:

```````````````````````````````` example
_foo bar_
.
<p><em>foo bar</em></p>
````````````````````````````````


This is not emphasis, because the opening `_` is followed by
whitespace:

```````````````````````````````` example
_ foo bar_
.
<p>_ foo bar_</p>
````````````````````````````````


This is not emphasis, because the opening `_` is preceded
by an alphanumeric and followed by punctuation:

```````````````````````````````` example
a_"foo"_
.
<p>a_&quot;foo&quot;_</p>
````````````````````````````````


Emphasis with `_` is not allowed inside words:

```````````````````````````````` example
foo_bar_
.
<p>foo_bar_</p>
````````````````````````````````


```````````````````````````````` example
5_6_78
.
<p>5_6_78</p>
````````````````````````````````


```````````````````````````````` example
пристаням_стремятся_
.
<p>пристаням_стремятся_</p>
````````````````````````````````


Here `_` does not generate emphasis, because the first delimiter run
is right-flanking and the second left-flanking:

```````````````````````````````` example
aa_"bb"_cc
.
<p>aa_&quot;bb&quot;_cc</p>
````````````````````````````````


This is emphasis, even though the opening delimiter is
both left- and right-flanking, because it is preceded by
punctuation:

```````````````````````````````` example
foo-_(bar)_
.
<p>foo-<em>(bar)</em></p>
````````````````````````````````


Rule 3:

This is not emphasis, because the closing delimiter does
not match the opening delimiter:

```````````````````````````````` example
_foo*
.
<p>_foo*</p>
````````````````````````````````


This is not emphasis, because the closing `*` is preceded by
whitespace:

```````````````````````````````` example
*foo bar *
.
<p>*foo bar *</p>
````````````````````````````````


A newline also counts as whitespace:

```````````````````````````````` example
*foo bar
*
.
<p>*foo bar
*</p>
````````````````````````````````


This is not emphasis, because the second `*` is
preceded by punctuation and followed by an alphanumeric
(hence it is not part of a [right-flanking delimiter run]:

```````````````````````````````` example
*(*foo)
.
<p>*(*foo)</p>
````````````````````````````````


The point of this restriction is more easily appreciated
with this example:

```````````````````````````````` example
*(*foo*)*
.
<p><em>(<em>foo</em>)</em></p>
````````````````````````````````


Intraword emphasis with `*` is allowed:

```````````````````````````````` example
*foo*bar
.
<p><em>foo</em>bar</p>
````````````````````````````````



Rule 4:

This is not emphasis, because the closing `_` is preceded by
whitespace:

```````````````````````````````` example
_foo bar _
.
<p>_foo bar _</p>
````````````````````````````````


This is not emphasis, because the second `_` is
preceded by punctuation and followed by an alphanumeric:

```````````````````````````````` example
_(_foo)
.
<p>_(_foo)</p>
````````````````````````````````


This is emphasis within emphasis:

```````````````````````````````` example
_(_foo_)_
.
<p><em>(<em>foo</em>)</em></p>
````````````````````````````````


Intraword emphasis is disallowed for `_`:

```````````````````````````````` example
_foo_bar
.
<p>_foo_bar</p>
````````````````````````````````


```````````````````````````````` example
_пристаням_стремятся
.
<p>_пристаням_стремятся</p>
````````````````````````````````


```````````````````````````````` example
_foo_bar_baz_
.
<p><em>foo_bar_baz</em></p>
````````````````````````````````


This is emphasis, even though the closing delimiter is
both left- and right-flanking, because it is followed by
punctuation:

```````````````````````````````` example
_(bar)_.
.
<p><em>(bar)</em>.</p>
````````````````````````````````


Rule 5:

```````````````````````````````` example
**foo bar**
.
<p><strong>foo bar</strong></p>
````````````````````````````````


This is not strong emphasis, because the opening delimiter is
followed by whitespace:

```````````````````````````````` example
** foo bar**
.
<p>** foo bar**</p>
````````````````````````````````


This is not strong emphasis, because the opening `**` is preceded
by an alphanumeric and followed by punctuation, and hence
not part of a [left-flanking delimiter run]:

```````````````````````````````` example
a**"foo"**
.
<p>a**&quot;foo&quot;**</p>
````````````````````````````````


Intraword strong emphasis with `**` is permitted:

```````````````````````````````` example
foo**bar**
.
<p>foo<strong>bar</strong></p>
````````````````````````````````


Rule 6:

```````````````````````````````` example
__foo bar__
.
<p><strong>foo bar</strong></p>
````````````````````````````````


This is not strong emphasis, because the opening delimiter is
followed by whitespace:

```````````````````````````````` example
__ foo bar__
.
<p>__ foo bar__</p>
````````````````````````````````


A newline counts as whitespace:
```````````````````````````````` example
__
foo bar__
.
<p>__
foo bar__</p>
````````````````````````````````


This is not strong emphasis, because the opening `__` is preceded
by an alphanumeric and followed by punctuation:

```````````````````````````````` example
a__"foo"__
.
<p>a__&quot;foo&quot;__</p>
````````````````````````````````


Intraword strong emphasis is forbidden with `__`:

```````````````````````````````` example
foo__bar__
.
<p>foo__bar__</p>
````````````````````````````````


```````````````````````````````` example
5__6__78
.
<p>5__6__78</p>
````````````````````````````````


```````````````````````````````` example
пристаням__стремятся__
.
<p>пристаням__стремятся__</p>
````````````````````````````````


```````````````````````````````` example
__foo, __bar__, baz__
.
<p><strong>foo, <strong>bar</strong>, baz</strong></p>
````````````````````````````````


This is strong emphasis, even though the opening delimiter is
both left- and right-flanking, because it is preceded by
punctuation:

```````````````````````````````` example
foo-__(bar)__
.
<p>foo-<strong>(bar)</strong></p>
````````````````````````````````



Rule 7:

This is not strong emphasis, because the closing delimiter is preceded
by whitespace:

```````````````````````````````` example
**foo bar **
.
<p>**foo bar **</p>
````````````````````````````````


(Nor can it be interpreted as an emphasized `*foo bar *`, because of
Rule 11.)

This is not strong emphasis, because the second `**` is
preceded by punctuation and followed by an alphanumeric:

```````````````````````````````` example
**(**foo)
.
<p>**(**foo)</p>
````````````````````````````````


The point of this restriction is more easily appreciated
with these examples:

```````````````````````````````` example
*(**foo**)*
.
<p><em>(<strong>foo</strong>)</em></p>
````````````````````````````````


```````````````````````````````` example
**Gomphocarpus (*Gomphocarpus physocarpus*, syn.
*Asclepias physocarpa*)**
.
<p><strong>Gomphocarpus (<em>Gomphocarpus physocarpus</em>, syn.
<em>Asclepias physocarpa</em>)</strong></p>
````````````````````````````````


```````````````````````````````` example
**foo "*bar*" foo**
.
<p><strong>foo &quot;<em>bar</em>&quot; foo</strong></p>
````````````````````````````````


Intraword emphasis:

```````````````````````````````` example
**foo**bar
.
<p><strong>foo</strong>bar</p>
````````````````````````````````


Rule 8:

This is not strong emphasis, because the closing delimiter is
preceded by whitespace:

```````````````````````````````` example
__foo bar __
.
<p>__foo bar __</p>
````````````````````````````````


This is not strong emphasis, because the second `__` is
preceded by punctuation and followed by an alphanumeric:

```````````````````````````````` example
__(__foo)
.
<p>__(__foo)</p>
````````````````````````````````


The point of this restriction is more easily appreciated
with this example:

```````````````````````````````` example
_(__foo__)_
.
<p><em>(<strong>foo</strong>)</em></p>
````````````````````````````````


Intraword strong emphasis is forbidden with `__`:

```````````````````````````````` example
__foo__bar
.
<p>__foo__bar</p>
````````````````````````````````


```````````````````````````````` example
__пристаням__стремятся
.
<p>__пристаням__стремятся</p>
````````````````````````````````


```````````````````````````````` example
__foo__bar__baz__
.
<p><strong>foo__bar__baz</strong></p>
````````````````````````````````


This is strong emphasis, even though the closing delimiter is
both left- and right-flanking, because it is followed by
punctuation:

```````````````````````````````` example
__(bar)__.
.
<p><strong>(bar)</strong>.</p>
````````````````````````````````


Rule 9:

Any nonempty sequence of inline elements can be the contents of an
emphasized span.

```````````````````````````````` example
*foo [bar](/url)*
.
<p><em>foo <a href="/url">bar</a></em></p>
````````````````````````````````


```````````````````````````````` example
*foo
bar*
.
<p><em>foo
bar</em></p>
````````````````````````````````


In particular, emphasis and strong emphasis can be nested
inside emphasis:

```````````````````````````````` example
_foo __bar__ baz_
.
<p><em>foo <strong>bar</strong> baz</em></p>
````````````````````````````````


```````````````````````````````` example
_foo _bar_ baz_
.
<p><em>foo <em>bar</em> baz</em></p>
````````````````````````````````


```````````````````````````````` example
__foo_ bar_
.
<p><em><em>foo</em> bar</em></p>
````````````````````````````````


```````````````````````````````` example
*foo *bar**
.
<p><em>foo <em>bar</em></em></p>
````````````````````````````````


```````````````````````````````` example
*foo **bar** baz*
.
<p><em>foo <strong>bar</strong> baz</em></p>
````````````````````````````````

```````````````````````````````` example
*foo**bar**baz*
.
<p><em>foo<strong>bar</strong>baz</em></p>
````````````````````````````````

Note that in the preceding case, the interpretation

``` markdown
<p><em>foo</em><em>bar<em></em>baz</em></p>
```


is precluded by the condition that a delimiter that
can both open and close (like the `*` after `foo`)
cannot form emphasis if the sum of the lengths of
the delimiter runs containing the opening and
closing delimiters is a multiple of 3 unless
both lengths are multiples of 3.


For the same reason, we don't get two consecutive
emphasis sections in this example:

```````````````````````````````` example
*foo**bar*
.
<p><em>foo**bar</em></p>
````````````````````````````````


The same condition ensures that the following
cases are all strong emphasis nested inside
emphasis, even when the interior spaces are
omitted:


```````````````````````````````` example
***foo** bar*
.
<p><em><strong>foo</strong> bar</em></p>
````````````````````````````````


```````````````````````````````` example
*foo **bar***
.
<p><em>foo <strong>bar</strong></em></p>
````````````````````````````````


```````````````````````````````` example
*foo**bar***
.
<p><em>foo<strong>bar</strong></em></p>
````````````````````````````````


When the lengths of the interior closing and opening
delimiter runs are *both* multiples of 3, though,
they can match to create emphasis:

```````````````````````````````` example
foo***bar***baz
.
<p>foo<em><strong>bar</strong></em>baz</p>
````````````````````````````````

```````````````````````````````` example
foo******bar*********baz
.
<p>foo<strong><strong><strong>bar</strong></strong></strong>***baz</p>
````````````````````````````````


Indefinite levels of nesting are possible:

```````````````````````````````` example
*foo **bar *baz* bim** bop*
.
<p><em>foo <strong>bar <em>baz</em> bim</strong> bop</em></p>
````````````````````````````````


```````````````````````````````` example
*foo [*bar*](/url)*
.
<p><em>foo <a href="/url"><em>bar</em></a></em></p>
````````````````````````````````


There can be no empty emphasis or strong emphasis:

```````````````````````````````` example
** is not an empty emphasis
.
<p>** is not an empty emphasis</p>
````````````````````````````````


```````````````````````````````` example
**** is not an empty strong emphasis
.
<p>**** is not an empty strong emphasis</p>
````````````````````````````````



Rule 10:

Any nonempty sequence of inline elements can be the contents of an
strongly emphasized span.

```````````````````````````````` example
**foo [bar](/url)**
.
<p><strong>foo <a href="/url">bar</a></strong></p>
````````````````````````````````


```````````````````````````````` example
**foo
bar**
.
<p><strong>foo
bar</strong></p>
````````````````````````````````


In particular, emphasis and strong emphasis can be nested
inside strong emphasis:

```````````````````````````````` example
__foo _bar_ baz__
.
<p><strong>foo <em>bar</em> baz</strong></p>
````````````````````````````````


```````````````````````````````` example
__foo __bar__ baz__
.
<p><strong>foo <strong>bar</strong> baz</strong></p>
````````````````````````````````


```````````````````````````````` example
____foo__ bar__
.
<p><strong><strong>foo</strong> bar</strong></p>
````````````````````````````````


```````````````````````````````` example
**foo **bar****
.
<p><strong>foo <strong>bar</strong></strong></p>
````````````````````````````````


```````````````````````````````` example
**foo *bar* baz**
.
<p><strong>foo <em>bar</em> baz</strong></p>
````````````````````````````````


```````````````````````````````` example
**foo*bar*baz**
.
<p><strong>foo<em>bar</em>baz</strong></p>
````````````````````````````````


```````````````````````````````` example
***foo* bar**
.
<p><strong><em>foo</em> bar</strong></p>
````````````````````````````````


```````````````````````````````` example
**foo *bar***
.
<p><strong>foo <em>bar</em></strong></p>
````````````````````````````````


Indefinite levels of nesting are possible:

```````````````````````````````` example
**foo *bar **baz**
bim* bop**
.
<p><strong>foo <em>bar <strong>baz</strong>
bim</em> bop</strong></p>
````````````````````````````````


```````````````````````````````` example
**foo [*bar*](/url)**
.
<p><strong>foo <a href="/url"><em>bar</em></a></strong></p>
````````````````````````````````


There can be no empty emphasis or strong emphasis:

```````````````````````````````` example
__ is not an empty emphasis
.
<p>__ is not an empty emphasis</p>
````````````````````````````````


```````````````````````````````` example
____ is not an empty strong emphasis
.
<p>____ is not an empty strong emphasis</p>
````````````````````````````````



Rule 11:

```````````````````````````````` example
foo ***
.
<p>foo ***</p>
````````````````````````````````


```````````````````````````````` example
foo *\**
.
<p>foo <em>*</em></p>
````````````````````````````````


```````````````````````````````` example
foo *_*
.
<p>foo <em>_</em></p>
````````````````````````````````


```````````````````````````````` example
foo *****
.
<p>foo *****</p>
````````````````````````````````


```````````````````````````````` example
foo **\***
.
<p>foo <strong>*</strong></p>
````````````````````````````````


```````````````````````````````` example
foo **_**
.
<p>foo <strong>_</strong></p>
````````````````````````````````


Note that when delimiters do not match evenly, Rule 11 determines
that the excess literal `*` characters will appear outside of the
emphasis, rather than inside it:

```````````````````````````````` example
**foo*
.
<p>*<em>foo</em></p>
````````````````````````````````


```````````````````````````````` example
*foo**
.
<p><em>foo</em>*</p>
````````````````````````````````


```````````````````````````````` example
***foo**
.
<p>*<strong>foo</strong></p>
````````````````````````````````


```````````````````````````````` example
****foo*
.
<p>***<em>foo</em></p>
````````````````````````````````


```````````````````````````````` example
**foo***
.
<p><strong>foo</strong>*</p>
````````````````````````````````


```````````````````````````````` example
*foo****
.
<p><em>foo</em>***</p>
````````````````````````````````



Rule 12:

```````````````````````````````` example
foo ___
.
<p>foo ___</p>
````````````````````````````````


```````````````````````````````` example
foo _\__
.
<p>foo <em>_</em></p>
````````````````````````````````


```````````````````````````````` example
foo _*_
.
<p>foo <em>*</em></p>
````````````````````````````````


```````````````````````````````` example
foo _____
.
<p>foo _____</p>
````````````````````````````````


```````````````````````````````` example
foo __\___
.
<p>foo <strong>_</strong></p>
````````````````````````````````


```````````````````````````````` example
foo __*__
.
<p>foo <strong>*</strong></p>
````````````````````````````````


```````````````````````````````` example
__foo_
.
<p>_<em>foo</em></p>
````````````````````````````````


Note that when delimiters do not match evenly, Rule 12 determines
that the excess literal `_` characters will appear outside of the
emphasis, rather than inside it:

```````````````````````````````` example
_foo__
.
<p><em>foo</em>_</p>
````````````````````````````````


```````````````````````````````` example
___foo__
.
<p>_<strong>foo</strong></p>
````````````````````````````````


```````````````````````````````` example
____foo_
.
<p>___<em>foo</em></p>
````````````````````````````````


```````````````````````````````` example
__foo___
.
<p><strong>foo</strong>_</p>
````````````````````````````````


```````````````````````````````` example
_foo____
.
<p><em>foo</em>___</p>
````````````````````````````````


Rule 13 implies that if you want emphasis nested directly inside
emphasis, you must use different delimiters:

```````````````````````````````` example
**foo**
.
<p><strong>foo</strong></p>
````````````````````````````````


```````````````````````````````` example
*_foo_*
.
<p><em><em>foo</em></em></p>
````````````````````````````````


```````````````````````````````` example
__foo__
.
<p><strong>foo</strong></p>
````````````````````````````````


```````````````````````````````` example
_*foo*_
.
<p><em><em>foo</em></em></p>
````````````````````````````````


However, strong emphasis within strong emphasis is possible without
switching delimiters:

```````````````````````````````` example
****foo****
.
<p><strong><strong>foo</strong></strong></p>
````````````````````````````````


```````````````````````````````` example
____foo____
.
<p><strong><strong>foo</strong></strong></p>
````````````````````````````````



Rule 13 can be applied to arbitrarily long sequences of
delimiters:

```````````````````````````````` example
******foo******
.
<p><strong><strong><strong>foo</strong></strong></strong></p>
````````````````````````````````


Rule 14:

```````````````````````````````` example
***foo***
.
<p><em><strong>foo</strong></em></p>
````````````````````````````````


```````````````````````````````` example
_____foo_____
.
<p><em><strong><strong>foo</strong></strong></em></p>
````````````````````````````````


Rule 15:

```````````````````````````````` example
*foo _bar* baz_
.
<p><em>foo _bar</em> baz_</p>
````````````````````````````````


```````````````````````````````` example
*foo __bar *baz bim__ bam*
.
<p><em>foo <strong>bar *baz bim</strong> bam</em></p>
````````````````````````````````


Rule 16:

```````````````````````````````` example
**foo **bar baz**
.
<p>**foo <strong>bar baz</strong></p>
````````````````````````````````


```````````````````````````````` example
*foo *bar baz*
.
<p>*foo <em>bar baz</em></p>
````````````````````````````````


Rule 17:

```````````````````````````````` example
*[bar*](/url)
.
<p>*<a href="/url">bar*</a></p>
````````````````````````````````


```````````````````````````````` example
_foo [bar_](/url)
.
<p>_foo <a href="/url">bar_</a></p>
````````````````````````````````


```````````````````````````````` example
*<img src="foo" title="*"/>
.
<p>*<img src="foo" title="*"/></p>
````````````````````````````````


```````````````````````````````` example
**<a href="**">
.
<p>**<a href="**"></p>
````````````````````````````````


```````````````````````````````` example
__<a href="__">
.
<p>__<a href="__"></p>
````````````````````````````````


```````````````````````````````` example
*a `*`*
.
<p><em>a <code>*</code></em></p>
````````````````````````````````


```````````````````````````````` example
_a `_`_
.
<p><em>a <code>_</code></em></p>
````````````````````````````````


```````````````````````````````` example
**a<http://foo.bar/?q=**>
.
<p>**a<a href="http://foo.bar/?q=**">http://foo.bar/?q=**</a></p>
````````````````````````````````


```````````````````````````````` example
__a<http://foo.bar/?q=__>
.
<p>__a<a href="http://foo.bar/?q=__">http://foo.bar/?q=__</a></p>
````````````````````````````````


<div class="extension-chunk">

<div class="extension-chunk">

## Underline (Markua extension)

In Markdown as defined by John Gruber, and in CommonMark and GFM,
`*one asterisk*` and `_one underscore_` both produce *italics*, and there is no
way to produce an underline in Markdown except using inline HTML.

This is unfortunate, since underline is not always just a typewriter version of
italics. In some languages and in some contexts, underlining serves a distinct,
legitimate purpose.

Worse, Markua bans all inline HTML except HTML comments. So even the gross
Markdown workaround to produce underlines with HTML does not work.

So, how to produce underline?

In Markua, `*one asterisk*` produces italics, and `_one underscore_` can
produce either italics or an underline based on the `italicize-underlines`
global setting.

The global setting `italicize-underlines` can be `true` or `false`. The default
is `true`, so that Markua functions the same way as Markdown by default.

This will be a bit surprising for new authors who are discovering Markua and
have never heard of Markdown, such as people writing novels in Markua. However,
it is my expectation that for the foreseeable future, the proportion of authors
who discover Markdown first and then learn about Markua will be far greater.
For these people, it would be a lot more surprising if all their text which they
had italicized like `_this_` suddenly became underlined instead!

Furthermore, if you've written in a certain way (like `_this_` for italic) for
years, your fingers essentially just do the right thing. I want this to still
feel right for these people, not something that makes them think they need to go
change a global setting. Almost nobody has spent years writing in Markua, so
this is much less of an issue for them!

(Also, frankly, most novels just need italic, not underline, so this isn't a big
issue. While underline does have legitimate uses, they are more niche than
italic.)

So, by default, `italicize-underlines` is `true`:

```````````````````````````````` example
# Chapter One

stuff

foo _bar_ baz

lorem *ipsum* dolor

stuff
.
<h1>Chapter One</h1>
<p>stuff</p>
<p>foo <em>bar</em> baz</p>
<p>lorem <em>ipsum</em> dolor</p>
<p>stuff</p>
````````````````````````````````

This can be made explicit by setting the `italicize-underlines` global setting
to `true`:

```````````````````````````````` example
{
italicize-underlines: true
}

# Chapter One

stuff

foo _bar_ baz

lorem *ipsum* dolor

stuff
.
<h1>Chapter One</h1>
<p>stuff</p>
<p>foo <em>bar</em> baz</p>
<p>lorem <em>ipsum</em> dolor</p>
<p>stuff</p>
````````````````````````````````

Set the `italicize-underlines` global setting to `false` to produce underline:

```````````````````````````````` example
{
italicize-underlines: false
}

# Chapter One

stuff

foo _bar_ baz

lorem *ipsum* dolor

stuff
.
<h1>Chapter One</h1>
<p>stuff</p>
<p>foo <u>bar</u> baz</p>
<p>lorem <em>ipsum</em> dolor</p>
<p>stuff</p>
````````````````````````````````

</div>


<div class="extension">

## Superscript and subscript (Markua extension)

To produce superscript like the 3 in 5^3^ = 125, surround it with carets like `5^3^ = 125`.

```````````````````````````````` example
Superscript: 5^3^ = 125
.
<p>Superscript: 5<sup>3</sup> = 125</p>
````````````````````````````````

To produce subscript like the 2 in H~2~O, surround it with single tildes like `H~2~O`.

```````````````````````````````` example
Subscript: H~2~O
.
<p>Subscript: H<sub>2</sub>O</p>
````````````````````````````````

</div>


## Strikethrough (GFM extension, identical)

Markua enables the `strikethrough` extension, where an additional emphasis type is
available.

Strikethrough text is any text wrapped in two tildes (`~`).

```````````````````````````````` example
~~Hi~~ Hello, world!
.
<p><del>Hi</del> Hello, world!</p>
````````````````````````````````

As with regular emphasis delimiters, a new paragraph will cause strikethrough
parsing to cease:

```````````````````````````````` example
This ~~has a

new paragraph~~.
.
<p>This ~~has a</p>
<p>new paragraph~~.</p>
````````````````````````````````

</div>

</div>


## Links

A link contains [link text] (the visible text), a [link destination]
(the URI that is the link destination), and optionally a [link title].
There are two basic kinds of links in Markdown.  In [inline links] the
destination and title are given immediately after the link text.  In
[reference links] the destination and title are defined elsewhere in
the document.

A [link text](@) consists of a sequence of zero or more
inline elements enclosed by square brackets (`[` and `]`).  The
following rules apply:

- Links may not contain other links, at any level of nesting. If
  multiple otherwise valid link definitions appear nested inside each
  other, the inner-most definition is used.

- Brackets are allowed in the [link text] only if (a) they
  are backslash-escaped or (b) they appear as a matched pair of brackets,
  with an open bracket `[`, a sequence of zero or more inlines, and
  a close bracket `]`.

- Backtick [code spans], [autolinks], and raw [HTML tags] bind more tightly
  than the brackets in link text.  Thus, for example,
  `` [foo`]` `` could not be a link text, since the second `]`
  is part of a code span.

- The brackets in link text bind more tightly than markers for
  [emphasis and strong emphasis]. Thus, for example, `*[foo*](url)` is a link.

A [link destination](@) consists of either

- a sequence of zero or more characters between an opening `<` and a
  closing `>` that contains no line breaks or unescaped
  `<` or `>` characters, or

- a nonempty sequence of characters that does not start with
  `<`, does not include ASCII space or control characters, and
  includes parentheses only if (a) they are backslash-escaped or
  (b) they are part of a balanced pair of unescaped parentheses.
  (Implementations may impose limits on parentheses nesting to
  avoid performance issues, but at least three levels of nesting
  should be supported.)

A [link title](@)  consists of either

- a sequence of zero or more characters between straight double-quote
  characters (`"`), including a `"` character only if it is
  backslash-escaped, or

- a sequence of zero or more characters between straight single-quote
  characters (`'`), including a `'` character only if it is
  backslash-escaped, or

- a sequence of zero or more characters between matching parentheses
  (`(...)`), including a `(` or `)` character only if it is
  backslash-escaped.

Although [link titles] may span multiple lines, they may not contain
a [blank line].

An [inline link](@) consists of a [link text] followed immediately
by a left parenthesis `(`, optional [whitespace], an optional
[link destination], an optional [link title] separated from the link
destination by [whitespace], optional [whitespace], and a right
parenthesis `)`. The link's text consists of the inlines contained
in the [link text] (excluding the enclosing square brackets).
The link's URI consists of the link destination, excluding enclosing
`<...>` if present, with backslash-escapes in effect as described
above.  The link's title consists of the link title, excluding its
enclosing delimiters, with backslash-escapes in effect as described
above.

Here is a simple inline link:

```````````````````````````````` example
[link](/uri "title")
.
<p><a href="/uri" title="title">link</a></p>
````````````````````````````````


The title may be omitted:

```````````````````````````````` example
[link](/uri)
.
<p><a href="/uri">link</a></p>
````````````````````````````````


Both the title and the destination may be omitted:

```````````````````````````````` example
[link]()
.
<p><a href="">link</a></p>
````````````````````````````````


```````````````````````````````` example
[link](<>)
.
<p><a href="">link</a></p>
````````````````````````````````

The destination can only contain spaces if it is
enclosed in pointy brackets:

```````````````````````````````` example
[link](/my uri)
.
<p>[link](/my uri)</p>
````````````````````````````````

```````````````````````````````` example
[link](</my uri>)
.
<p><a href="/my%20uri">link</a></p>
````````````````````````````````

The destination cannot contain line breaks,
even if enclosed in pointy brackets:

```````````````````````````````` example
[link](foo
bar)
.
<p>[link](foo
bar)</p>
````````````````````````````````

```````````````````````````````` example
[link](<foo
bar>)
.
<p>[link](<foo
bar>)</p>
````````````````````````````````

The destination can contain `)` if it is enclosed
in pointy brackets:

```````````````````````````````` example
[a](<b)c>)
.
<p><a href="b)c">a</a></p>
````````````````````````````````

Pointy brackets that enclose links must be unescaped:

```````````````````````````````` example
[link](<foo\>)
.
<p>[link](&lt;foo&gt;)</p>
````````````````````````````````

These are not links, because the opening pointy bracket
is not matched properly:

```````````````````````````````` example
[a](<b)c
[a](<b)c>
[a](<b>c)
.
<p>[a](&lt;b)c
[a](&lt;b)c&gt;
[a](<b>c)</p>
````````````````````````````````

Parentheses inside the link destination may be escaped:

```````````````````````````````` example
[link](\(foo\))
.
<p><a href="(foo)">link</a></p>
````````````````````````````````

Any number of parentheses are allowed without escaping, as long as they are
balanced:

```````````````````````````````` example
[link](foo(and(bar)))
.
<p><a href="foo(and(bar))">link</a></p>
````````````````````````````````

However, if you have unbalanced parentheses, you need to escape or use the
`<...>` form:

```````````````````````````````` example
[link](foo\(and\(bar\))
.
<p><a href="foo(and(bar)">link</a></p>
````````````````````````````````


```````````````````````````````` example
[link](<foo(and(bar)>)
.
<p><a href="foo(and(bar)">link</a></p>
````````````````````````````````


Parentheses and other symbols can also be escaped, as usual
in Markdown:

```````````````````````````````` example
[link](foo\)\:)
.
<p><a href="foo):">link</a></p>
````````````````````````````````


A link can contain fragment identifiers and queries:

```````````````````````````````` example
[link](#fragment)

[link](http://example.com#fragment)

[link](http://example.com?foo=3#frag)
.
<p><a href="#fragment">link</a></p>
<p><a href="http://example.com#fragment">link</a></p>
<p><a href="http://example.com?foo=3#frag">link</a></p>
````````````````````````````````


Note that a backslash before a non-escapable character is
just a backslash:

```````````````````````````````` example
[link](foo\bar)
.
<p><a href="foo%5Cbar">link</a></p>
````````````````````````````````


URL-escaping should be left alone inside the destination, as all
URL-escaped characters are also valid URL characters. Entity and
numerical character references in the destination will be parsed
into the corresponding Unicode code points, as usual.  These may
be optionally URL-escaped when written as HTML, but this spec
does not enforce any particular policy for rendering URLs in
HTML or other formats.  Renderers may make different decisions
about how to escape or normalize URLs in the output.

```````````````````````````````` example
[link](foo%20b&auml;)
.
<p><a href="foo%20b%C3%A4">link</a></p>
````````````````````````````````


Note that, because titles can often be parsed as destinations,
if you try to omit the destination and keep the title, you'll
get unexpected results:

```````````````````````````````` example
[link]("title")
.
<p><a href="%22title%22">link</a></p>
````````````````````````````````


Titles may be in single quotes, double quotes, or parentheses:

```````````````````````````````` example
[link](/url "title")
[link](/url 'title')
[link](/url (title))
.
<p><a href="/url" title="title">link</a>
<a href="/url" title="title">link</a>
<a href="/url" title="title">link</a></p>
````````````````````````````````


Backslash escapes and entity and numeric character references
may be used in titles:

```````````````````````````````` example
[link](/url "title \"&quot;")
.
<p><a href="/url" title="title &quot;&quot;">link</a></p>
````````````````````````````````


Titles must be separated from the link using a [whitespace].
Other [Unicode whitespace] like non-breaking space doesn't work.

```````````````````````````````` example
[link](/url "title")
.
<p><a href="/url%C2%A0%22title%22">link</a></p>
````````````````````````````````


Nested balanced quotes are not allowed without escaping:

```````````````````````````````` example
[link](/url "title "and" title")
.
<p>[link](/url &quot;title &quot;and&quot; title&quot;)</p>
````````````````````````````````


But it is easy to work around this by using a different quote type:

```````````````````````````````` example
[link](/url 'title "and" title')
.
<p><a href="/url" title="title &quot;and&quot; title">link</a></p>
````````````````````````````````


(Note:  `Markdown.pl` did allow double quotes inside a double-quoted
title, and its test suite included a test demonstrating this.
But it is hard to see a good rationale for the extra complexity this
brings, since there are already many ways---backslash escaping,
entity and numeric character references, or using a different
quote type for the enclosing title---to write titles containing
double quotes.  `Markdown.pl`'s handling of titles has a number
of other strange features.  For example, it allows single-quoted
titles in inline links, but not reference links.  And, in
reference links but not inline links, it allows a title to begin
with `"` and end with `)`.  `Markdown.pl` 1.0.1 even allows
titles with no closing quotation mark, though 1.0.2b8 does not.
It seems preferable to adopt a simple, rational rule that works
the same way in inline links and link reference definitions.)

[Whitespace] is allowed around the destination and title:

```````````````````````````````` example
[link](   /uri
  "title"  )
.
<p><a href="/uri" title="title">link</a></p>
````````````````````````````````


But it is not allowed between the link text and the
following parenthesis:

```````````````````````````````` example
[link] (/uri)
.
<p>[link] (/uri)</p>
````````````````````````````````


The link text may contain balanced brackets, but not unbalanced ones,
unless they are escaped:

```````````````````````````````` example
[link [foo [bar]]](/uri)
.
<p><a href="/uri">link [foo [bar]]</a></p>
````````````````````````````````


```````````````````````````````` example
[link] bar](/uri)
.
<p>[link] bar](/uri)</p>
````````````````````````````````


```````````````````````````````` example
[link [bar](/uri)
.
<p>[link <a href="/uri">bar</a></p>
````````````````````````````````


```````````````````````````````` example
[link \[bar](/uri)
.
<p><a href="/uri">link [bar</a></p>
````````````````````````````````


The link text may contain inline content:

```````````````````````````````` example
[link *foo **bar** `#`*](/uri)
.
<p><a href="/uri">link <em>foo <strong>bar</strong> <code>#</code></em></a></p>
````````````````````````````````


```````````````````````````````` example
[![moon](moon.jpg)](/uri)
.
<p><a href="/uri"><img src="moon.jpg" alt="moon" /></a></p>
````````````````````````````````


However, links may not contain other links, at any level of nesting.

```````````````````````````````` example
[foo [bar](/uri)](/uri)
.
<p>[foo <a href="/uri">bar</a>](/uri)</p>
````````````````````````````````


```````````````````````````````` example
[foo *[bar [baz](/uri)](/uri)*](/uri)
.
<p>[foo <em>[bar <a href="/uri">baz</a>](/uri)</em>](/uri)</p>
````````````````````````````````


```````````````````````````````` example
![[[foo](uri1)](uri2)](uri3)
.
<p><img src="uri3" alt="[foo](uri2)" /></p>
````````````````````````````````


These cases illustrate the precedence of link text grouping over
emphasis grouping:

```````````````````````````````` example
*[foo*](/uri)
.
<p>*<a href="/uri">foo*</a></p>
````````````````````````````````


```````````````````````````````` example
[foo *bar](baz*)
.
<p><a href="baz*">foo *bar</a></p>
````````````````````````````````


Note that brackets that *aren't* part of links do not take
precedence:

```````````````````````````````` example
*foo [bar* baz]
.
<p><em>foo [bar</em> baz]</p>
````````````````````````````````


These cases illustrate the precedence of HTML tags, code spans,
and autolinks over link grouping:

```````````````````````````````` example
[foo <bar attr="](baz)">
.
<p>[foo <bar attr="](baz)"></p>
````````````````````````````````


```````````````````````````````` example
[foo`](/uri)`
.
<p>[foo<code>](/uri)</code></p>
````````````````````````````````


```````````````````````````````` example
[foo<http://example.com/?search=](uri)>
.
<p>[foo<a href="http://example.com/?search=%5D(uri)">http://example.com/?search=](uri)</a></p>
````````````````````````````````


There are three kinds of [reference link](@)s:
[full](#full-reference-link), [collapsed](#collapsed-reference-link),
and [shortcut](#shortcut-reference-link).

A [full reference link](@)
consists of a [link text] immediately followed by a [link label]
that [matches] a [link reference definition] elsewhere in the document.

A [link label](@)  begins with a left bracket (`[`) and ends
with the first right bracket (`]`) that is not backslash-escaped.
Between these brackets there must be at least one [non-whitespace character].
Unescaped square bracket characters are not allowed inside the
opening and closing square brackets of [link labels].  A link
label can have at most 999 characters inside the square
brackets.

One label [matches](@)
another just in case their normalized forms are equal.  To normalize a
label, strip off the opening and closing brackets,
perform the *Unicode case fold*, strip leading and trailing
[whitespace] and collapse consecutive internal
[whitespace] to a single space.  If there are multiple
matching reference link definitions, the one that comes first in the
document is used.  (It is desirable in such cases to emit a warning.)

<div class="extension-chunk">

The contents of the first link label are parsed as inlines, which are
used as the link's text.  The link's URI and title are provided by the
matching [link reference definition].

</div>

Here is a simple example:

```````````````````````````````` example
[foo][bar]

[bar]: /url "title"
.
<p><a href="/url" title="title">foo</a></p>
````````````````````````````````


The rules for the [link text] are the same as with
[inline links].  Thus:

The link text may contain balanced brackets, but not unbalanced ones,
unless they are escaped:

```````````````````````````````` example
[link [foo [bar]]][ref]

[ref]: /uri
.
<p><a href="/uri">link [foo [bar]]</a></p>
````````````````````````````````


```````````````````````````````` example
[link \[bar][ref]

[ref]: /uri
.
<p><a href="/uri">link [bar</a></p>
````````````````````````````````


The link text may contain inline content:

```````````````````````````````` example
[link *foo **bar** `#`*][ref]

[ref]: /uri
.
<p><a href="/uri">link <em>foo <strong>bar</strong> <code>#</code></em></a></p>
````````````````````````````````


```````````````````````````````` example
[![moon](moon.jpg)][ref]

[ref]: /uri
.
<p><a href="/uri"><img src="moon.jpg" alt="moon" /></a></p>
````````````````````````````````


However, links may not contain other links, at any level of nesting.

```````````````````````````````` example
[foo [bar](/uri)][ref]

[ref]: /uri
.
<p>[foo <a href="/uri">bar</a>]<a href="/uri">ref</a></p>
````````````````````````````````


```````````````````````````````` example
[foo *bar [baz][ref]*][ref]

[ref]: /uri
.
<p>[foo <em>bar <a href="/uri">baz</a></em>]<a href="/uri">ref</a></p>
````````````````````````````````


(In the examples above, we have two [shortcut reference links]
instead of one [full reference link].)

The following cases illustrate the precedence of link text grouping over
emphasis grouping:

```````````````````````````````` example
*[foo*][ref]

[ref]: /uri
.
<p>*<a href="/uri">foo*</a></p>
````````````````````````````````


```````````````````````````````` example
[foo *bar][ref]

[ref]: /uri
.
<p><a href="/uri">foo *bar</a></p>
````````````````````````````````


These cases illustrate the precedence of HTML tags, code spans,
and autolinks over link grouping:

```````````````````````````````` example
[foo <bar attr="][ref]">

[ref]: /uri
.
<p>[foo <bar attr="][ref]"></p>
````````````````````````````````


```````````````````````````````` example
[foo`][ref]`

[ref]: /uri
.
<p>[foo<code>][ref]</code></p>
````````````````````````````````


```````````````````````````````` example
[foo<http://example.com/?search=][ref]>

[ref]: /uri
.
<p>[foo<a href="http://example.com/?search=%5D%5Bref%5D">http://example.com/?search=][ref]</a></p>
````````````````````````````````


Matching is case-insensitive:

```````````````````````````````` example
[foo][BaR]

[bar]: /url "title"
.
<p><a href="/url" title="title">foo</a></p>
````````````````````````````````


Unicode case fold is used:

```````````````````````````````` example
[Толпой][Толпой] is a Russian word.

[ТОЛПОЙ]: /url
.
<p><a href="/url">Толпой</a> is a Russian word.</p>
````````````````````````````````


Consecutive internal [whitespace] is treated as one space for
purposes of determining matching:

```````````````````````````````` example
[Foo
  bar]: /url

[Baz][Foo bar]
.
<p><a href="/url">Baz</a></p>
````````````````````````````````


No [whitespace] is allowed between the [link text] and the
[link label]:

```````````````````````````````` example
[foo] [bar]

[bar]: /url "title"
.
<p>[foo] <a href="/url" title="title">bar</a></p>
````````````````````````````````


```````````````````````````````` example
[foo]
[bar]

[bar]: /url "title"
.
<p>[foo]
<a href="/url" title="title">bar</a></p>
````````````````````````````````


This is a departure from John Gruber's original Markdown syntax
description, which explicitly allows whitespace between the link
text and the link label.  It brings reference links in line with
[inline links], which (according to both original Markdown and
this spec) cannot have whitespace after the link text.  More
importantly, it prevents inadvertent capture of consecutive
[shortcut reference links]. If whitespace is allowed between the
link text and the link label, then in the following we will have
a single reference link, not two shortcut reference links, as
intended:

``` markdown
[foo]
[bar]

[foo]: /url1
[bar]: /url2
```

(Note that [shortcut reference links] were introduced by Gruber
himself in a beta version of `Markdown.pl`, but never included
in the official syntax description.  Without shortcut reference
links, it is harmless to allow space between the link text and
link label; but once shortcut references are introduced, it is
too dangerous to allow this, as it frequently leads to
unintended results.)

When there are multiple matching [link reference definitions],
the first is used:

```````````````````````````````` example
[foo]: /url1

[foo]: /url2

[bar][foo]
.
<p><a href="/url1">bar</a></p>
````````````````````````````````


Note that matching is performed on normalized strings, not parsed
inline content.  So the following does not match, even though the
labels define equivalent inline content:

```````````````````````````````` example
[bar][foo\!]

[foo!]: /url
.
<p>[bar][foo!]</p>
````````````````````````````````


[Link labels] cannot contain brackets, unless they are
backslash-escaped:

```````````````````````````````` example
[foo][ref[]

[ref[]: /uri
.
<p>[foo][ref[]</p>
<p>[ref[]: /uri</p>
````````````````````````````````


```````````````````````````````` example
[foo][ref[bar]]

[ref[bar]]: /uri
.
<p>[foo][ref[bar]]</p>
<p>[ref[bar]]: /uri</p>
````````````````````````````````


```````````````````````````````` example
[[[foo]]]

[[[foo]]]: /url
.
<p>[[[foo]]]</p>
<p>[[[foo]]]: /url</p>
````````````````````````````````


```````````````````````````````` example
[foo][ref\[]

[ref\[]: /uri
.
<p><a href="/uri">foo</a></p>
````````````````````````````````


Note that in this example `]` is not backslash-escaped:

```````````````````````````````` example
[bar\\]: /uri

[bar\\]
.
<p><a href="/uri">bar\</a></p>
````````````````````````````````


A [link label] must contain at least one [non-whitespace character]:

```````````````````````````````` example
[]

[]: /uri
.
<p>[]</p>
<p>[]: /uri</p>
````````````````````````````````


```````````````````````````````` example
[
 ]

[
 ]: /uri
.
<p>[
]</p>
<p>[
]: /uri</p>
````````````````````````````````


A [collapsed reference link](@)
consists of a [link label] that [matches] a
[link reference definition] elsewhere in the
document, followed by the string `[]`.
The contents of the first link label are parsed as inlines,
which are used as the link's text.  The link's URI and title are
provided by the matching reference link definition.  Thus,
`[foo][]` is equivalent to `[foo][foo]`.

```````````````````````````````` example
[foo][]

[foo]: /url "title"
.
<p><a href="/url" title="title">foo</a></p>
````````````````````````````````


```````````````````````````````` example
[*foo* bar][]

[*foo* bar]: /url "title"
.
<p><a href="/url" title="title"><em>foo</em> bar</a></p>
````````````````````````````````


The link labels are case-insensitive:

```````````````````````````````` example
[Foo][]

[foo]: /url "title"
.
<p><a href="/url" title="title">Foo</a></p>
````````````````````````````````



As with full reference links, [whitespace] is not
allowed between the two sets of brackets:

```````````````````````````````` example
[foo] 
[]

[foo]: /url "title"
.
<p><a href="/url" title="title">foo</a>
[]</p>
````````````````````````````````


A [shortcut reference link](@)
consists of a [link label] that [matches] a
[link reference definition] elsewhere in the
document and is not followed by `[]` or a link label.
The contents of the first link label are parsed as inlines,
which are used as the link's text.  The link's URI and title
are provided by the matching link reference definition.
Thus, `[foo]` is equivalent to `[foo][]`.

```````````````````````````````` example
[foo]

[foo]: /url "title"
.
<p><a href="/url" title="title">foo</a></p>
````````````````````````````````


```````````````````````````````` example
[*foo* bar]

[*foo* bar]: /url "title"
.
<p><a href="/url" title="title"><em>foo</em> bar</a></p>
````````````````````````````````


```````````````````````````````` example
[[*foo* bar]]

[*foo* bar]: /url "title"
.
<p>[<a href="/url" title="title"><em>foo</em> bar</a>]</p>
````````````````````````````````


```````````````````````````````` example
[[bar [foo]

[foo]: /url
.
<p>[[bar <a href="/url">foo</a></p>
````````````````````````````````


The link labels are case-insensitive:

```````````````````````````````` example
[Foo]

[foo]: /url "title"
.
<p><a href="/url" title="title">Foo</a></p>
````````````````````````````````


A space after the link text should be preserved:

```````````````````````````````` example
[foo] bar

[foo]: /url
.
<p><a href="/url">foo</a> bar</p>
````````````````````````````````


If you just want bracketed text, you can backslash-escape the
opening bracket to avoid links:

```````````````````````````````` example
\[foo]

[foo]: /url "title"
.
<p>[foo]</p>
````````````````````````````````


Note that this is a link, because a link label ends with the first
following closing bracket:

```````````````````````````````` example
[foo*]: /url

*[foo*]
.
<p>*<a href="/url">foo*</a></p>
````````````````````````````````


Full and compact references take precedence over shortcut
references:

```````````````````````````````` example
[foo][bar]

[foo]: /url1
[bar]: /url2
.
<p><a href="/url2">foo</a></p>
````````````````````````````````

```````````````````````````````` example
[foo][]

[foo]: /url1
.
<p><a href="/url1">foo</a></p>
````````````````````````````````

Inline links also take precedence:

```````````````````````````````` example
[foo]()

[foo]: /url1
.
<p><a href="">foo</a></p>
````````````````````````````````

```````````````````````````````` example
[foo](not a link)

[foo]: /url1
.
<p><a href="/url1">foo</a>(not a link)</p>
````````````````````````````````

In the following case `[bar][baz]` is parsed as a reference,
`[foo]` as normal text:

```````````````````````````````` example
[foo][bar][baz]

[baz]: /url
.
<p>[foo]<a href="/url">bar</a></p>
````````````````````````````````


Here, though, `[foo][bar]` is parsed as a reference, since
`[bar]` is defined:

```````````````````````````````` example
[foo][bar][baz]

[baz]: /url1
[bar]: /url2
.
<p><a href="/url2">foo</a><a href="/url1">baz</a></p>
````````````````````````````````


Here `[foo]` is not parsed as a shortcut reference, because it
is followed by a link label (even though `[bar]` is not defined):

```````````````````````````````` example
[foo][bar][baz]

[baz]: /url1
[foo]: /url2
.
<p>[foo]<a href="/url1">bar</a></p>
````````````````````````````````



<div class="extension-chunk">

<div class="extension">

## Crosslinks and ids (Markua extension)

There are two parts to making a crosslink.

1. Define an id.
2. Reference that id with a crosslink.

### Defining an id

There are two ways to define an id:

1. Using an id attribute `{id: some-id}`
2. Using a shorter "syntactic sugar" approach: `{#some-id}`

The shorter "syntactic sugar" approach is usually preferred. However, it can
look a bit odd in an attribute list with other attributes in it. So, when other
attributes are present in an attribute list, the `{id: some-id}` syntax is
preferred.

In terms of the value of an `id`, it has some special restrictions:

1. The first character in the `id` has to be a lowercase or uppercase letter,
   i.e. `[a-zA-Z]` if you think in regular expressions.
2. The remaining characters in the `id` have to be a lowercase or uppercase
   letter or a digit or a hyphen (-) or an underscore (_).
3. You can only define an `id` value once in an entire Markua document, even
   one that is split over multiple files.

These restrictions ensure that your `id`s can then be linked to by a crosslink
from anywhere in the Markua document.

Also, note that id attributes need to be defined on either a block or span
element. Finally, if an id is defined with an invalid name, the Markua Processor
must ignore it and log an error.

#### Defining an id on a block element

To define an id on a block element like a paragraph, figure, heading or even a
definition list item, you simply stick the id definition on a line above the
start of the block element. Note that exactly one newline must separate the
attribute list from the block element--if two newlines are used, the attribute
list will be interpreted as a directive, and the id won't be correctly applied.

Here's how to use the attribute list syntax to define an id attribute:

~~~
{id: some-id}
This is a paragraph with the id of `some-id`.
~~~

Here's how to use the shorter "syntactic sugar" approach to define an id
attribute:

~~~
{#some-id}
This is a paragraph with the id of `some-id`.
~~~

#### Defining an id on a span element

To define an id on a span element you simply add the id definition immediately
after the span element.

Here's how to use the attribute list syntax to define an id attribute on a span
element:

~~~
The word Markua{id: markua} has an id.

Leanpub is based in **Victoria, BC, Canada**{id: victoria}.
~~~

Here's how to use the shorter "syntactic sugar" approach to define an id
attribute:

~~~
The word Markua{#markua} has an id.

Leanpub is based in **Victoria, BC, Canada**{#victoria}.
~~~

Here's how to define an id on a custom span:

~~~
The [quick sly fox]{#quick_sly} jumped over the lazy dogs.
~~~

If you want to define an id on a span while also defining other attributes like
index entries, the `id:` syntax must be used in a full attribute list:

~~~
The [quick sly fox]{id: quick_sly, i: "Fox, Sly and Quick"} jumped over the lazy
dogs.
~~~

### Referencing an `id` With a Crosslink

Regardless of how you defined the id, you then link to it to create a crosslink.
To do this, you use the `#` character and the id in a link:

~~~
[link text](#some-id)
~~~

This syntax is intended to be reminiscent of HTML anchor tags.

Note that order of definition and use does not matter: crosslinks will work
regardless of whether the `id` is defined before or after the use of it.


```````````````````````````````` example
{id: id1}
This is a paragraph with an id of `id1`.

{#id2}
This is a paragraph with an id of `id2`.

This link to [Markua](#markua) is before the id definition.

The word Markua{id: markua} has an id of `markua`.

This link to [Markua](#markua) is after the id definition.

Leanpub is based in **Victoria, BC, Canada**{#victoria}.

The [quick sly fox]{#quick_sly} jumped over the lazy dogs.
.
<p id="id1">This is a paragraph with an id of <code>id1</code>.</p>
<p id="id2">This is a paragraph with an id of <code>id2</code>.</p>
<p>This link to <a href="#markua">Markua</a> is before the id definition.</p>
<p>The word <span id="markua">Markua</span> has an id of <code>markua</code>.</p>
<p>This link to <a href="#markua">Markua</a> is after the id definition.</p>
<p>Leanpub is based in <strong id="victoria">Victoria, BC, Canada</strong>.
<p>The <span id="quick_sly">quick sly fox</span> jumped over the lazy dogs.</p>
````````````````````````````````

### Rules for `id`s and Crosslinks

* If a Markua document contains duplicate `id` attribute values, the **first**
one is used and the subsequent ones are ignored. A Markua Processor should log
an error about duplicate `id`s.
* Crosslinks that reference an unused `id` may either be created as a (broken,
non-functional) link or be created as normal text (not a link) by a Markua
Processor. The Markua Processor should also log an error.

</div>


<div class="extension">

## Smart crosslinks (Markua extension)

Chapters, sections and figures with titles often have two useful properties for
writers:

1. A name which is often short and useful to reference.
2. A number, if numbering is turned on.

Whether the numbers exist is determined by the `number-chapters`, `number-parts`
and `number-figures` attributes .

In your writing, it's often desirable to refer to these figures from elsewhere
in your book. When creating such a reference, it's helpful to be able to
reference the title and number of the chapter, section or figure.

A> Adding a reference to the page number would also be helpful in print, but it
is obviously problematic in an ebook, since certain ebook formats have resizable
text and since the page displayed by PDF readers is often different than the
printed page number, because of front matter Roman numerals. So, Markua doesn't
provide any special magical syntax to refer to a page number, in order to
discourage it--if Markua did support a reference to a page number, then the next
logical step would be to only do so in certain output formats, and then writing
Markua text would feel like programming. Instead of this nightmare, a really
smart Markua Processor could hypothetically (and with the author's permission)
automatically add page number references to these references when producing a
print-ready PDF.

Here's how these references to titles and numbers work:

* `#t` is for "title"
* `#n` is for "number"
* `#d` is for "description" (e.g. "Figure", "Chapter", "Section")
* `#f` is for "full title"

So, for "Figure 8.2: Anatomy of a Squirrel", these are:

* `#t` is "Anatomy of a Squirrel"
* `#n` is "8.2"
* `#d` is "Figure"
* `#f` is "Figure 8.2: Anatomy of a Squirrel"

Note that in this example, "Anatomy of a Squirrel" was typed by the author,
whereas "Figure 8.2: " was generated by the Markua Processor. It does not
matter; both can be referenced.

Also, note that regardless of section level, sections referenced in `#d` or `#f`
are all called "Section" (not "Sub-Section", "Sub-Sub-Section", etc.)

The expectation is that `#f` will be used by authors who don't mind verbosity,
and #t and #n will be used by authors who prefer control and brevity. The #d is
for very lazy authors who like saving keystrokes and/or who don't know whether
their publisher will call the code samples "Listing", "Example" or some other
word and want to protect themselves against extra work.

The `code-sample-names`, `figure-names` and `table-names` settings control the
words used to name things.

Examples:

~~~
This is discussed in [section #n, #t](#crosslinks).

This is discussed in [#f](#crosslinks).

This is discussed in a [#d](#crosslinks) above.

See [chapter #n](#span-elements), which is the best chapter in this book.

This is in figure [#n](#fancy-diagram), arguably the fanciest diagram in this
document.
~~~

The only way to reference the title and numbers is in crosslinks. There's no
syntax to do so without creating a crosslink--a crosslink is more helpful, since
it is clickable, and adding another syntax simply to be less helpful to the
reader is a bad idea. Markua has enough syntax as it is.

Note that resources, chapters and sections all have implicit numbering. So, #n
always works even if numbering is off. However, you will confuse readers if you
refer to numbering they cannot see. Also, if numbering is off, the `#f` must not
include either the `#d` or `#n` parts: it will be "Anatomy of a Squirrel" not
"Figure 8.2: Anatomy of a Squirrel".

</div>

</div>



## Images

Syntax for images is like the syntax for links, with one
difference. Instead of [link text], we have an
[image description](@).  The rules for this are the
same as for [link text], except that (a) an
image description starts with `![` rather than `[`, and
(b) an image description may contain links.
An image description has inline elements
as its contents.  When an image is rendered to HTML,
this is standardly used as the image's `alt` attribute.

```````````````````````````````` example
![foo](/url "title")
.
<p><img src="/url" alt="foo" title="title" /></p>
````````````````````````````````


```````````````````````````````` example
![foo *bar*]

[foo *bar*]: train.jpg "train & tracks"
.
<p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>
````````````````````````````````


```````````````````````````````` example
![foo ![bar](/url)](/url2)
.
<p><img src="/url2" alt="foo bar" /></p>
````````````````````````````````


```````````````````````````````` example
![foo [bar](/url)](/url2)
.
<p><img src="/url2" alt="foo bar" /></p>
````````````````````````````````


Though this spec is concerned with parsing, not rendering, it is
recommended that in rendering to HTML, only the plain string content
of the [image description] be used.  Note that in
the above example, the alt attribute's value is `foo bar`, not `foo
[bar](/url)` or `foo <a href="/url">bar</a>`.  Only the plain string
content is rendered, without formatting.

```````````````````````````````` example
![foo *bar*][]

[foo *bar*]: train.jpg "train & tracks"
.
<p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>
````````````````````````````````


```````````````````````````````` example
![foo *bar*][foobar]

[FOOBAR]: train.jpg "train & tracks"
.
<p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>
````````````````````````````````


```````````````````````````````` example
![foo](train.jpg)
.
<p><img src="train.jpg" alt="foo" /></p>
````````````````````````````````


```````````````````````````````` example
My ![foo bar](/path/to/train.jpg  "title"   )
.
<p>My <img src="/path/to/train.jpg" alt="foo bar" title="title" /></p>
````````````````````````````````


```````````````````````````````` example
![foo](<url>)
.
<p><img src="url" alt="foo" /></p>
````````````````````````````````


```````````````````````````````` example
![](/url)
.
<p><img src="/url" alt="" /></p>
````````````````````````````````


Reference-style:

```````````````````````````````` example
![foo][bar]

[bar]: /url
.
<p><img src="/url" alt="foo" /></p>
````````````````````````````````


```````````````````````````````` example
![foo][bar]

[BAR]: /url
.
<p><img src="/url" alt="foo" /></p>
````````````````````````````````


Collapsed:

```````````````````````````````` example
![foo][]

[foo]: /url "title"
.
<p><img src="/url" alt="foo" title="title" /></p>
````````````````````````````````


```````````````````````````````` example
![*foo* bar][]

[*foo* bar]: /url "title"
.
<p><img src="/url" alt="foo bar" title="title" /></p>
````````````````````````````````


The labels are case-insensitive:

```````````````````````````````` example
![Foo][]

[foo]: /url "title"
.
<p><img src="/url" alt="Foo" title="title" /></p>
````````````````````````````````


As with reference links, [whitespace] is not allowed
between the two sets of brackets:

```````````````````````````````` example
![foo] 
[]

[foo]: /url "title"
.
<p><img src="/url" alt="foo" title="title" />
[]</p>
````````````````````````````````


Shortcut:

```````````````````````````````` example
![foo]

[foo]: /url "title"
.
<p><img src="/url" alt="foo" title="title" /></p>
````````````````````````````````


```````````````````````````````` example
![*foo* bar]

[*foo* bar]: /url "title"
.
<p><img src="/url" alt="foo bar" title="title" /></p>
````````````````````````````````


Note that link labels cannot contain unescaped brackets:

```````````````````````````````` example
![[foo]]

[[foo]]: /url "title"
.
<p>![[foo]]</p>
<p>[[foo]]: /url &quot;title&quot;</p>
````````````````````````````````


The link labels are case-insensitive:

```````````````````````````````` example
![Foo]

[foo]: /url "title"
.
<p><img src="/url" alt="Foo" title="title" /></p>
````````````````````````````````


If you just want a literal `!` followed by bracketed text, you can
backslash-escape the opening `[`:

```````````````````````````````` example
!\[foo]

[foo]: /url "title"
.
<p>![foo]</p>
````````````````````````````````


If you want a link after a literal `!`, backslash-escape the
`!`:

```````````````````````````````` example
\![foo]

[foo]: /url "title"
.
<p>!<a href="/url" title="title">foo</a></p>
````````````````````````````````



<div class="extension-chunk">

<div class="extension">

## Image resource attributes (Markua extension)

As shown in the Images section, the syntax to insert an image in Markua is
the identical to that used by CommonMark and GFM. (That section is unchanged
from the CommonMark spec.) It is, however, also consistent with the syntax that
is used for other resource types.

As discussed in the Resources section, Markua uses the image syntax for all
resource types. Markua also reinterprets images as being a resource. This is
important for the following reason:

Resources can have attribute lists.

Therefore, since images are resources in Markua, images can have attribute
lists. These attributes are used to do basic image formatting.

Most formatting in Markua is semantic--things like bold and italic, superscript,
etc. This formatting is part of the manuscript and should not be changed by any
publisher. The formatting for images, however, is some of the most non-semantic
formatting in Markua. It's stuff which can absolutely be changed with no effect
on the meaning of the Markua document. Specifically, images can have `width`,
`height`, `align` or `float` attributes, or can even be `fullbleed`.

These settings are so universal when applied to images that it would be too
dogmatic for Markua to insist that the only way to format images was to add a
`class` element, and then style the `class` of the image elsewhere. Markua is
pragmatic: by providing a few basic ways to format images, it enables authors
to make in-progress books look good enough to actually publish in-progress.

The following are the supported attributes for image resources, in
addition to the `class`, `format`, `title` and `type` attributes which all
resources support:

`align`
: The `align` can be `left`, `right` or `middle`. The default is `middle`.
Combined with `width` and `height`, this provides basic image formatting. When
`align` is specified, text goes above and below the image, but the image and
its surrounding whitespace occupies the entire width of the page. If you want
the text to actually wrap around the image, use `float` instead. In terms of
the specific values of `align`, a Markua Processor must interpret `left` as
"on the left side of the page", `right` as "on the right side of the page" and
`middle` as "in the middle of the content area of the page, respecting margins"
in all cases. Finally, note that `inside` and `outside` are not supported for
`align`.

`alt`
: The `alt` is the alt text, to be displayed when the image cannot be shown.
This is provided in the figure attribute list or in the square brackets before
the image, for local and web images. (Inline images don't have the square
brackets, so for an inline image, the alt text can only be provided via an
attribute.) If it is provided in both places, the one in the attribute list wins.

`float`
: The `float` can be `left`, `right`, `inside` or `outside`. The `left` and
`right` attribute values mean the same thing as they do with `align`. When
`float` is specified, text flows around the image. It is an error to specify
both `align` and `float`. Note that `middle` is not supported for `float`,
since Markua is not a good choice for the types of advanced layouts which flow
text on both sides of an image. For that, you should use something like
InDesign; this is why Markua Processors such as Leanpub can export InDesign
files. Also, note that `float` supports `inside` or `outside`, but `align`
does not. What a Markua Processor does with `inside` and `outside` is more
complex. A Markua Processor must interpret `inside` as "near the spine" and
`outside` as "away from the spine" in a print book. In an ebook, however, a
Markua Processor has some flexibility in terms of the meaning of `inside` and
`outside`: it can either interpret `inside` as "left" or it can interpret
`inside` as "left if the language is left-to-right, and right if the language
is right-to-left". Similarly, a Markua Processor can either interpret `outside`
as "right" or it can interpret `outside` as "right if the language is
left-to-right, and left if the language is right-to-left".

`fullbleed`
: `true` or `false`. The default is `false`. If `true`, the Markua Processor
should ensure that the image is the full size of the page, with no margins on
the page. If `false`, the `width`, `height` and `align` attributes are used
instead and margins are respected. A Markua Processor should do something
fancy and tasteful with the `title` attribute for a `fullbleed` image.

`height`
: The height of the image, in percentage of page content area height (respecting
margins). This is specified as a number (integer or float) between 1 and 100
followed by a percentage sign (%).

`width`
: The width of the image, in percentage of page content area width (respecting
margins). This is specified as an number (integer or float) between 1 and 100
followed by a percentage sign (%).

Note that if only one of `width` and `height` are specified, the Markua
Processor should scale the image proportionally if possible (again, respecting
margins). If both `width` and `height` are specified, the Markua Processor
should scale the image accordingly, ignoring the aspect ratio. (So, it's almost
always a bad idea to specify both `width` and `height`.)

```````````````````````````````` example
![foo](pie.jpg)

{alt: "foo"}
![](pie.jpg)

{alt: "foo"}
![clobbered by alt foo](pie.jpg)
.
<p><img src="pie.jpg" alt="foo" /></p>
<p><img src="pie.jpg" alt="foo" /></p>
<p><img src="pie.jpg" alt="foo" /></p>
````````````````````````````````
 
```````````````````````````````` example
![foo](pie.jpg "bar")

{alt: "foo"}
![](pie.jpg "bar")

{alt: "foo"}
![clobbered by alt foo](pie.jpg "bar")
.
<p><img src="pie.jpg" alt="foo" title="bar" /></p>
<p><img src="pie.jpg" alt="foo" title="bar" /></p>
<p><img src="pie.jpg" alt="foo" title="bar" /></p>
````````````````````````````````

Since the other attributes are all presentational, there is no formal
specification of the HTML which must result. So, here are some examples of usage
instead, involving a very real and very delicious apple pie:

```
{fullbleed: true}
![a half-eaten apple pie](pie.jpg "It Tasted Even Better")

{width: 100%}
![a half-eaten apple pie](pie.jpg "It Tasted Even Better")

{width: "100%", height: '30%'}
![a half-eaten apple pie](pie.jpg "It Tasted Even Better")

{width: 50%, float: left}
![a half-eaten apple pie](pie.jpg "It Tasted Even Better")

{width: 50%, align: middle}
![a half-eaten apple pie](pie.jpg "It Tasted Even Better")
```

</div>


<div class="extension">

## Inline SVG images (Markua extension)

Local and web resource locations are supported for any type of image; inline
resource locations are supported for SVG images only.

To add an inline SVG image, you create a fenced code block, and then you
indicate that instead of code, you are inserting a resource of type image
and of format SVG.

There are two ways to do this.  Here's the verbose way:

~~~
{type: image, format: svg}
```
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

Here's the syntactic sugar way:

~~~
```!
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

The `!` after the opening code fence means that what follows is an SVG image,
and that it should be rendered as an image, not displayed as the XML source of
the SVG image.

Inline SVG images support all the normal image resource attributes:

~~~
{alt: "a blue circle", title: "Earth From Space (Simplified)"}
```!
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

You can use them with the verbose way as well:

~~~
{type: image, format: svg, alt: "foo", title: "bar"}
```
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

Note that when you are writing about SVG and want to display the SVG text, what
you are really doing is creating a code resource. This is discussed below.

### Writing about SVG

If you want to write about the SVG format, and show the actual SVG source
(instead of the image produced), it needs to be of a `format` of `code`, not
`image`.

Now, you can just be lazy and not provide `format` or `type` attributes at all,
since guessing when neither is present always produces a type of `code`.

~~~
```
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

However, you can also just specify both, either this way...

~~~
{type: code}
```svg
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

...or this way:

~~~
{type: code, format: svg}
```
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

...or this way:

~~~

```svg
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

Or you can just specify xml, since SVG is xml:

~~~
```xml
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

Or you can just specify text, if you don't want syntax highlighting:

~~~
```text
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
```
~~~

Heck, you can even use tildes to do that:

```
~~~
<svg width="20" height="20">
  <circle cx="10" cy="10" r="9" fill="blue"/>
</svg>
~~~
```

</div>


<div class="extension">

## Image locations and embedding (Markua extension)

Note that regardless of the image location, a Markua Processor can handle images
in the following ways:

1. Embed the image in the output format (such as a PDF or EPUB file)
2. Place the image at some URL on the web, and load it from a URL in all cases

This is true regardless of the location of the source image (local, web or
inline). The location of the image source has no effect on the location of the
image in the output.

For example, a web image does not need to be loaded from the web every time; it
can be inlined in the output by the Markua Processor.

This is also true for all of the types of images which are supported in Markua:
GIF, PNG, JPEG, SVG and zipped SVG.

</div>


<div class="extension">

## Video resources (Markua extension)

The syntax to insert a video is the same compact and consistent syntax that is
used for any resource. Local and web resource locations are supported for both
video formats; inline resource locations for video are obviously not supported.

Unlike images where many images will accompany the manuscript itself, with
video it's expected that authors will be uploading their videos to sites such
as YouTube first, and then reusing these videos in the contents of their Markua
books. So, while video can be local or web video, web video will be much more
prominent than web images in a Markua book.

Furthermore, unlike with web images where the format (and thus the type) are
typically discoverable from the file extension in the URL, with web video it's
usually not. So, for web videos, there will typically be a `{type: video}`
attribute list at a minimum. That said, if the type and format are not
specified and the resource is a web resource, the Markua Processor may use the
domain to decide what type of resource to assume. So YouTube videos may just
work in some Markua Processors, like Leanpub, without specifying either the
`type` or `format`.

The following types of videos are supported in Markua: MP4 and WebM.

We will discuss the supported and the default attributes for videos, and then
show examples of videos being inserted for both local and web videos.

### Supported Attributes for Video

The following are the supported attributes for video resources, in addition to
the `class`, `format`, `title` and `type` attributes which all resources
support. Note that the `class`, `height`, `title` and `width` attributes apply
to the `poster` image for the video--not to the video itself during playback.

`align`
: The `align` can be `left`, `right` or `middle`. This applies to the `poster`
image for the video, and works just like it does with images.

`embed`
: true or false. If true, then you can actually embed the video file or
reference it and play it. If false, then it's from a site like YouTube which
disallows this. In this case, this should function like a link to external web
page, but open an appropriate app (e.g. the YouTube app) instead of a browser.
A Markua Processor can be smart about defaults, and parse the URL to set the
value of the `embed` attribute.

`float`
: The `float` can be `left`, `right`, `inside` or `outside`.  This applies to
the `poster` image for the video, and works just like it does with images. It is
an error to specify both `align` and `float`.

`height`
: This applies to the `poster` image for the video, and works just like it does
with images.

`poster`
: The `poster` is the URL or path to an image which should be shown instead of
the video before the video is played. If a Markua Processor is outputting some
format where it is known that video resources are not supported, it must choose
the poster to use as a replacement for the video. Books are not just
ebooks--books can also be printed on the fibers of trees that have been chopped
down ("paper"), producing something called a "book". These "books", whether
they are bound in a sturdy fashion ("hardcover books") or a flimsy fashion
("paperback books"), have one thing in common with respect to embedded video:
they do not support it. Finally, if a Markua Processor is embedding a web video
from a web video service (e.g. YouTube) which has a known algorithm for the
location of the poster images for its videos, the Markua Processor may choose
to use that poster image if a `poster` attribute is not explicitly specified.
However, if a poster attribute is specified, then it must be used by the Markua
Processor.

`poster-format`
: The format of the `poster` image, if it exists. If this attribute is not
specified, the format of the `poster` is inferred from the `poster` image file
extension. This attribute needs to exist only to support `poster` images which
do not have file extensions.

`transcript`
: The URL or path to a transcript of the video, which should be shown or
dictated to people who cannot view video. This helps people with visual
disabilities view course material, and helps with ADA compliance. For example,
what Leanpub does with a `transcript` is as follows: a URL is linked to in the
title (but in a way which does not affect the Table of Contents), and a path is
assumed to be a path to a Markua file which is then used to produce a web page
at a public URL, which then is also linked to in the title in a way which does
not affect the Table of Contents. With the Markua files for transcripts, Leanpub
only supports certain resource types to be included in the transcript files
themselves. Specifically, images, video, audio are not supported, but code,
poetry, math and tables are supported. When Leanpub generates a transcript, the
URLs are publicly accessible but obscure. Identical transcripts should not make
duplicate transcript files on the web, and using a new UUID every time would
violate this. However, not changing the transcript URL when its content changed
could lead to bad outcomes. So, the URL of a transcript on the web should be
scoped to the book and affected both by its filename and its content. What
Leanpub does is: (filename minus extension minus period plus hyphen plus the
SHA hash).html. Including the filename eliminates collisions if filenames are
unique but the hashes are not.

`width`
: This applies to the `poster` image for the video, and works just like it does
with images.

In the following sections, please note that while the examples are shown with
an HTML mapping, please note that a Markua Processor has complete flexibility
over how it handles the location of video resources and their display.

### Local Video

```````````````````````````````` example
Here's a paragraph before the figure.

![](pie_eating_contest.webm "A Piece of Pie")

Here's a paragraph after the figure.
.
<p>Here's a paragraph before the figure.</p>
<div class="figure">
<video src="pie_eating_contest.webm"/>
<p class="title">A Piece of Pie</p>
</div>
<p>Here's a paragraph after the figure.</p>
````````````````````````````````

### Web Video

```````````````````````````````` example
Here's a paragraph before the figure.

{type: video, poster: http://img.youtube.com/vi/VOCYL-FNbr0/mqdefault.jpg}
![](https://www.youtube.com/watch?t=105&v=VOCYL-FNbr0 "Introducing Markua")

Here's a paragraph after the figure.
.
<p>Here's a paragraph before the figure.</p>
<div class="figure">
<video src="https://www.youtube.com/watch?t=105&v=VOCYL-FNbr0"
poster="http://img.youtube.com/vi/VOCYL-FNbr0/mqdefault.jpg"/>
<p class="title">Introducing Markua</p>
</div>
<p>Here's a paragraph after the figure.</p>
````````````````````````````````

</div>


<div class="extension">

## Audio resources (Markua extension)

The syntax to insert an audio resource is the same compact and consistent syntax
that is used for any resource. Local and web resource locations are supported
for both audio formats; inline resource locations for audio are obviously not
supported.

Just as with video, the audio support in ebooks and on the web is more varied
than for images. With audio, there are MP3, AAC, Ogg and WAV formats all in
widespread use, and there are a number of other formats with supporters. It's
entirely likely that many ebook readers won't support any of them.

Unlike images where many images will accompany the manuscript itself, with
audio it's expected that authors will be uploading their audio files to various
sites first, and then reusing these files in the contents of their Markua
books. So, while audio can be local or web audio, web audio will be much more
prominent than web images in a Markua book.

Furthermore, unlike with web images where the format (and thus the type) are
typically discoverable from the file extension in the URL, with web audio it's
usually not. So, for web audio files, there will typically be a `{type: audio}`
attribute list at a minimum. That said, if the type and format are not
specified and the resource is a web resource, the Markua Processor may use the
domain to decide what type of resource to assume. So YouTube audios may just
work in some Markua Processors, like Leanpub, without specifying either the
`type` or `format`.

The following types of audio resources are supported in Markua: MP3, AAC, WAV
and Ogg Vorbis.

We will discuss the supported and the default attributes for audio files, and
then show examples of audio being inserted for both local and web audio files.

### Supported Attributes for Audio

The following are the supported attributes for audio resources, in addition to the `class`, `format`, `title` and `type` attributes which all resources support.

`transcript`
: The URL or path to a transcript of the audio, which should be shown to people
who cannot hear audio. This helps people with auditory disabilities view course
material, and helps with ADA compliance. Transcripts should be produced and
handled in an identical way to `video` resources. For example, Leanpub does
this. See the Video resources section above for more information.

In the following sections, please note that while the examples are shown with
an HTML mapping, please note that a Markua Processor has complete flexibility
over how it handles the location of video resources and their display.


### Local Audio

```````````````````````````````` example
The full version of the talk is here:

![](talk.mp3 "Full Talk")
.
<p>The full version of the talk is here:</p>
<div class="figure">
<audio src="resources/talk.mp3"/>
<p class="title">Full Talk</p>
</div>
````````````````````````````````

### Web Audio

```````````````````````````````` example
The full version of the talk is here:

![](http://markua.com/talk.mp3 "Full Talk")
.
<p>The full version of the talk is here:</p>
<div class="figure">
<audio src="http://markua.com/talk.mp3"/>
<p class="title">Full Talk</p>
</div>
````````````````````````````````

</div>


<div class="extension">

## Math (Markua extension)

Math can be a local, web or inline resource, just like any other resource, and
the same resource syntax applies to code as to all other resources.

Markua does not specify how math is output in HTML. It can be an image, or it
can use something like MathJax. If MathJax is available, it is recommended for a
Markua Processor to convert AsciiMath into MathML, and then use MathJax to
format it.

There are two formats of math resources supported by Markua:

1. LaTeX math (`latexmath` or `$`)
2. AsciiMath (`asciimath` or `@`)

### Supported Attributes for Math

The following is the supported attribute for math resources, in addition to the
`class`, `format`, `title` and `type` attributes which all resources support:

`alt`
: The `alt` is the alt text, to be displayed when the mathematical equations
cannot be shown. The default alt text for math is "math". This can be provided
in the figure attribute list. This is primarily intended for Markua Processors
that output math as images; there are no output requirements for the alt text.
This attribute functions as it does for images. (In fact, a Markua Processor may
choose to transform the math into an image, for maximum ebook reader
compatibility.)

Note that for math, the `format` is the name of the syntax used to write the
mathematical equations. There are two special types of `format` for math baked
into Markua: `latexmath` for LaTeX math and `asciimath` for AsciiMath. If a
Markua Processor encounters one of these formats, it must assume the `type` of
the resource is `math`, not `code`.

### Local Math Resources

Local math resources can be inserted as a figure.

~~~
Here's a paragraph before the figure.

{format: latexmath}
![too large to fit in the alt text](fermat-proof.tex "Proof of Fermat's Last Theorem")

Here's a paragraph after the figure.
~~~

The alt text can also be set with an attribute list:

~~~
Here's a paragraph before the figure.

{format: latexmath, alt: "too large to fit in the alt text"}
![](fermat-proof.tex "Proof of Fermat's Last Theorem")

Here's a paragraph after the figure.
~~~

### Web Math Resources

This is identical to how local math resources work, including the significance
of file extensions. The only difference is that the files are on the web.

~~~
Here's a paragraph before the figure.

{format: latexmath}
![too large to fit in the alt text](http://markua.com/fermat-proof.tex "Proof of Fermat's Last Theorem")

Here's a paragraph after the figure.
~~~

The alt text can also be set with an attribute list:

~~~
Here's a paragraph before the figure.

{format: latexmath}{alt: "too large to fit in the alt text"}
![](http://markua.com/fermat-proof.tex "Proof of Fermat's Last Theorem")

Here's a paragraph after the figure.
~~~

### Inline Math Resources

Inline math resources are the most flexible way to insert math. They are the only
way to insert math as a span resource, and the most straightforward way to add
short math examples as figures. LaTeX math and AsciiMath can be inserted inline
as a span or figure.

#### Span

Being able to insert a math resource as a span is important, as it lets you write
things like one of the kinematic equations `d = v_i t + \frac{1}{2} a t^2`$ inside
sentences. This can be done with LaTeX math or AsciiMath.

To insert math as inline math, use a `$` after closing backtick for LaTeX math,
an `@` after the closing backtick for AsciiMath, or an attribute list specifying
a `format` of `latexmath` or `asciimath`. If none of these is done, the content
of the backticks is treated as code and is output verbatim as monospaced text.

##### LaTeX math span

There is syntactic sugar for LaTeX math which is inserted as a span, using the
`$` character after the closing backtick:

~~~
Here's one of the kinematic equations `d = v_i t + \frac{1}{2} a t^2`$ inside a
sentence.
~~~

The `$` character indicates the inline resource is LaTeX math.

If you don't like syntactic sugar, you can also use `{format: latexmath}` or
`{type: math, format: latexmath}` after the inline span resource:

~~~
Here's one of the kinematic equations
`d = v_i t + \frac{1}{2} a t^2`{format: latexmath}
inside a sentence.
~~~

##### AsciiMath span

[AsciiMath](http://asciimath.org/) is a way of producing simple MathML equations,
using about 1% of the typing. It's more terse than LaTeX math.

There is syntactic sugar for AsciiMath which is inserted as a span, using the `@`
character after the closing backtick:

~~~
Here's one of the kinematic equations `d = v_i t + 1/2 at^2`@ inside a sentence.
~~~

The `@` character indicates the inline resource is AsciiMath.

If you don't like syntactic sugar, you can also use `{format: asciimath}` or
`{type: math, format: asciimath}` after the inline span resource:

~~~
Here's one of the kinematic equations `d = v_i t + 1/2 at^2`{format: asciimath}
inside a sentence.
~~~

#### Figure

LaTeX math and AsciiMath can be inserted inline as a figure.

* LaTeX math can be inserted by specifying either `latexmath` or `$` after three
  backticks, or by specifying an attribute list of `{format: latexmath}`.
* AsciiMath can be inserted by specifying either `asciimath` or `@` after three
  backticks, or by specifying an attribute list of `{format: asciimath}`.

Both let you produce mathematical equations like this:

```$
\left|\sum_{i=1}^n a_ib_i\right|
\le
\left(\sum_{i=1}^n a_i^2\right)^{1/2}
\left(\sum_{i=1}^n b_i^2\right)^{1/2}
```

##### LaTeX math figures

Here's how you do this using LaTeX math...

Here's the version with the syntactic sugar for the format after the backticks:

~~~
Here's a paragraph before the figure.

```$
\left|\sum_{i=1}^n a_ib_i\right|
\le
\left(\sum_{i=1}^n a_i^2\right)^{1/2}
\left(\sum_{i=1}^n b_i^2\right)^{1/2}
```

Here's a paragraph after the figure.
~~~

Here's the same thing, with the full format after the backticks:

~~~
Here's a paragraph before the figure.

```latexmath
\left|\sum_{i=1}^n a_ib_i\right|
\le
\left(\sum_{i=1}^n a_i^2\right)^{1/2}
\left(\sum_{i=1}^n b_i^2\right)^{1/2}
```

Here's a paragraph after the figure.
~~~

Here's the same thing again, with a full attribute list:

~~~
Here's a paragraph before the figure.

{format: latexmath}
```
\left|\sum_{i=1}^n a_ib_i\right|
\le
\left(\sum_{i=1}^n a_i^2\right)^{1/2}
\left(\sum_{i=1}^n b_i^2\right)^{1/2}
```

Here's a paragraph after the figure.
~~~

##### AsciiMath figures

Here's how you do this using AsciiMath...

Here's the version with the syntactic sugar for the format after the backticks:

~~~
Here's a paragraph before the figure.

```@
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```

Here's a paragraph after the figure.
~~~

Here's the same thing, with the full format after the backticks:

~~~
Here's a paragraph before the figure.

```asciimath
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```

Here's a paragraph after the figure.
~~~

Here's the same thing again, with a full attribute list:

~~~
Here's a paragraph before the figure.

{format: asciimath}
```
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```

Here's a paragraph after the figure.
~~~

If you wonder why I'm a fan of AsciiMath: I actually got that right on the first
try at the [AsciiMath website](http://asciimath.org/).

Note that when you are writing about AsciiMath and want to display the AsciiMath
text, what you are really doing is creating a code resource. This is essentially
identical to what was shown earlier in writing about SVG images. It's also shown
below.

### Writing about Math

If you want to write about math, and show the actual code (instead of the
formatted output), it needs to be of a `format` of `code`, not `math`.

Now, you can just be lazy and not provide `format` or `type` attributes at all,
since guessing when neither is present always produces a type of `code`.

This will be output as code:

~~~
```
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```
~~~

This isn't just true for AsciiMath code; it's true for any math. For example,
this will be output as code, since there's no `$` or `latexmath` format specifier
to indicate that it is LaTeX math:

~~~
```
\left|\sum_{i=1}^n a_ib_i\right|
\le
\left(\sum_{i=1}^n a_i^2\right)^{1/2}
\left(\sum_{i=1}^n b_i^2\right)^{1/2}
```
~~~

However, you can also specify the type of `code`, to be explicit:

~~~
{type: code}
```
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```
~~~

Since specifying a type overrides the type inferred by the format, you can even
specify the format of the math being used, while still keeping it code:

~~~
{type: code, format: asciimath}
```
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```
~~~

This also works with the syntactic sugar with the full format name:

~~~
{type: code}
```asciimath
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```
~~~

This also works with the syntactic sugar with the format shortcut:

~~~
{type: code}
```@
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```
~~~

Now, chances are a Markua Processor will not be doing syntax highlighting on
AsciiMath.

If you want to ensure that no syntax highlighting is done, you can just specify
`text`:

~~~
```text
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
```
~~~

Heck, you can even use tildes, since this defaults to `text` not `guess`:

```
~~~
abs(sum_(i=1)^n a_i b_i) <= (sum_(i=1)^n a_i^2)^(1/2) (sum_(i=1)^n b_i^2)^(1/2)
~~~
```

</div>

</div>


## Autolinks

[Autolink](@)s are absolute URIs and email addresses inside
`<` and `>`. They are parsed as links, with the URL or email address
as the link label.

A [URI autolink](@) consists of `<`, followed by an
[absolute URI] followed by `>`.  It is parsed as
a link to the URI, with the URI as the link's label.

An [absolute URI](@),
for these purposes, consists of a [scheme] followed by a colon (`:`)
followed by zero or more characters other than ASCII
[whitespace] and control characters, `<`, and `>`.  If
the URI includes these characters, they must be percent-encoded
(e.g. `%20` for a space).

For purposes of this spec, a [scheme](@) is any sequence
of 2--32 characters beginning with an ASCII letter and followed
by any combination of ASCII letters, digits, or the symbols plus
("+"), period ("."), or hyphen ("-").

Here are some valid autolinks:

```````````````````````````````` example
<http://foo.bar.baz>
.
<p><a href="http://foo.bar.baz">http://foo.bar.baz</a></p>
````````````````````````````````


```````````````````````````````` example
<http://foo.bar.baz/test?q=hello&id=22&boolean>
.
<p><a href="http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean">http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean</a></p>
````````````````````````````````


```````````````````````````````` example
<irc://foo.bar:2233/baz>
.
<p><a href="irc://foo.bar:2233/baz">irc://foo.bar:2233/baz</a></p>
````````````````````````````````


Uppercase is also fine:

```````````````````````````````` example
<MAILTO:FOO@BAR.BAZ>
.
<p><a href="MAILTO:FOO@BAR.BAZ">MAILTO:FOO@BAR.BAZ</a></p>
````````````````````````````````


Note that many strings that count as [absolute URIs] for
purposes of this spec are not valid URIs, because their
schemes are not registered or because of other problems
with their syntax:

```````````````````````````````` example
<a+b+c:d>
.
<p><a href="a+b+c:d">a+b+c:d</a></p>
````````````````````````````````


```````````````````````````````` example
<made-up-scheme://foo,bar>
.
<p><a href="made-up-scheme://foo,bar">made-up-scheme://foo,bar</a></p>
````````````````````````````````


```````````````````````````````` example
<http://../>
.
<p><a href="http://../">http://../</a></p>
````````````````````````````````


```````````````````````````````` example
<localhost:5001/foo>
.
<p><a href="localhost:5001/foo">localhost:5001/foo</a></p>
````````````````````````````````


Spaces are not allowed in autolinks:

```````````````````````````````` example
<http://foo.bar/baz bim>
.
<p>&lt;http://foo.bar/baz bim&gt;</p>
````````````````````````````````


Backslash-escapes do not work inside autolinks:

```````````````````````````````` example
<http://example.com/\[\>
.
<p><a href="http://example.com/%5C%5B%5C">http://example.com/\[\</a></p>
````````````````````````````````


An [email autolink](@)
consists of `<`, followed by an [email address],
followed by `>`.  The link's label is the email address,
and the URL is `mailto:` followed by the email address.

An [email address](@),
for these purposes, is anything that matches
the [non-normative regex from the HTML5
spec](https://html.spec.whatwg.org/multipage/forms.html#e-mail-state-(type=email)):

    /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?
    (?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/

Examples of email autolinks:

```````````````````````````````` example
<foo@bar.example.com>
.
<p><a href="mailto:foo@bar.example.com">foo@bar.example.com</a></p>
````````````````````````````````


```````````````````````````````` example
<foo+special@Bar.baz-bar0.com>
.
<p><a href="mailto:foo+special@Bar.baz-bar0.com">foo+special@Bar.baz-bar0.com</a></p>
````````````````````````````````


Backslash-escapes do not work inside email autolinks:

```````````````````````````````` example
<foo\+@bar.example.com>
.
<p>&lt;foo+@bar.example.com&gt;</p>
````````````````````````````````


These are not autolinks:

```````````````````````````````` example
<>
.
<p>&lt;&gt;</p>
````````````````````````````````


```````````````````````````````` example
< http://foo.bar >
.
<p>&lt; http://foo.bar &gt;</p>
````````````````````````````````


```````````````````````````````` example
<m:abc>
.
<p>&lt;m:abc&gt;</p>
````````````````````````````````


```````````````````````````````` example
<foo.bar.baz>
.
<p>&lt;foo.bar.baz&gt;</p>
````````````````````````````````


```````````````````````````````` example
http://example.com
.
<p>http://example.com</p>
````````````````````````````````


```````````````````````````````` example
foo@bar.example.com
.
<p>foo@bar.example.com</p>
````````````````````````````````


<div class="extension-chunk">

<div class="extension">

## Autolinks (GFM extension, identical)

Markua enables the `autolink` extension, where autolinks will be recognised in a
greater number of conditions.

[Autolink]s can also be constructed without requiring the use of `<` and to `>`
to delimit them, although they will be recognized under a smaller set of
circumstances.  All such recognized autolinks can only come at the beginning of
a line, after whitespace, or any of the delimiting characters `*`, `_`, `~`,
and `(`.

An [extended www autolink](@) will be recognized
when the text `www.` is found followed by a [valid domain].
A [valid domain](@) consists of segments
of alphanumeric characters, underscores (`_`) and hyphens (`-`)
separated by periods (`.`).
There must be at least one period,
and no underscores may be present in the last two segments of the domain.

The scheme `http` will be inserted automatically:

```````````````````````````````` example autolink
www.commonmark.org
.
<p><a href="http://www.commonmark.org">www.commonmark.org</a></p>
````````````````````````````````

After a [valid domain], zero or more non-space non-`<` characters may follow:

```````````````````````````````` example autolink
Visit www.commonmark.org/help for more information.
.
<p>Visit <a href="http://www.commonmark.org/help">www.commonmark.org/help</a> for more information.</p>
````````````````````````````````

We then apply [extended autolink path validation](@) as follows:

Trailing punctuation (specifically, `?`, `!`, `.`, `,`, `:`, `*`, `_`, and `~`)
will not be considered part of the autolink, though they may be included in the
interior of the link:

```````````````````````````````` example autolink
Visit www.commonmark.org.

Visit www.commonmark.org/a.b.
.
<p>Visit <a href="http://www.commonmark.org">www.commonmark.org</a>.</p>
<p>Visit <a href="http://www.commonmark.org/a.b">www.commonmark.org/a.b</a>.</p>
````````````````````````````````

When an autolink ends in `)`, we scan the entire autolink for the total number
of parentheses.  If there is a greater number of closing parentheses than
opening ones, we don't consider the unmatched trailing parentheses part of the
autolink, in order to facilitate including an autolink inside a parenthesis:

```````````````````````````````` example autolink
www.google.com/search?q=Markup+(business)

www.google.com/search?q=Markup+(business)))

(www.google.com/search?q=Markup+(business))

(www.google.com/search?q=Markup+(business)
.
<p><a href="http://www.google.com/search?q=Markup+(business)">www.google.com/search?q=Markup+(business)</a></p>
<p><a href="http://www.google.com/search?q=Markup+(business)">www.google.com/search?q=Markup+(business)</a>))</p>
<p>(<a href="http://www.google.com/search?q=Markup+(business)">www.google.com/search?q=Markup+(business)</a>)</p>
<p>(<a href="http://www.google.com/search?q=Markup+(business)">www.google.com/search?q=Markup+(business)</a></p>
````````````````````````````````

This check is only done when the link ends in a closing parentheses `)`, so if
the only parentheses are in the interior of the autolink, no special rules are
applied:

```````````````````````````````` example autolink
www.google.com/search?q=(business))+ok
.
<p><a href="http://www.google.com/search?q=(business))+ok">www.google.com/search?q=(business))+ok</a></p>
````````````````````````````````

If an autolink ends in a semicolon (`;`), we check to see if it appears to
resemble an [entity reference][entity references]; if the preceding text is `&`
followed by one or more alphanumeric characters.  If so, it is excluded from
the autolink:

```````````````````````````````` example autolink
www.google.com/search?q=commonmark&hl=en

www.google.com/search?q=commonmark&hl;
.
<p><a href="http://www.google.com/search?q=commonmark&amp;hl=en">www.google.com/search?q=commonmark&amp;hl=en</a></p>
<p><a href="http://www.google.com/search?q=commonmark">www.google.com/search?q=commonmark</a>&amp;hl;</p>
````````````````````````````````

`<` immediately ends an autolink.

```````````````````````````````` example autolink
www.commonmark.org/he<lp
.
<p><a href="http://www.commonmark.org/he">www.commonmark.org/he</a>&lt;lp</p>
````````````````````````````````

An [extended url autolink](@) will be recognised when one of the schemes
`http://`, `https://`, or `ftp://`, followed by a [valid domain], then zero or
more non-space non-`<` characters according to
[extended autolink path validation]:

```````````````````````````````` example autolink
http://commonmark.org

(Visit https://encrypted.google.com/search?q=Markup+(business))

Anonymous FTP is available at ftp://foo.bar.baz.
.
<p><a href="http://commonmark.org">http://commonmark.org</a></p>
<p>(Visit <a href="https://encrypted.google.com/search?q=Markup+(business)">https://encrypted.google.com/search?q=Markup+(business)</a>)</p>
<p>Anonymous FTP is available at <a href="ftp://foo.bar.baz">ftp://foo.bar.baz</a>.</p>
````````````````````````````````


An [extended email autolink](@) will be recognised when an email address is
recognised within any text node.  Email addresses are recognised according to
the following rules:

* One ore more characters which are alphanumeric, or `.`, `-`, `_`, or `+`.
* An `@` symbol.
* One or more characters which are alphanumeric, or `-` or `_`,
  separated by periods (`.`).
  There must be at least one period.
  The last character must not be one of `-` or `_`.

The scheme `mailto:` will automatically be added to the generated link:

```````````````````````````````` example autolink
foo@bar.baz
.
<p><a href="mailto:foo@bar.baz">foo@bar.baz</a></p>
````````````````````````````````

`+` can occur before the `@`, but not after.

```````````````````````````````` example autolink
hello@mail+xyz.example isn't valid, but hello+xyz@mail.example is.
.
<p>hello@mail+xyz.example isn't valid, but <a href="mailto:hello+xyz@mail.example">hello+xyz@mail.example</a> is.</p>
````````````````````````````````

`.`, `-`, and `_` can occur on both sides of the `@`, but only `.` may occur at
the end of the email address, in which case it will not be considered part of
the address:

```````````````````````````````` example autolink
a.b-c_d@a.b

a.b-c_d@a.b.

a.b-c_d@a.b-

a.b-c_d@a.b_
.
<p><a href="mailto:a.b-c_d@a.b">a.b-c_d@a.b</a></p>
<p><a href="mailto:a.b-c_d@a.b">a.b-c_d@a.b</a>.</p>
<p>a.b-c_d@a.b-</p>
<p>a.b-c_d@a.b_</p>
````````````````````````````````

</div>

</div>


## Raw HTML

Text between `<` and `>` that looks like an HTML tag is parsed as a
raw HTML tag and will be rendered in HTML without escaping.
Tag and attribute names are not limited to current HTML tags,
so custom tags (and even, say, DocBook tags) may be used.

Here is the grammar for tags:

A [tag name](@) consists of an ASCII letter
followed by zero or more ASCII letters, digits, or
hyphens (`-`).

An [attribute](@) consists of [whitespace],
an [attribute name], and an optional
[attribute value specification].

An [attribute name](@)
consists of an ASCII letter, `_`, or `:`, followed by zero or more ASCII
letters, digits, `_`, `.`, `:`, or `-`.  (Note:  This is the XML
specification restricted to ASCII.  HTML5 is laxer.)

An [attribute value specification](@)
consists of optional [whitespace],
a `=` character, optional [whitespace], and an [attribute
value].

An [attribute value](@)
consists of an [unquoted attribute value],
a [single-quoted attribute value], or a [double-quoted attribute value].

An [unquoted attribute value](@)
is a nonempty string of characters not
including [whitespace], `"`, `'`, `=`, `<`, `>`, or `` ` ``.

A [single-quoted attribute value](@)
consists of `'`, zero or more
characters not including `'`, and a final `'`.

A [double-quoted attribute value](@)
consists of `"`, zero or more
characters not including `"`, and a final `"`.

An [open tag](@) consists of a `<` character, a [tag name],
zero or more [attributes], optional [whitespace], an optional `/`
character, and a `>` character.

A [closing tag](@) consists of the string `</`, a
[tag name], optional [whitespace], and the character `>`.

An [HTML comment](@) consists of `<!--` + *text* + `-->`,
where *text* does not start with `>` or `->`, does not end with `-`,
and does not contain `--`.  (See the
[HTML5 spec](http://www.w3.org/TR/html5/syntax.html#comments).)

A [processing instruction](@)
consists of the string `<?`, a string
of characters not including the string `?>`, and the string
`?>`.

A [declaration](@) consists of the
string `<!`, a name consisting of one or more uppercase ASCII letters,
[whitespace], a string of characters not including the
character `>`, and the character `>`.

A [CDATA section](@) consists of
the string `<![CDATA[`, a string of characters not including the string
`]]>`, and the string `]]>`.

An [HTML tag](@) consists of an [open tag], a [closing tag],
an [HTML comment], a [processing instruction], a [declaration],
or a [CDATA section].

Here are some simple open tags:

```````````````````````````````` example
<a><bab><c2c>
.
<p><a><bab><c2c></p>
````````````````````````````````


Empty elements:

```````````````````````````````` example
<a/><b2/>
.
<p><a/><b2/></p>
````````````````````````````````


[Whitespace] is allowed:

```````````````````````````````` example
<a  /><b2
data="foo" >
.
<p><a  /><b2
data="foo" ></p>
````````````````````````````````


With attributes:

```````````````````````````````` example
<a foo="bar" bam = 'baz <em>"</em>'
_boolean zoop:33=zoop:33 />
.
<p><a foo="bar" bam = 'baz <em>"</em>'
_boolean zoop:33=zoop:33 /></p>
````````````````````````````````


Custom tag names can be used:

```````````````````````````````` example
Foo <responsive-image src="foo.jpg" />
.
<p>Foo <responsive-image src="foo.jpg" /></p>
````````````````````````````````


Illegal tag names, not parsed as HTML:

```````````````````````````````` example
<33> <__>
.
<p>&lt;33&gt; &lt;__&gt;</p>
````````````````````````````````


Illegal attribute names:

```````````````````````````````` example
<a h*#ref="hi">
.
<p>&lt;a h*#ref=&quot;hi&quot;&gt;</p>
````````````````````````````````


Illegal attribute values:

```````````````````````````````` example
<a href="hi'> <a href=hi'>
.
<p>&lt;a href=&quot;hi'&gt; &lt;a href=hi'&gt;</p>
````````````````````````````````


Illegal [whitespace]:

```````````````````````````````` example
< a><
foo><bar/ >
<foo bar=baz
bim!bop />
.
<p>&lt; a&gt;&lt;
foo&gt;&lt;bar/ &gt;
&lt;foo bar=baz
bim!bop /&gt;</p>
````````````````````````````````


Missing [whitespace]:

```````````````````````````````` example
<a href='bar'title=title>
.
<p>&lt;a href='bar'title=title&gt;</p>
````````````````````````````````


Closing tags:

```````````````````````````````` example
</a></foo >
.
<p></a></foo ></p>
````````````````````````````````


Illegal attributes in closing tag:

```````````````````````````````` example
</a href="foo">
.
<p>&lt;/a href=&quot;foo&quot;&gt;</p>
````````````````````````````````


Comments:

```````````````````````````````` example
foo <!-- this is a
comment - with hyphen -->
.
<p>foo <!-- this is a
comment - with hyphen --></p>
````````````````````````````````


```````````````````````````````` example
foo <!-- not a comment -- two hyphens -->
.
<p>foo &lt;!-- not a comment -- two hyphens --&gt;</p>
````````````````````````````````


Not comments:

```````````````````````````````` example
foo <!--> foo -->

foo <!-- foo--->
.
<p>foo &lt;!--&gt; foo --&gt;</p>
<p>foo &lt;!-- foo---&gt;</p>
````````````````````````````````


Processing instructions:

```````````````````````````````` example
foo <?php echo $a; ?>
.
<p>foo <?php echo $a; ?></p>
````````````````````````````````


Declarations:

```````````````````````````````` example
foo <!ELEMENT br EMPTY>
.
<p>foo <!ELEMENT br EMPTY></p>
````````````````````````````````


CDATA sections:

```````````````````````````````` example
foo <![CDATA[>&<]]>
.
<p>foo <![CDATA[>&<]]></p>
````````````````````````````````


Entity and numeric character references are preserved in HTML
attributes:

```````````````````````````````` example
foo <a href="&ouml;">
.
<p>foo <a href="&ouml;"></p>
````````````````````````````````


Backslash escapes do not work in HTML attributes:

```````````````````````````````` example
foo <a href="\*">
.
<p>foo <a href="\*"></p>
````````````````````````````````


```````````````````````````````` example
<a href="\"">
.
<p>&lt;a href=&quot;&quot;&quot;&gt;</p>
````````````````````````````````



<div class="extension-chunk">

<div class="extension">

## Disallowed Raw HTML (GFM extension, extended)

Markua enables the `tagfilter` extension, and modifies it to filter **ALL HTML
TAGS EXCEPT HTML COMMENTS** when rendering HTML output.

To be clear, the only type of HTML block which is not filtered is an HTML
comment, which matches the following:

**Start condition:** line begins with the string `<!--`.\
**End condition:**  line contains the string `-->`.

All other types of HTML blocks are filtered.

Filtering is done by replacing the leading `<` with the entity `&lt;`.

```````````````````````````````` example
<strong> <title> <style> <em>

<blockquote>
  <xmp> is disallowed.  <XMP> is also disallowed.
</blockquote>
.
<p>&lt;strong> &lt;title> &lt;style> &lt;em></p>
&lt;blockquote>
  &lt;xmp> is disallowed.  &lt;XMP> is also disallowed.
&lt;/blockquote>
````````````````````````````````

HTML is just one possible output format of Markua, and other possible Markua
output formats (such as PDF) are not based on HTML. If inline HTML was
supported, a Markua Processor would have to support parsing and meaningfully
outputting all of HTML syntax as well as all of Markua syntax.

Markua and Markdown have different use cases. Markdown is a better way to write
HTML; Markua is a better way to write a book. Since Markdown's only output
format target is HTML, it might as well support inline HTML: generating HTML
from HTML is as simple as passing the HTML through. From an implementation
perspective, Markdown gets inline HTML support for free.

By not supporting inline HTML other than HTML comments, Markua imposes more
constraints on writers who would be tempted to use inline HTML for layout
purposes. Since Markua does not support inline HTML, attempting to do complex
layout in Markua using HTML is just not possible. And since it's not possible,
the temptation to procrastinate by doing formatting is reduced.

Now, one design benefit of the support for inline HTML in Markdown is that
Markdown's syntax can stay artificially small--since Markdown authors can always
fall back to using HTML directly, Markdown does not need to be able to produce
all of HTML. Since Markua does not support inline HTML, Markua must contain all
concepts that it supports directly expressed using Markua syntax. For example,
there is no official table syntax in Markdown, and Markdown authors can just use
inline HTML tables. Since Markua does not support inline HTML, and since books
often require tables, Markua needs to add a table syntax. Thankfully, GFM has
already done that.

</div>


<div class="extension">

## Remove comments (Markua extension)

As discussed previously, Markua filters all HTML tags except HTML comments. Now,
in terms of HTML comments, sometimes it is beneficial to have them included in
the output, and sometimes it is not (if, say, an author wants to remove sections
of manuscript text from the output.)

This is controlled with the `remove-comments` global setting. The default value
of `remove-comments` is false, for compatibility with Markdown by default.

So, by default, `remove-comments` is `false`:

```````````````````````````````` example
# Chapter One

stuff

<!-- This paragraph sucks; don't include yet.
lorem *ipsum* dolor
-->

stuff
.
<h1>Chapter One</h1>
<p>stuff</p>
<!-- This paragraph sucks; don't include yet.
lorem *ipsum* dolor
-->
<p>stuff</p>
````````````````````````````````

This can be made explicit by setting the `remove-comments` global setting
to `false`:

```````````````````````````````` example
{
remove-comments: false
}

# Chapter One

stuff

<!-- This paragraph sucks; don't include yet.
lorem *ipsum* dolor
-->

stuff
.
<h1>Chapter One</h1>
<p>stuff</p>
<!-- This paragraph sucks; don't include yet.
lorem *ipsum* dolor
-->
<p>stuff</p>
````````````````````````````````

Set the `remove-comments` global setting to `true` to remove comments from the
output:

```````````````````````````````` example
{
remove-comments: true
}

# Chapter One

stuff

<!-- This paragraph sucks; don't include yet.
lorem *ipsum* dolor
-->

stuff
.
<h1>Chapter One</h1>
<p>stuff</p>
<p>stuff</p>
````````````````````````````````

</div>

</div>



## Hard line breaks

A line break (not in a code span or HTML tag) that is preceded
by two or more spaces and does not occur at the end of a block
is parsed as a [hard line break](@) (rendered
in HTML as a `<br />` tag):

```````````````````````````````` example
foo  
baz
.
<p>foo<br />
baz</p>
````````````````````````````````


For a more visible alternative, a backslash before the
[line ending] may be used instead of two spaces:

```````````````````````````````` example
foo\
baz
.
<p>foo<br />
baz</p>
````````````````````````````````


More than two spaces can be used:

```````````````````````````````` example
foo       
baz
.
<p>foo<br />
baz</p>
````````````````````````````````


Leading spaces at the beginning of the next line are ignored:

```````````````````````````````` example
foo  
     bar
.
<p>foo<br />
bar</p>
````````````````````````````````


```````````````````````````````` example
foo\
     bar
.
<p>foo<br />
bar</p>
````````````````````````````````


Line breaks can occur inside emphasis, links, and other constructs
that allow inline content:

```````````````````````````````` example
*foo  
bar*
.
<p><em>foo<br />
bar</em></p>
````````````````````````````````


```````````````````````````````` example
*foo\
bar*
.
<p><em>foo<br />
bar</em></p>
````````````````````````````````


Line breaks do not occur inside code spans

```````````````````````````````` example
`code  
span`
.
<p><code>code   span</code></p>
````````````````````````````````


```````````````````````````````` example
`code\
span`
.
<p><code>code\ span</code></p>
````````````````````````````````


or HTML tags:

```````````````````````````````` example
<a href="foo  
bar">
.
<p><a href="foo  
bar"></p>
````````````````````````````````


```````````````````````````````` example
<a href="foo\
bar">
.
<p><a href="foo\
bar"></p>
````````````````````````````````


Hard line breaks are for separating inline content within a block.
Neither syntax for hard line breaks works at the end of a paragraph or
other block element:

```````````````````````````````` example
foo\
.
<p>foo\</p>
````````````````````````````````


```````````````````````````````` example
foo  
.
<p>foo</p>
````````````````````````````````


```````````````````````````````` example
### foo\
.
<h3>foo\</h3>
````````````````````````````````


```````````````````````````````` example
### foo  
.
<h3>foo</h3>
````````````````````````````````


## Soft line breaks

A regular line break (not in a code span or HTML tag) that is not
preceded by two or more spaces or a backslash is parsed as a
[softbreak](@).  (A softbreak may be rendered in HTML either as a
[line ending] or as a space. The result will be the same in
browsers. In the examples here, a [line ending] will be used.)

```````````````````````````````` example
foo
baz
.
<p>foo
baz</p>
````````````````````````````````


Spaces at the end of the line and beginning of the next line are
removed:

```````````````````````````````` example
foo 
 baz
.
<p>foo
baz</p>
````````````````````````````````


A conforming parser may render a soft line break in HTML either as a
line break or as a space.

A renderer may also provide an option to render soft line breaks
as hard line breaks.




<div class="extension-chunk">

<div class="extension">

## Configurable soft line breaks (Markua extension)

There is a good argument to be made that single newlines at the end of a line
should always be treated as a hard line break, not as a soft line break.

In ancient history, some text editors did not automatically wrap lines of text,
so manual wrapping of plain text files was a good thing to do. However, for
writing, automatic wrapping of paragraphs is essential for staying in the flow
while writing, and for being able to edit your text without needing to re-wrap
every line in a paragraph. This is one decision that even Microsoft Word gets
right.

So, Markua used to treat single newlines at the end of a line as a hard line
break, not as a soft line break.

However, compatibility with Markdown by default is more than fixing things such
as this which I consider to be mistakes, even though the Markdown two-space hack
to force a hard line break makes me die a little inside every time I (don't) see
it. As I've grown older, I've become more willing to compromise.

So, Markua has a document setting called `soft-breaks`:

* If `soft-breaks` is `source`, then single newlines inside paragraphs in the
  Markua produce single newlines in the HTML source. This will pretend to
  break the line: while it does break the line in the HTML source, it does
  not break the line when the HTML is rendered. So, this type of line break
  only is a line break in the HTML source. In the output, it actually functions
  like a space. (It should be rendered as a space in non-HTML-based output
  formats like PDF.)
* If `soft-breaks` is `space`, then single newlines inside paragraphs in the
  Markua document produce single spaces in the HTML output. This functions
  identically to single newlines when rendered as HTML. (It should be rendered
  as a space in non-HTML-based output formats like PDF.)
* If `soft-breaks` is `break`, then single newlines inside paragraphs in the
  Markua document produce break tags in the HTML output. The reason this value
  is `break` is to indicate that when you hit a newline to get a line break, you
  get a real line break. In HTML, this means a break tag. (It should be rendered
  as a newline in non-HTML-based output formats like PDF.)

The default value of `soft-breaks` is `source`, for compatibility with Markdown.
However, most authors will want to set the value of `soft-breaks` to `break`,
for compatibility with truth and beauty.

The default value of `soft-breaks` is `soft`:

```````````````````````````````` example
# Chapter One

foo
bar
.
<h1>Chapter One</h1>
<p>foo
bar</p>
````````````````````````````````

This can be made explicit by setting the `soft-breaks` global setting to `source`:

```````````````````````````````` example
{
soft-breaks: source
}

# Chapter One

foo
bar
.
<h1>Chapter One</h1>
<p>foo
bar</p>
````````````````````````````````

This can be made shorter by setting the `soft-breaks` global setting to `space`:

```````````````````````````````` example
{
soft-breaks: space
}

# Chapter One

foo
bar
.
<h1>Chapter One</h1>
<p>foo bar</p>
````````````````````````````````

If you want your line breaks to actually, well, produce line breaks, you need to
set the `soft-breaks` global setting to `break`:

```````````````````````````````` example
{
soft-breaks: break
}

# Chapter One

foo
bar
.
<h1>Chapter One</h1>
<p>foo<br />
bar</p>
````````````````````````````````

Finally, note that the `soft-breaks` global setting also applies to other
paragraph-like contexts, such as definition list items.

</div>


<div class="extension">

## Span attribute lists (Markua extension)

Surrounding text in square brackets can be useful not just for giving it a URL
to link to. If you wish to add attributes to an arbitrary span of text, you can
create an arbitrary span of text using square brackets and then add an attribute
list immediately afterward. You can use any attribute list on this span, and you
can also just use the id syntactic sugar `{#theid}` on this span. The most
common uses of this are to add `id` attributes or index entries. (Index entries
are discussed later.)

```````````````````````````````` example
Some text [then a span]{foo: lorem, bar: ipsum} and more text.

This [span has an id]{#hello}, so hooray!

This span [also has an id]{id: world}. 
.
<p>Some text <span foo="lorem" bar="ipsum">then a span</span> and more text.</p>
<p>This <span id="hello">span has an id</span>, so hooray!</p>
<p>This span <span id="world">also has an id</span>.</p>
````````````````````````````````

Note, however, that you cannot start a normal span with a caret (`^`): this
creates a `[^footnote]` instead. (Footnotes are discussed below.)

</div>


<div class="extension">

## Index entries (Markua extension)

Markua supports adding index entries via the attribute list syntax. Index
entries let authors or indexers produce professional-looking indexes in
Markua books.

Index entries can either be attached to block or span elements using the same
attribute list syntax. In fact, index entries can just be added as part of a
larger attribute list.

The actual syntax of what the value of an index entry looks like is [inspired
by LaTeX](https://en.wikibooks.org/wiki/LaTeX/Indexing).

The key of an index entry is `i`, for index.

In its simplest form, an index entry is simply `{i: "hello"}`. Like any
attribute list, you don't need a space between the colon and the quote--you can
also do `{i:"hello"}`.

These are the various formats of an index entry:

~~~
{i: hello}
{i: "hello"}
{i: "Armstrong, Peter"}
{i: "Yahoo\!"}
{i: "*hello*"}
{i: "**hello**"}
{i: "hello!Peter"}
{i: "hello!*Peter*"}
{i: "hello!**Peter**"}
{i: "Peter|see{i:'hello'}"}
{i: "Jen|seealso{i:'Jenny'}"}
~~~

Here's what they do:

`{i: hello}`
: Adds an index entry for `hello`. If an index entry has no punctuation or
formatting then it does not need quotes.

`{i: "hello"}`
: Adds an index entry for `hello`. Quotes are always fine to use, even when not
required.

`{i: "Armstrong, Peter"}`
: Adds an index entry for `Armstrong, Peter`. The quotes are always omitted.
Their function is to allow things like exclamation marks and other punctuation
to be added without fear, in case you don't feel like learning which punctuation
is safe.

`{i: "Yahoo\!"}`
: Adds an index entry for `Yahoo!`. Note that the exclamation mark must be
backslash-escaped because `!` is a delimiter otherwise. The `|`, `{`, `}` and
`\` characters also must be backslash-escaped.

`{i: "*hello*"}`
: Adds an index entry for `hello`, with `hello` in italics.

`{i: "**hello**"}`
: Adds an index entry for `hello`, with `hello` in bold.

`{i: "hello!Peter"}`
: Adds an index entry for `Peter` which is a sub-entry of `hello`.

`{i: "hello!*Peter*"}`
: Adds an index entry for `Peter` (with *Peter* in emphasis) which is a
sub-entry of `hello`. Note that this cannot be combined with a see or
seealso (the | syntax).

`{i: "hello!**Peter**"}`
: Adds an index entry for `Peter` (with **Peter** in strong emphasis) which is a
sub-entry of `hello`. Note that this cannot be combined with a see or seealso
(the | syntax).

`{i: "Peter|see{i:'hello'}"}`
: Adds an index entry for `Peter`, which references the index entry `hello` with
the equivalent of "see" in the language of the book. Note that this cannot be
combined with a sub-entry (the ! syntax).

`{i: "Jen|seealso{i:'Jenny'}"}`
: Adds an index entry for `Jen`, which references the index entry `Jenny` with
the equivalent of "see also" in the language of the book. Note that this cannot
be combined with a sub-entry (the ! syntax).

Index entries are case sensitive. For example, `{i: "mark"}` and `{i: "Mark"}`
are distinct entries. (The first is for a result or a smudge, the second is a
person's name.)

To attach an index entry to the start of a block, put it on its own line above
a block:

~~~
{i: "hello"}
I just came to say hello, hello, hello, hello
~~~

To attach an index entry to a word, just add the index entry after the word:

~~~
I just came to say hello{i: "hello"}, hello, hello, hello
~~~

To attach an index entry to a span element, just add the index entry after the
span element:

~~~
The first program that a programmer writes in a language is usually
*Hello World*{i: "Hello World"}
~~~

Index entries can have commas and other punctuation (except colons) in their
definition:

~~~
My wife read some book about a whale by Herman Melville{i: "Melville, Herman"}.
~~~

Multiple index entries can exist in a block, or even a sentence:

~~~
Supposedly the great-great-great-granduncle of the musician Moby{i: "Moby"} was
Herman Melville{i: "Melville, Herman"}, the author of a book about a
whale{i: "Moby-Dick; or, The Whale"}.
~~~

Note that adding index entries is best left until the author is done writing the
book. At that time, ids like {#myid} can be converted to {id: #myid, i: "blah"}
if index entries are being added where ids already are.

Markua does not specify the HTML output of index entries, to maximize
implementation flexibility.

</div>


<div class="extension">

## Placeholders (Markua extension)

Placeholders are a simple text-replace templating system which allow you to
define boilerplate in one place, and easily insert it in other places. For books
like novels, these obviously have no place. However, for books, courses and
other types of documents produced by large organizations, there is an absolute
need for placeholders.

Since this is a fairly niche requirement, the syntax is designed in a way that
authors should never inadvertently trigger it unless they intend to. It is
similar to the footnote syntax.

Placeholder definitions can occur before or after the placeholder insertions.
Implementors of Markua Processors are encouraged to deal with placeholders in a
pre-processing step.

Placeholders can be defined and inserted as span or block elements.

### Placeholder identifiers

The identifier for a placeholder must conform to `/[a-zA-Z][a-zA-Z0-9_-]*/`.
That is, it starts with a lowercase or uppercase letter `[a-zA-Z]`, followed by
0 or more letters, numbers, underscores or hyphens `[a-zA-Z0-9_-]*`.

### Span placeholders

#### Span placeholder definition

To define a span placeholder, you create a block element consisting of two
opening curly braces (`{{`), followed by the placeholder identifier, followed
by two closing curly braces (`}}`), followed by a colon (`:`), followed by
one space, followed by the span placeholder definition:

~~~
other stuff

{{a_span_placeholder}}: This is the span placeholder definition which can have
**Markua formatting** and reference {{other_span_placeholders}} but not block
placeholders.

other stuff
~~~

A span placeholder definition can have Markua formatting and can reference other
span placeholders.

However, block placeholder references and circular placeholder references are
obviously forbidden as content of span placeholder definitions.

#### Span placeholder usage

A span placeholder can then be used either in a span context or in a block
context.

Specifically, to insert a span placeholder, you use two opening curly braces
(`{{`), followed by the placeholder identifier (composed of `a-zA-Z_-`
characters), followed by two closing curly braces (`}}`).

~~~
Here's a span placeholder as the only content of a block:

{{a_span_placeholder}}

Here's the same span placeholder {{a_span_placeholder}} being used in a span
context.
~~~

#### Span placeholder example

You can define a block placeholder once and use it multiple times:

```````````````````````````````` example
{{copyright}}: copyright (c) 2014-2019 Peter Armstrong.

This is {{copyright}}.

Blah.

This is still {{copyright}}.
.
<p>This is copyright (c) 2014-2019 Peter Armstrong.</p>
<p>Blah.</p>
<p>This is still copyright (c) 2014-2019 Peter Armstrong.</p>
````````````````````````````````

### Block placeholders

#### Block placeholder definition

To define a block placeholder, you create a block element consisting of two
opening curly braces (`{{`), followed by the placeholder identifier, followed
by two closing curly braces (`}}`), followed by a colon (`:`), followed by a
newline, the block placeholder content, followed by a newline, followed by two
opening curly braces (`{{`), followed by a forward slash (`/`), followed by
the placeholder identifier, followed by two closing curly braces (`}}`):

~~~
other stuff

{{a_block_placeholder}}:
This is the placeholder content.

It can include *any type of Markua formatting* and can **even** include
{{span_placeholder_references}}.

It can also include block placeholder references:

{{some_other_block_placeholder}}

Note that circular placeholder references are obviously forbidden.
{{/a_block_placeholder}}

other stuff
~~~

#### Block placeholder usage

A block placeholder can then be used only in a block context. It cannot be used
in a span context.

Specifically, to insert a block placeholder, you use two opening curly braces
(`{{`), followed by the placeholder identifier (composed of `a-zA-Z_-`
characters), followed by two closing curly braces (`}}`). The only difference is
that this must be in a block context by itself, with at least one blank line
above or below it.

~~~
Here's a block placeholder as the only content of a block:

{{a_block_placeholder}}

You cannot insert that block placeholder in a span context like in this paragraph.
~~~

#### Block placeholder examples

You can define a block placeholder once and use it multiple times:

```````````````````````````````` example
{{lorem_ipsum}}:
lorem

ipsum

dolor sit amet
{{/lorem_ipsum}}

foo

{{lorem_ipsum}}

bar

{{lorem_ipsum}}

baz
.
<p>foo</p>
<p>lorem</p>
<p>ipsum</p>
<p>dolor sit amet</p>
<p>bar</p>
<p>lorem</p>
<p>ipsum</p>
<p>dolor sit amet</p>
<p>baz</p>
````````````````````````````````

You can reference other placeholders inside placeholders:

```````````````````````````````` example
{{copyright}}: Copyright (c) 2014-2019 Peter Armstrong.

{{sit}}:
sit

amet
{{/sit}}

{{lorem_ipsum}}:
lorem

ipsum

dolor

{{sit}}

{{copyright}}
{{/lorem_ipsum}}

foo

{{lorem_ipsum}}

bar

{{lorem_ipsum}}

baz
.
<p>foo</p>
<p>lorem</p>
<p>ipsum</p>
<p>dolor</p>
<p>sit</p>
<p>amet</p>
<p>Copyright (c) 2014-2019 Peter Armstrong.</p>
<p>bar</p>
<p>lorem</p>
<p>ipsum</p>
<p>dolor</p>
<p>sit</p>
<p>amet</p>
<p>Copyright (c) 2014-2019 Peter Armstrong.</p>
<p>baz</p>
````````````````````````````````

</div>

## Concatenating files and blank lines (Markua extension)

A Markua document can be written in one file or multiple manuscript files. If a
manuscript is written in multiple files, these files are concatenated together by
the Markua Processor to produce one temporary manuscript file, and that one file
is used as the input.

Importantly, in order to avoid a number of bugs, the files are not just
concatenated together unchanged--they **must** be concatenated together by Markua
Processors in the following way:

1. All newlines at the beginning and the end of each file are removed.
2. Two newlines are added between the end of each file and the beginning of the
next file.

So, after this process, exactly one blank line separates the contents of each
manuscript file. Note that because of this rule, a paragraph (or any other block
element) cannot span multiple manuscript files.

To see why this approach is so important, consider the following single-file
Markua document:

```````````````````````````````` example
# Chapter One

Lorem ipsum dolor.

# Chapter Two

Yada yada yada.
.
<h1 class="chapter">Chapter One</h1>
<p>Lorem ipsum dolor.</p>
<h1 class="chapter">Chapter Two</h1>
<p>Yada yada yada.</p>
````````````````````````````````

Suppose instead a multiple-file approach was used, in which there were two files,
ch1.txt and ch2.txt, with the following content.

ch1.txt:

```````````````````````````````` example
# Chapter One

Lorem ipsum dolor.
.
<h1 class="chapter">Chapter One</h1>
<p>Lorem ipsum dolor.</p>
````````````````````````````````

ch2.txt:

```````````````````````````````` example
# Chapter Two

Yada yada yada.
.
<h1 class="chapter">Chapter Two</h1>
<p>Yada yada yada.</p>
````````````````````````````````

If Markua did not add any newlines between files, then these files would produce
the following incorrect manuscript:

```````````````````````````````` example
# Chapter One

Lorem ipsum dolor.# Chapter Two

Yada yada yada.
.
<h1 class="chapter">Chapter One</h1>
<p>Lorem ipsum dolor.#Chapter Two</p>
<p>Yada yada yada.</p>
````````````````````````````````

If Markua only added one newline when concatenating, this would produce a correct
manuscript (since headings end paragraphs), but one with possible bugs:

```````````````````````````````` example
# Chapter One

Lorem ipsum dolor.
# Chapter Two

Yada yada yada.
.
<h1 class="chapter">Chapter One</h1>
<p>Lorem ipsum dolor.</p>
<h1 class="chapter">Chapter Two</h1>
<p>Yada yada yada.</p>
````````````````````````````````

Worse, since a number of text editors such as Emacs have a "strip blank lines at
the end of files" setting, it would be possible to introduce such a bug if Markua
simply relied on blank lines being added to the end of a file by the author.

So, because of the blank line rule, concatenating the files produces the same
manuscript as the single-file manuscript above:

```````````````````````````````` example
# Chapter One

Lorem ipsum dolor.

# Chapter Two

Yada yada yada.
.
<h1 class="chapter">Chapter One</h1>
<p>Lorem ipsum dolor.</p>
<h1 class="chapter">Chapter Two</h1>
<p>Yada yada yada.</p>
````````````````````````````````

</div>

</div>



## Textual content

Any characters not given an interpretation by the above rules will
be parsed as plain textual content.

```````````````````````````````` example
hello $.;'there
.
<p>hello $.;'there</p>
````````````````````````````````


```````````````````````````````` example
Foo χρῆν
.
<p>Foo χρῆν</p>
````````````````````````````````


Internal spaces are preserved verbatim:

```````````````````````````````` example
Multiple     spaces
.
<p>Multiple     spaces</p>
````````````````````````````````


<!-- END TESTS -->


# Appendix: A parsing strategy

In this appendix we describe some features of the parsing strategy
used in the CommonMark reference implementations.

## Overview

Parsing has two phases:

1. In the first phase, lines of input are consumed and the block
structure of the document---its division into paragraphs, block quotes,
list items, and so on---is constructed.  Text is assigned to these
blocks but not parsed. Link reference definitions are parsed and a
map of links is constructed.

2. In the second phase, the raw text contents of paragraphs and headings
are parsed into sequences of Markdown inline elements (strings,
code spans, links, emphasis, and so on), using the map of link
references constructed in phase 1.

At each point in processing, the document is represented as a tree of
**blocks**.  The root of the tree is a `document` block.  The `document`
may have any number of other blocks as **children**.  These children
may, in turn, have other blocks as children.  The last child of a block
is normally considered **open**, meaning that subsequent lines of input
can alter its contents.  (Blocks that are not open are **closed**.)
Here, for example, is a possible document tree, with the open blocks
marked by arrows:

``` tree
-> document
  -> block_quote
       paragraph
         "Lorem ipsum dolor\nsit amet."
    -> list (type=bullet tight=true bullet_char=-)
         list_item
           paragraph
             "Qui *quodsi iracundia*"
      -> list_item
        -> paragraph
             "aliquando id"
```

## Phase 1: block structure

Each line that is processed has an effect on this tree.  The line is
analyzed and, depending on its contents, the document may be altered
in one or more of the following ways:

1. One or more open blocks may be closed.
2. One or more new blocks may be created as children of the
   last open block.
3. Text may be added to the last (deepest) open block remaining
   on the tree.

Once a line has been incorporated into the tree in this way,
it can be discarded, so input can be read in a stream.

For each line, we follow this procedure:

1. First we iterate through the open blocks, starting with the
root document, and descending through last children down to the last
open block.  Each block imposes a condition that the line must satisfy
if the block is to remain open.  For example, a block quote requires a
`>` character.  A paragraph requires a non-blank line.
In this phase we may match all or just some of the open
blocks.  But we cannot close unmatched blocks yet, because we may have a
[lazy continuation line].

2.  Next, after consuming the continuation markers for existing
blocks, we look for new block starts (e.g. `>` for a block quote).
If we encounter a new block start, we close any blocks unmatched
in step 1 before creating the new block as a child of the last
matched block.

3.  Finally, we look at the remainder of the line (after block
markers like `>`, list markers, and indentation have been consumed).
This is text that can be incorporated into the last open
block (a paragraph, code block, heading, or raw HTML).

Setext headings are formed when we see a line of a paragraph
that is a [setext heading underline].

Reference link definitions are detected when a paragraph is closed;
the accumulated text lines are parsed to see if they begin with
one or more reference link definitions.  Any remainder becomes a
normal paragraph.

We can see how this works by considering how the tree above is
generated by four lines of Markdown:

``` markdown
> Lorem ipsum dolor
sit amet.
> - Qui *quodsi iracundia*
> - aliquando id
```

At the outset, our document model is just

``` tree
-> document
```

The first line of our text,

``` markdown
> Lorem ipsum dolor
```

causes a `block_quote` block to be created as a child of our
open `document` block, and a `paragraph` block as a child of
the `block_quote`.  Then the text is added to the last open
block, the `paragraph`:

``` tree
-> document
  -> block_quote
    -> paragraph
         "Lorem ipsum dolor"
```

The next line,

``` markdown
sit amet.
```

is a "lazy continuation" of the open `paragraph`, so it gets added
to the paragraph's text:

``` tree
-> document
  -> block_quote
    -> paragraph
         "Lorem ipsum dolor\nsit amet."
```

The third line,

``` markdown
> - Qui *quodsi iracundia*
```

causes the `paragraph` block to be closed, and a new `list` block
opened as a child of the `block_quote`.  A `list_item` is also
added as a child of the `list`, and a `paragraph` as a child of
the `list_item`.  The text is then added to the new `paragraph`:

``` tree
-> document
  -> block_quote
       paragraph
         "Lorem ipsum dolor\nsit amet."
    -> list (type=bullet tight=true bullet_char=-)
      -> list_item
        -> paragraph
             "Qui *quodsi iracundia*"
```

The fourth line,

``` markdown
> - aliquando id
```

causes the `list_item` (and its child the `paragraph`) to be closed,
and a new `list_item` opened up as child of the `list`.  A `paragraph`
is added as a child of the new `list_item`, to contain the text.
We thus obtain the final tree:

``` tree
-> document
  -> block_quote
       paragraph
         "Lorem ipsum dolor\nsit amet."
    -> list (type=bullet tight=true bullet_char=-)
         list_item
           paragraph
             "Qui *quodsi iracundia*"
      -> list_item
        -> paragraph
             "aliquando id"
```

## Phase 2: inline structure

Once all of the input has been parsed, all open blocks are closed.

We then "walk the tree," visiting every node, and parse raw
string contents of paragraphs and headings as inlines.  At this
point we have seen all the link reference definitions, so we can
resolve reference links as we go.

``` tree
document
  block_quote
    paragraph
      str "Lorem ipsum dolor"
      softbreak
      str "sit amet."
    list (type=bullet tight=true bullet_char=-)
      list_item
        paragraph
          str "Qui "
          emph
            str "quodsi iracundia"
      list_item
        paragraph
          str "aliquando id"
```

Notice how the [line ending] in the first paragraph has
been parsed as a `softbreak`, and the asterisks in the first list item
have become an `emph`.

### An algorithm for parsing nested emphasis and links

By far the trickiest part of inline parsing is handling emphasis,
strong emphasis, links, and images.  This is done using the following
algorithm.

When we're parsing inlines and we hit either

- a run of `*` or `_` characters, or
- a `[` or `![`

we insert a text node with these symbols as its literal content, and we
add a pointer to this text node to the [delimiter stack](@).

The [delimiter stack] is a doubly linked list.  Each
element contains a pointer to a text node, plus information about

- the type of delimiter (`[`, `![`, `*`, `_`)
- the number of delimiters,
- whether the delimiter is "active" (all are active to start), and
- whether the delimiter is a potential opener, a potential closer,
  or both (which depends on what sort of characters precede
  and follow the delimiters).

When we hit a `]` character, we call the *look for link or image*
procedure (see below).

When we hit the end of the input, we call the *process emphasis*
procedure (see below), with `stack_bottom` = NULL.

#### *look for link or image*

Starting at the top of the delimiter stack, we look backwards
through the stack for an opening `[` or `![` delimiter.

- If we don't find one, we return a literal text node `]`.

- If we do find one, but it's not *active*, we remove the inactive
  delimiter from the stack, and return a literal text node `]`.

- If we find one and it's active, then we parse ahead to see if
  we have an inline link/image, reference link/image, compact reference
  link/image, or shortcut reference link/image.

  + If we don't, then we remove the opening delimiter from the
    delimiter stack and return a literal text node `]`.

  + If we do, then

    * We return a link or image node whose children are the inlines
      after the text node pointed to by the opening delimiter.

    * We run *process emphasis* on these inlines, with the `[` opener
      as `stack_bottom`.

    * We remove the opening delimiter.

    * If we have a link (and not an image), we also set all
      `[` delimiters before the opening delimiter to *inactive*.  (This
      will prevent us from getting links within links.)

#### *process emphasis*

Parameter `stack_bottom` sets a lower bound to how far we
descend in the [delimiter stack].  If it is NULL, we can
go all the way to the bottom.  Otherwise, we stop before
visiting `stack_bottom`.

Let `current_position` point to the element on the [delimiter stack]
just above `stack_bottom` (or the first element if `stack_bottom`
is NULL).

We keep track of the `openers_bottom` for each delimiter
type (`*`, `_`) and each length of the closing delimiter run
(modulo 3).  Initialize this to `stack_bottom`.

Then we repeat the following until we run out of potential
closers:

- Move `current_position` forward in the delimiter stack (if needed)
  until we find the first potential closer with delimiter `*` or `_`.
  (This will be the potential closer closest
  to the beginning of the input -- the first one in parse order.)

- Now, look back in the stack (staying above `stack_bottom` and
  the `openers_bottom` for this delimiter type) for the
  first matching potential opener ("matching" means same delimiter).

- If one is found:

  + Figure out whether we have emphasis or strong emphasis:
    if both closer and opener spans have length >= 2, we have
    strong, otherwise regular.

  + Insert an emph or strong emph node accordingly, after
    the text node corresponding to the opener.

  + Remove any delimiters between the opener and closer from
    the delimiter stack.

  + Remove 1 (for regular emph) or 2 (for strong emph) delimiters
    from the opening and closing text nodes.  If they become empty
    as a result, remove them and remove the corresponding element
    of the delimiter stack.  If the closing node is removed, reset
    `current_position` to the next element in the stack.

- If none is found:

  + Set `openers_bottom` to the element before `current_position`.
    (We know that there are no openers for this kind of closer up to and
    including this point, so this puts a lower bound on future searches.)

  + If the closer at `current_position` is not a potential opener,
    remove it from the delimiter stack (since we know it can't
    be a closer either).

  + Advance `current_position` to the next element in the stack.

After we're done, we remove all delimiters above `stack_bottom` from the
delimiter stack.


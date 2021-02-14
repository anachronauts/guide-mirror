text-gemini(5) "The Anachronaut's Guide" "The Anachronaut's Guide"

# NAME

*text-gemini* - the text/gemini format


# DESCRIPTION

The text/gemini format is a simple hypertext markup format, designed for use
with the Gemini protocol. It is similar to a stripped-down version of Markdown,
and looks similar to plain text. You can write it using any text editor.


# FORMAT

text/gemini is a line-oriented format; the type of each line is indicated by
the first few characters. There is no inline formatting, e.g. bold and italic. 


## TEXT LINES

Any line which doesn't match one of the line types listed below is a text line.
Text lines get rendered as-is, usually in a proportional font, wrapped to the
width of the user's browser window.

Note that unlike Markdown, there is no concept of paragraphs; line breaks in
the text/gemini markup are preserved. It is therefore recommended that
paragraphs be placed entirely on one line.

Blank lines are also preserved, and can be used to provide spacing between
paragraphs, before and after headers, etc.


## LINK LINES

Lines beginning with => are link lines, and have the following format:

```
=>[<whitespace>]<URL>[<whitespace><USER-FRIENDLY LINK NAME>]
```

where

- <whitespace> is any non-zero number of consecutive spaces or tabs.
- Square brackets indicate that the enclosed content is optional.
- <URL> is a URL, which may be absolute or relative.

For example, the following are valid link lines:

```
=> gemini://example.org/
=> gemini://example.org/ An example link
=> gemini://example.org/foo Another example link at the same host
=> foo/bar/baz.txt  A relative link
=>  gopher://example.org:70/1 A gopher link
```

Spaces in URLs should be written as %20. Other special characters should also
be percent-encoded. You can link to non-Gemini resources as well; simply
specify the appropriate scheme. 


## PREFORMATTING TOGGLE LINES

Lines beginning with ``` (three back-ticks) begin or end preformatted text.
Preformatted text has spaces preserved, is not wrapped, and is displayed in a
monospaced font. This is useful for displaying ASCII art, code samples, etc.

The opening ``` may be followed by some text which denotes "alt text" for the
following preformatted block. This can be used to provide a textual summary of
ASCII art for screen readers.


## HEADING LINES

Lines beginning with # are interpreted as headings. There are three levels of
headings, denoted by one, two, or three leading # characters. For example:

```
# Heading 1
## Heading 2
### Heading 3
```
	
You may wish to leave blank lines above and below heading lines.


## UNORDERED LISTS

Lines beginning with an asterisk and a space are unorder list lines. Some
clients may replace the asterisk with a fancy bullet. For example:

```
* Bread
* Milk
* Eggs
```


## QUOTE LINES

Lines beginning with > are quotes. Many clients render such lines specially,
e.g. by offsetting them from the main text, italicising them, or just
rewrapping them with a > in front of each line. For example:

```
> I'm coming back in... and it's the saddest moment of my life.
> --Edward White
```


# EDITORS

For your convenience, we have syntax highlighting for Gemini preinstalled for
several editors.


## NANO

If you are using *nano*(1) as your editor, you can add the following line into
your _~/.config/nano/nanorc_ if you don't already have it:

```
include "/usr/local/share/nano/site/gemini.nanorc"
```

This will enable syntax highlighting for .gmi files.


## VIM

If you are using *vim*(1) as your editor, our site configuration already
provides syntax highlighting for .gmi files.


# NOTES

This document includes text written by solderpunk <solderpunk@posteo.net>,
taken from _gemini://gemini.circumlunar.space/docs/_

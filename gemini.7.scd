gemini(7) "The Anachronaut's Guide" "The Anachronaut's Guide"

# NAME

*gemini* - information about Gemini


# DESCRIPTION

Gemini is a new (the project started in June 2019) application-level internet
protocol for the distribution of arbitrary files, with some special
consideration for serving a lightweight hypertext format which facilitates
linking between files. You may think of Gemini as "the web, stripped right back
to its essence" or as "Gopher, souped up and modernised a little", depending
upon your perspective. Gemini may be of interest to people who are:

- Opposed to the web's ubiquitous user tracking
- Tired of obnoxious adverts, autoplaying videos and other misfeatures
- Interested in low-power computing and/or low-speed networks

Gemini is intended to be simple, but not necessarily as simple as possible.
Instead, the design strives to maximise its "power to weight ratio", while
keeping its weight within acceptable limits. Gemini is also intended to be very
privacy conscious, to be difficult to extend in the future (so that it will
stay simple and privacy conscious), and to be compatible with a "do it
yourself" computing ethos. For this last reason, Gemini is technically very
familiar and conservative: it's a protocol in the traditional client-server
request-response paradigm, and is built on mature, standardised technology like
URIs, MIME media types, and TLS.

(excerpted from _gemini://gemini.circumlunar.space/docs/faq.gmi_)


# BROWSING GEMSPACE

In order to browse the universe of Gemini "capsules" (the equivalent of
websites), you need to use a suitable user-agent, or a proxy/gateway which
allows you to use one that you already have installed (e.g. a Web browser like
Firefox, Chrome, Safari, Edge).

Much of the available Gemini content is plain text, suitable for browsing in
the terminal. To help you get started, we have two Gemini user-agents installed
here: *bombadillo*(1) and *amfora*.

If you wish to use a graphical client, you can install one on your machine.
Gemini is a rather simple protocol, so a number of these are available,
suitable for different needs. Here are a few:

- Lagrange	_https://gmi.skyjake.fi/lagrange/_
- Geminaut	_https://www.marmaladefoo.com/pages/geminaut_
- Kristall	_https://github.com/MasterQ32/kristall_

There are also portals (aka proxies, gateways) which allow you to explore
Gemspace from your Web browser:

- _https://portal.mozz.us/_
- _https://proxy.vulpes.one/_


## FINDING CONTENT

Of course, we have some content hosted here, at _gemini://anachronauts.club_,
but you'll probably want to find new stuff. There are several aggregators for
Gemini content which you may find useful:

- CAPCOM	_gemini://gemini.circumlunar.space/capcom/_
- Spacewalk	_gemini://rawtext.club/~sloum/spacewalk.gmi_
- gmisub	_gemini://calcuode.com/gmisub-aggregate.gmi_

Additionally, there are a couple of search engines:

- GUS		_gemini://gus.guru/_
- Houston	_gemini://houston.coder.town/_

Hopefully this will lead you to content that you find interesting. And of
course, you have the option to publish the kind of content that you want to see
right here.


# PUBLISHING

Publishing Gemini content here at anachronauts.club is as easy as placing files
you want to publish in your _~/public_gemini_ folder, and making sure it's
world-readable (chmod a+r _filename_). Files with the _.gmi_ extension will be
served as the text/gemini hypertext format, documented in *text-gemini*(5),
which provides headers, links, quotes, and preformatted content.

We run "The Unsinkable Molly Brown" as our Gemini server, which will
automatically create directory listings. You can override the default listing
for a directory by creating an _index.gmi_ file inside it, or you can add a
header before the listing by creating a _.mollyhead_ file containing the header
content. Both of these files can be marked up as described in *text-gemini*(5).

Additionally, we allow you to set some server options on a per-directory basis
using _.molly_ files (Similar to _.htaccess_), such as directory listing order,
required client certificates, MIME types, and redirects. See
_https://tildegit.org/solderpunk/molly-brown_ for more information.


## GEMLOGS

Making a Gemlog is pretty straightforward; just create a file for each post,
and a file with a list of links to the posts. You can make your easier to
consume by formatting the links in the listing as follows:

```
=> post.gmi YYYY-MM-DD - Title
```

Where YYYY is the 4-digit year, MM is the 2-digit month number, and DD is the
2-digit day number. There are a number of tools which can parse lists of such
links as feeds, similar to Atom or RSS.

You can also create an Atom feed for your Gemlog. In the future, we will be
providing a tool to create Atom feeds automatically, as well as a site-wide
aggregator service.


## DYNAMIC CONTENT

While Molly Brown supports CGI scripts, due to some architectural issues with
the server, we cannot securely allow users to run CGI scripts. We plan to
resolve these issues in the future in order to be able to offer this service.


## WEB GATEWAY

We do run a Web gateway, so content you upload is available in normal Web
browsers. The gateway attempts to hue closely to the Lagrange browser in terms
of how it presents content, with one notable exception: local links to files
with certain image extensions (e.g. jpg/jpeg, png, gif, webp) will be rendered
as inline images, with the link text as their alt text. (This technically
violates the Gemini specification, but we assume that anyone using a browser
doesn't especially care about multiple requests being made.)

At this time, there is no way to prevent your content from being served over
our web gateway. If you are interested in such a feature, consider submitting a
patch to our gmikit-gateway project. Note that there is no way of preventing
other Gemini proxies from serving your content.


# NOTES

This document includes text written by solderpunk <solderpunk@posteo.net>,
taken from _gemini://gemini.circumlunar.space/docs/_


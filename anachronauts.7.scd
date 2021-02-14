anachronauts(7) "The Anachronaut's Guide" "The Anachronaut's Guide"

# NAME

*anachronauts* - the state of the art in retrocomputing since the 23c


# WELCOME

Welcome to anachronauts.club! We are proud to offer a shared UNIX computing
environment fusing retrocomputing with some of the best of modern technology,
and a slower, less attention-monopolizing social experience.


# DESCRIPTION

This document provides an overview of the services available on
anachronauts.club, as a supplement to the usual manual pages. The rest of this
manual will give a brief overview of them, and pointers to pages with extended
descriptions.

You'll see references to other pages in the form *anachronauts*(7) on this and
other pages, which denotes the page named "anachronauts" in section 7. You can
access such pages by running a command like

	man 7 anachronauts

substituting in the appropriate manual section and page name. The *man*(1)
command displays manual pages, while the *apropos*(1) command searches the
manual pages for information.


## SHELL

We provide *fish*(1), the Friendly Interactive Shell, as the default login
shell for new users. If you are unfamiliar with it, see *fish-tutorial*(1).

This can be changed using *chsh*(1) if you prefer another
shell; *bash*(1) and *tcsh*(1) are also installed, and other shells are
available by request.

Additionally, a default per-user config file is provided at
_~/.config/fish/config.fish_, specifying some useful environment variables,
such as EDITOR, which is set to *nano*(1) by default. Other available editors
include *vim*(1), *emacs*(1), and *kak*(1). Other editors may be available by
request.


## MAIL

We provide local-only email services, which can be used to send mail to other
anachronauts users, but cannot send or receive email off the server. Mail is
delivered to your home directory in Maildir format, which can be read using
*mutt*(1). For your convenience, a global *muttrc*(5) configuration file has
been installed; you can override the settings in _~/.config/mutt/muttrc_ if you
like.

Additionally, the default *fish*(1) configuration displays some cool frogs when
you log in if you have new mail. If you change your shell, this will go away.


## GEMINI

Our primary platform for publishing content is over the Gemini protocol. You
can place files in _~/public_gemini_, and they will be available publically on
_gemini://anachronauts.club_ as well as _https://anachronauts.club_, via our
HTTP-to-Gemini gateway. Gemini can serve any type of file, but the native
format is text/gemini, which is documented in *text-gemini*(5).

We also have *amfora* and *bombadillo*(1) installed, for browsing Gemini in the
terminal. Graphical browsers, such as GemiNaut and Lagrange, may be available
for your platform.

For more information, see *gemini*(7).


## GOPHER

We also run a Gopher server, *gophernicus*, which serves content out of your
_~/public_gopher_ folder. You can use *bombadillo*(1) to browse Gopher
resources. (This section will be expanded at a later date.)


## DEV TOOLS

The following development languages are available at time of writing:

- Clang C & C++ - *clang(1)*
- NASM Assembler - *nasm(1)*
- cc65 toolchain
- Go 1.15 - go help
- Perl 5.32 - *perl*(1)
- Python 3.7 & 3.9 - *python3.7*(1), *python3.9*(1)
- Tcl 8.7 - *tclsh*(1)

The *git*(1) version control system is installed, and we are willing to
publically host repositories which accept contributions from local users, and
which are relevant to the site. Contact a member of the wheel group
<root@anachronauts.club> for more information.


## TINYMUSH

We are in the process of setting up a TinyMUSH server. More information will be
available once we have finished setting it up.


## CRAWL

We have the roguelike game Dungeon Crawl: Stone Soup installed, as the 'crawl'
command. This is an experimental feature; it is rather resource-intensive, so
only a few people can play at a time. Please do not leave your crawl instance
idling.

If we decide to keep crawl installed, we plan to implement "hearsing", where
ghost files are shared between user accounts.


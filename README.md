## What is this

This is an attempt to reproduce the Illinois letterhead in Latex using the new brand, the [block-I](https://marketing.illinois.edu/design/logo).

The official letterhead appears to use the [Gotham](https://www.typography.com/fonts/gotham/overview/) font.  A close available alternative is the [Montserrat](https://ctan.org/tex-archive/fonts/montserrat?lang=en) font,  used here and included in TexLive.

## How to use

Copy (or link) the `illinois-letterhead.sty` and `.pdf` logo files to your working directory.  In addition, you will need `sig.png` or some other signature if you plan to use one.  Then start with `template.tex` and modify.

The following commands are optional:

| Command                      | Description                               |
| :------                      | :------                                   |
| `\fromdept{<text>}`          | Department name                           |
| `\fromdeptaddress{<text>}`   | Department address                        |
| `\fromtel{<text>}`           | Phone number (footer)                     |
| `\fromemail{<text>}`         | Email address (footer)                    |
| `\fromweb{<text>}`           | URL (footer)                              |
| `\fromname{<text>}`          | From name (closing)                       |
| `\closing{<text>}`           | Closing text (e.g. `Sincerely,`, closing) |
| `\signaturefile{<filename>}` | Signature file (closing)                  |


## What it looks like

[full pdf](./example/example.pdf)

![example](./example/example.png "example")

## Details

You can see details by using the layout option: `\usepackage[layout]{illinois-letterhead}`.  Setting this shows the measurements similar to [here](https://creativeservices.illinois.edu/brand/pdf/stationery/letterhead.pdf).

![example](./example/example-layout-0.png "example")
![example](./example/example-layout-1.png "example")
![example](./example/example-layout-2.png "example")

## Other versions (not maintained)

- [`imark` branch](https://github.com/lukeolson/illinois-letterhead/tree/imark): the *old* I-mark style.
- [`blocki-basic` branch](https://github.com/lukeolson/illinois-letterhead/tree/blocki-basic): the non space-saving original version of this template in the block-I format.
- [`blocki-nonpackage` branch](https://github.com/lukeolson/illinois-letterhead/tree/blocki-nonpackage): uses `\input{}` instead of `\usepackage{}`

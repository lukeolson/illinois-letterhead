## What is this

This is an attempt to reproduce the Illinois letterhead in Latex.  This uses the new brand, the [block-I](http://creativeservices.illinois.edu/brand/).

This the *space-saving* format outline [here](https://creativeservices.illinois.edu/brand/pdf/stationery/letterhead.pdf).

## How to use

```
\usepackage{illinois-letterhead}

\fromdept{THE GRAINGER COLLEGE OF ENGINEERING}
\fromdeptaddress{Department of Computer Science\\Siebel Center for Computer Science\\201 North Goodwin Avenue\\Urbana, IL 61801--2302 USA\\}

\fromtel{217.244.5555}
\fromemail{\href{mailto:netid@illinois.edu}{netid@illinois.edu}}
\fromweb{\href{http://netid.cs.illinois.edu}{netid.cs.illinois.edu}}

\closing{Sincerely}
\signaturefile{sig.png}
\fromname{Dr.\ Such and Such\\Professor}
```

The official letterhead appears to use the [Gotham](https://www.typography.com/fonts/gotham/overview/) font.  A close available alternative is the [Montserrat](https://ctan.org/tex-archive/fonts/montserrat?lang=en) font, which is used here and is included in TexLive.

One option is to start with `template.tex` and modify the preamble at the top. The logo and font style are set in `illinois-letterhead.sty`.

1. `cd somedir`
1. `ln -s pathto/illinois-letterhead.sty`
1. `ln -s pathto/Illinois-Logo-Full-Color-CMYK.pdf`
1. `ln -s pathto/Illinois-Wordmark-Horizontal-Full-Color-CMYK.pdf`
1. `ln -s pathto/sig.png`
1. `cp pathto/template.tex myletter.tex`
1. change the addres; write the letter
1. `pdflatex myletter.tex`

## What it looks like

[full pdf](./example/example.pdf)

![example](./example/example.png "example")

## Details

You can see details of the formatting by uncommenting `\debugtrue` instead of `\debugfalse`.  Setting this shows the measurements similar to [here](https://creativeservices.illinois.edu/brand/pdf/stationery/letterhead.pdf).

![example](./example/example-layout-0.png "example")
![example](./example/example-layout-1.png "example")
![example](./example/example-layout-2.png "example")

## Other versions (not maintained)

- [`imark` branch](https://github.com/lukeolson/illinois-letterhead/tree/imark): This is the *old* I-mark style.
- [`blocki-basic` branch](https://github.com/lukeolson/illinois-letterhead/tree/blocki-basic): This is this is the non space-saving original version of this template in the block-I format.
- [`blocki-nonpackage` branch](https://github.com/lukeolson/illinois-letterhead/tree/blocki-nonpackage): This branch uses `\input{}` instead of `\usepackage{}`

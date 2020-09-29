# yorkthesis.cls

A simple, modern LaTeX thesis document class which satisfies the [format
requirements][format] of the University of York, based on the
[`memoir`][memoir] class. Since the specification also restricts the order of
certain document sections, an example document is provided as a template.
See the [Tips and Tricks](#tips-and-tricks) section for more suggestions.

Every formatting choice explicitly made to adhere to the UoY requirements is
clearly marked with a comment beginning with `FORMAT`.

[format]: https://www.york.ac.uk/research/graduate-school/academic/thesis/format/
[memoir]: https://ctan.org/pkg/memoir

## Tips and Tricks

- The name of your department should appear _exactly_ as in the _Depositing
  your thesis_ section of the [submission guidelines][guidelines].

- You can use the [`fixme`][fixme] package to format your
  todo notes within the document.

- You can use the [`outlining`][outlining] package to set
  out a document outline and keep track of what still needs to be written.

- To keep your source tidy you can split it over multiple files. You can find
  some of the options available for achieving this in the
  [overleaf][overleaf-large-project-management]
  [documentation][overleaf-multi-file-projects]. Depending on your choice, this
  has also the potential of speeding up compilation.

- The `draft` document class option highlights overfull lines with a black
  square at the end. You can and should safely ignore these until all the text
  has been finalised, and only then take care of them. Afterwards, just remove
  the `draft` option or change it to `final`.

- The `microtype` package is invaluable for achieving the cleanest look, but it
  may slow down the compilation of long documents. If this is the case, you can
  safely comment it out and re-enable it just before taking care of overfull
  lines (it will take care of most of those for you).

- The `memoir` class is extremely customisable, although its
  [manual][memoir-manual] can be a little daunting. To get you started, you may
  find more predefined chapter headings in Appendix C and section headings in
  Section 6.9.

- The example document uses the _Latin Modern_ font, which is a scalable font
  based on the default Computer Modern font. You can find more examples of
  viable fonts in the answers to this [question][fonts-question] on
  StackExchange.

- I strongly recommend using BibLaTeX to typeset your bibliography, and the
  example document is already set up for this. However, if you choose to use
  BibTeX or the embedded system instead, the class correctly renames
  bibliography section as _References_. You should also make sure it is included in the Table of Contents.

- You might also wish to check out [JabRef][jabref],
  a bibliography manager built around BibTeX and BibLaTeX.

[fixme]: https://ctan.org/pkg/fixme
[outlining]: https://ctan.org/pkg/outlining
[memoir-manual]: https://anorien.csc.warwick.ac.uk/mirrors/CTAN/macros/latex/contrib/memoir/memman.pdf
[guidelines]: https://www.york.ac.uk/research/graduate-school/academic/thesis/submit/
[jabref]: https://www.jabref.org/
[fonts-question]: https://tex.stackexchange.com/q/59702/27664
[overleaf-large-project-management]: https://www.overleaf.com/learn/latex/Management_in_a_large_project
[overleaf-multi-file-projects]: https://www.overleaf.com/learn/latex/Multi-file_LaTeX_projects

## License

Copyright 2020 A. Pezzoni

This work may be distributed and/or modified under the conditions of the LaTeX
Project Public License, either version 1.3 of this license or (at your option)
any later version, with the exception that distribution of Derived Work is not
subject to the requirements of section 6.2.
The latest version of this license is in

>  http://www.latex-project.org/lppl.txt

and version 1.3 or later is part of all distributions of LaTeX version
2005/12/01 or later.

This work has the LPPL maintenance status `maintained`.

The Current Maintainer of this work is A. Pezzoni.

This work consists of the files yorkthesis.cls, example.tex and README.md.

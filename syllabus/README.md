# Reusable syllabus

Edit
[syllabus.tex](syllabus.tex), then run from this directory:

```sh
make
```

The [Makefile](Makefile) uses `latexmk` and pdfLaTeX, writes auxiliary files in
`.build/`, and copies the finished `syllabus.pdf` here.

## Editing for an offering

The header lists Pick Hall 328 and the full booking URL, controlled by
`OfficeHoursBookingURL` near the top of the TeX source. Add meeting times and
the classroom when they are known.

The syllabus is undated and covers nine weeks.

## Reading bibliography

[readings.bib](readings.bib) contains 48 unique entries: all required, reference,
optional, and other readings, the separate supplementary-materials deposit,
and the two background articles linked in the academic-honesty policy. Lin's
two blog posts have separate entries. Repeated assignments from Gerber and
Green and Athey and Imbens share one entry per work, with assigned sections
recorded.

The bibliography uses standard BibTeX entry types and is also readable by
`biblatex`. To use it with `natbib`, cite items by their entry keys and include:

```tex
\bibliographystyle{plainnat}
\bibliography{readings}
```

Add `\nocite{*}` before those commands to list every entry. The current syllabus
formats its reading list directly in LaTeX; editing the BibTeX file does not
automatically update that list.

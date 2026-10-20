# Reusable syllabus

Edit
[syllabus.tex](syllabus.tex), then run from this directory:

```sh
make
```

The [Makefile](Makefile) uses `latexmk` and pdfLaTeX, writes auxiliary files in
`.build/`, and copies the finished `syllabus.pdf` here.

## Editing for an offering

Set `CourseMeetingTime`, `CourseLocation`, `InstructorOfficeHours`, and
`InstructorOfficeLocation` near the top of the TeX source. Their empty defaults
render blank lines. Update `OfficeHoursBookingURL` as needed.

The syllabus is undated and retains all nine weeks, class numbering, readings,
assignment structure, and policies. In particular:

- Class numbering includes Class 3.2, with no Class 3.1.
- The discussion assignment refers to the second meeting of each week.
- The proposal is due in Week 6; the pre-analysis plan is due in the final class.
- Required, optional, and reference readings remain distinct. Wilke et al. is
  required, outside the optional Worm Wars links.
- The pandemic provision and AI policy are retained.

Reference snapshots are included as [text](sources/original-syllabus.txt) and
[Word](sources/original-syllabus.docx). These snapshots retain the offering's
original dates and logistics.

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

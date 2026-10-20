# PLSC 48110/28110

**Lab and Field Experiments in Comparative Politics and Policy**


## Lecture handouts

| Order | Topic | Syllabus week | Files |
| --- | --- | --- | --- |
| 01 | Course introduction | 1 | [PDF](slides/01-course-introduction.pdf) · [TeX](slides/01-course-introduction.tex) |
| 02 | Introduction to estimation | 2 | [PDF](slides/02-introduction-to-estimation.pdf) · [TeX](slides/02-introduction-to-estimation.tex) |
| 03 | Behavioral games | 3 | [PDF](slides/03-behavioral-games.pdf) · [TeX](slides/03-behavioral-games.tex) |
| 04 | Experiments and covariate adjustment | 4 | [PDF](slides/04-covariate-adjustment.pdf) · [TeX](slides/04-covariate-adjustment.tex) |
| 05 | Design documents and pre-analysis plans | 5 | [PDF](slides/05-design-documents-and-pre-analysis-plans.pdf) · [TeX](slides/05-design-documents-and-pre-analysis-plans.tex) |
| 06 | Power and randomization procedures | 6 | [PDF](slides/06-power-and-randomization.pdf) · [TeX](slides/06-power-and-randomization.tex) |
| 07 | Instrumental variables | 8 | [PDF](slides/07-instrumental-variables.pdf) · [TeX](slides/07-instrumental-variables.tex) |
| 08 | Heterogeneous treatment effects and machine learning | 9 | [PDF](slides/08-heterogeneous-treatment-effects.pdf) · [TeX](slides/08-heterogeneous-treatment-effects.tex) |

Figures, bibliography, and style files are included
in [slides/assets](slides/assets/).

## Syllabus and readings

- [Syllabus PDF](syllabus/syllabus.pdf) and [LaTeX source](syllabus/syllabus.tex).
- [Reading bibliography](syllabus/readings.bib): 48 unique entries covering
  required, reference, optional, and other readings, supplementary materials,
  and linked background articles.
- [Syllabus editing and bibliography notes](syllabus/README.md).

The syllabus retains the readings, assignments, grade weights, policies,
week/class order, and relative deadlines. Calendar dates and offering-specific
logistics are omitted. Fill in the named logistics fields near the top of the
LaTeX source for a future offering. The introduction deck links to the syllabus
PDF; keep the `slides/` and `syllabus/` directories together.

## Rebuilding

Use a full TeX installation with `latexmk`, pdfLaTeX, and the packages required
by the sources. Run these commands from the repository root:

```sh
bash slides/build.sh
make -C syllabus
```

The slide build uses the included assets and does not require R. The
[slide build script](slides/build.sh) puts auxiliary files in a temporary
directory; the [syllabus Makefile](syllabus/Makefile) uses `syllabus/.build/`.
Both builds place the finished PDFs beside their TeX sources.

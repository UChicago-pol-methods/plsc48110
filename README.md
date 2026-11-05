# PLSC 48110/28110

**Lab and Field Experiments in Comparative Politics and Policy**


## Lecture handouts

| Order | Topic | Syllabus week | Files |
| --- | --- | --- | --- |
| 01 | Course introduction | 1 | [PDF](slides/01-course-introduction.pdf) · [TeX](slides/01-course-introduction.tex) |
| 02 | Introduction to estimation | 2 | [PDF](slides/02-introduction-to-estimation.pdf) · [Rnw source](slides/02-introduction-to-estimation.Rnw) · [generated TeX](slides/02-introduction-to-estimation.tex) |
| 03 | Behavioral games | 3 | [PDF](slides/03-behavioral-games.pdf) · [TeX](slides/03-behavioral-games.tex) |
| 04 | Experiments and covariate adjustment | 4 | [PDF](slides/04-covariate-adjustment.pdf) · [TeX](slides/04-covariate-adjustment.tex) |
| 05 | Design documents and pre-analysis plans | 5 | [PDF](slides/05-design-documents-and-pre-analysis-plans.pdf) · [TeX](slides/05-design-documents-and-pre-analysis-plans.tex) |
| 06 | Power and randomization procedures | 6 | [PDF](slides/06-power-and-randomization.pdf) · [Rnw source](slides/06-power-and-randomization.Rnw) · [generated TeX](slides/06-power-and-randomization.tex) |
| 07 | Instrumental variables | 8 | [PDF](slides/07-instrumental-variables.pdf) · [Rnw source](slides/07-instrumental-variables.Rnw) · [generated TeX](slides/07-instrumental-variables.tex) |
| 08 | Heterogeneous treatment effects and machine learning | 9 | [PDF](slides/08-heterogeneous-treatment-effects.pdf) · [Rnw source](slides/08-heterogeneous-treatment-effects.Rnw) · [generated TeX](slides/08-heterogeneous-treatment-effects.tex) |

Figures, bibliography, and style files are included
in [slides/assets](slides/assets/).

## Syllabus and readings

- [Syllabus PDF](syllabus/syllabus.pdf) and [LaTeX source](syllabus/syllabus.tex).
- [Reading bibliography](syllabus/readings.bib)
- [Syllabus editing and bibliography notes](syllabus/README.md).


## Rebuilding

Edit the `.Rnw` sources for Lectures 2, 6, 7, and 8. These combine LaTeX slides
with executable R chunks; their `.tex` files are generated. Edit `.tex`
directly for Lectures 1, 3, 4, and 5.

Use R with `knitr`, `ggplot2`, `ri`, `estimatr`, and `fabricatr`, plus a full TeX
installation with `latexmk` and pdfLaTeX. From the repository root:

```sh
bash slides/build.sh
make -C syllabus
```

The slide build knits the `.Rnw` sources, regenerates their results and figures,
and compiles all eight PDFs. Lecture 6 runs 10,000 simulations per design;
knitr caches these computations in `slides/.build/cache/` for later builds.
Package versions are recorded in `slides/.build/*-session.txt`.
Remove `slides/.build/cache/` to force a fresh simulation run.

Lecture 8's causal-forest example is display-only (`eval=FALSE`) and uses a
static tree illustration. Executing that example requires `grf`.

To compile the distributed `.tex` files without running R:

```sh
bash slides/build.sh --tex-only
```

The [slide build script](slides/build.sh) puts TeX auxiliary files in a temporary
directory; the [syllabus Makefile](syllabus/Makefile) uses `syllabus/.build/`.
Both builds place the finished PDFs beside their sources.

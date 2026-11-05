#!/usr/bin/env bash
# Knit executable sources where available, then build all handouts.
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

knit_sources=true
case "${1:-}" in
  "") ;;
  --tex-only) knit_sources=false ;;
  *) printf 'Usage: bash slides/build.sh [--tex-only]\n' >&2; exit 2 ;;
esac

command -v latexmk >/dev/null 2>&1 || {
  echo "latexmk is required (included with a full TeX Live or MacTeX installation)." >&2
  exit 1
}

if "$knit_sources"; then
  command -v Rscript >/dev/null 2>&1 || {
    echo "Rscript is required to knit .Rnw sources; use --tex-only to compile the distributed TeX." >&2
    exit 1
  }
  mkdir -p .build
fi

build_dir="$(mktemp -d "${TMPDIR:-/tmp}/plsc-handouts.XXXXXX")"
printf 'Build files: %s\n' "$build_dir"
for source in [0-9][0-9]-*.tex; do
  name="${source%.tex}"
  if "$knit_sources" && [[ -f "$name.Rnw" ]]; then
    Rscript -e 'args <- commandArgs(TRUE); knitr::knit(args[1], output=args[2]); writeLines(capture.output(sessionInfo()), args[3])' \
      "$name.Rnw" "$source" ".build/$name-session.txt"
  fi
  mkdir -p "$build_dir/$name"
  latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error \
    "-outdir=$build_dir/$name" "$source"
  cp "$build_dir/$name/$name.pdf" "$name.pdf"
done
printf '\nHandout PDFs rebuilt in %s\n' "$PWD"

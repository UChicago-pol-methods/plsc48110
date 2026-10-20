#!/usr/bin/env bash
# Build all handouts from their editable TeX sources. No R execution is needed.
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

command -v latexmk >/dev/null 2>&1 || {
  echo "latexmk is required (included with a full TeX Live or MacTeX installation)." >&2
  exit 1
}

build_dir="$(mktemp -d "${TMPDIR:-/tmp}/plsc-handouts.XXXXXX")"
printf 'Build files: %s\n' "$build_dir"
for source in [0-9][0-9]-*.tex; do
  name="${source%.tex}"
  mkdir -p "$build_dir/$name"
  latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error \
    "-outdir=$build_dir/$name" "$source"
  cp "$build_dir/$name/$name.pdf" "$name.pdf"
done
printf '\nHandout PDFs rebuilt in %s\n' "$PWD"

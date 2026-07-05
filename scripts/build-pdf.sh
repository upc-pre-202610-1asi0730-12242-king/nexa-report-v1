#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
REPORT_DIR="$REPO_ROOT/report"
DIST_DIR="$REPO_ROOT/dist"
COMBINED="$DIST_DIR/nexa-ecosystem-report-full.md"
OUTPUT="$DIST_DIR/nexa-ecosystem-report.pdf"

mkdir -p "$DIST_DIR"

cd "$REPORT_DIR"

# Files in document order (relative to report/)
SOURCES=(
  front-matter/01-cover.md
  front-matter/02-version-history.md
  front-matter/03-table-of-contents.md
  front-matter/04-project-report-collaboration-insights.md
  front-matter/05-student-outcome.md
  $(find 10-chapter-1-introduction -name "*.md" | sort)
  $(find 20-chapter-2-requirements-elicitation -name "*.md" | sort)
  $(find 30-chapter-3-requirements-specification -name "*.md" | sort)
  $(find 40-chapter-4-product-design -name "*.md" | sort)
  50-chapter-5-implementation-validation-deployment/5-1-software-configuration-management.md
  50-chapter-5-implementation-validation-deployment/5-2-landing-page-services-and-applications-implementation.md
  50-chapter-5-implementation-validation-deployment/5-2-landing-page-services-and-applications-implementation/5-2-1-sprint-1.md
  50-chapter-5-implementation-validation-deployment/5-2-landing-page-services-and-applications-implementation/5-2-2-sprint-2.md
  50-chapter-5-implementation-validation-deployment/5-2-landing-page-services-and-applications-implementation/5-2-3-sprint-3.md
  50-chapter-5-implementation-validation-deployment/5-2-landing-page-services-and-applications-implementation/5-2-4-sprint-4.md
  50-chapter-5-implementation-validation-deployment/5-3-validation-interviews.md
  50-chapter-5-implementation-validation-deployment/5-4-video-about-the-product.md
  90-conclusions.md
  99-bibliography.md
  $(find annexes -name "*.md" | sort)
)

# Concatenate all sources into one file:
# 1. Normalise ../../assets/ and ../assets/ to assets/ so paths resolve when running from report/
# 2. Strip SVG image references — xelatex requires inkscape/rsvg to embed SVGs
#    which is not always available; replace with bracketed alt text instead.
# 3. Strip legacy captures above 12,000 px, which exceed XeLaTeX's dimension limit.
> "$COMBINED"
for f in "${SOURCES[@]}"; do
  sed \
    -e 's|\.\./\.\./assets/|assets/|g' \
    -e 's|\.\./assets/|assets/|g' \
    -e 's|!\(\[[^]]*\]\)(assets/[^)]*\.svg)|\1|g' \
    -e 's|!\(\[[^]]*\]\)(assets/images/chapter-3/impact-mapping/impact-map-updated\.png)|\1|g' \
    -e 's|!\(\[[^]]*\]\)(assets/images/chapter-4/landing/mockups/desktop/landing-page\.png)|\1|g' \
    -e 's|!\(\[[^]]*\]\)(assets/images/chapter-4/webapp/mockups/b2b-mobile\.png)|\1|g' \
    -e 's|!\(\[[^]]*\]\)(assets/images/chapter-4/webapp/mockups/operator-mobile\.png)|\1|g' \
    -e 's|!\(\[[^]]*\]\)(assets/images/chapter-4/webapp/user-flows/s1-userflow\.png)|\1|g' \
    -e 's|!\(\[[^]]*\]\)(assets/images/chapter-4/webapp/user-flows/s2-userflow\.png)|\1|g' \
    -e 's|!\(\[[^]]*\]\)(assets/images/chapter-4/webapp/user-flows/s3-userflow\.png)|\1|g' \
    -e 's|!\(\[[^]]*\]\)(assets/images/chapter-4/webapp/wireflows/wireflow-s1\.jpeg)|\1|g' \
    "$f" >> "$COMBINED"
  printf '\n\n' >> "$COMBINED"
done

# Note: Mermaid code blocks render as literal code in PDF (known limitation).
# PNG and JPEG images render normally. SVG references are stripped above.

pandoc "$COMBINED" \
  --from=markdown-yaml_metadata_block+raw_html \
  --toc \
  --standalone \
  --pdf-engine=xelatex \
  --metadata title="Nexa — Informe Académico" \
  --metadata lang="es" \
  -o "$OUTPUT"

echo "PDF generado: $OUTPUT"

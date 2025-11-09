#!/usr/bin/env python3
"""
NIS2 LaTeX to Typst Template Converter
Converts LaTeX (.tex) templates to Typst (.typ) format

This is a helper script to accelerate conversion of the remaining templates.
Manual review and adjustments will be needed after conversion.
"""

import re
import sys
import os
from pathlib import Path

def convert_latex_to_typst(latex_content):
    """Convert LaTeX content to Typst format"""

    typst_content = latex_content

    # Document class and packages -> Typst setup
    typst_content = re.sub(r'\\documentclass\{.*?\}', '', typst_content)
    typst_content = re.sub(r'\\usepackage(\[.*?\])?\{.*?\}', '', typst_content)

    # Document environment
    typst_content = re.sub(r'\\begin\{document\}', '', typst_content)
    typst_content = re.sub(r'\\end\{document\}', '', typst_content)

    # Sections
    typst_content = re.sub(r'\\section\{(.*?)\}', r'= \1', typst_content)
    typst_content = re.sub(r'\\subsection\{(.*?)\}', r'== \1', typst_content)
    typst_content = re.sub(r'\\subsubsection\{(.*?)\}', r'=== \1', typst_content)

    # Text formatting
    typst_content = re.sub(r'\\textbf\{(.*?)\}', r'*\1*', typst_content)
    typst_content = re.sub(r'\\textit\{(.*?)\}', r'_\1_', typst_content)
    typst_content = re.sub(r'\\emph\{(.*?)\}', r'_\1_', typst_content)

    # Lists - itemize
    typst_content = re.sub(r'\\begin\{itemize\}', '', typst_content)
    typst_content = re.sub(r'\\end\{itemize\}', '', typst_content)
    typst_content = re.sub(r'\\item\s+', '- ', typst_content)

    # Lists - enumerate
    typst_content = re.sub(r'\\begin\{enumerate\}', '', typst_content)
    typst_content = re.sub(r'\\end\{enumerate\}', '', typst_content)

    # Tables - basic conversion (needs manual review)
    typst_content = re.sub(r'\\begin\{tabular\}.*?\n', '#table(\n  columns: auto,\n  stroke: 0.5pt,\n', typst_content)
    typst_content = re.sub(r'\\begin\{longtable\}.*?\n', '#table(\n  columns: auto,\n  stroke: 0.5pt,\n', typst_content)
    typst_content = re.sub(r'\\end\{tabular\}', ')', typst_content)
    typst_content = re.sub(r'\\end\{longtable\}', ')', typst_content)
    typst_content = re.sub(r'\\hline', '', typst_content)
    typst_content = re.sub(r'\\\\', ',', typst_content)

    # Special characters
    typst_content = re.sub(r'\\\%', '%', typst_content)
    typst_content = re.sub(r'\\\&', '&', typst_content)
    typst_content = re.sub(r'\\\$', '$', typst_content)

    # Colors (basic - needs manual review)
    typst_content = re.sub(r'\\textcolor\{(.*?)\}\{(.*?)\}', r'#text(fill: rgb("\1"))[\2]', typst_content)

    # Page breaks
    typst_content = re.sub(r'\\pagebreak', '#pagebreak()', typst_content)
    typst_content = re.sub(r'\\newpage', '#pagebreak()', typst_content)

    # Vertical space
    typst_content = re.sub(r'\\vspace\{(.*?)\}', r'#v(\1)', typst_content)

    # Footnotes
    typst_content = re.sub(r'\\footnote\{(.*?)\}', r'#footnote[\1]', typst_content)

    # URLs and links
    typst_content = re.sub(r'\\url\{(.*?)\}', r'#link("\1")', typst_content)
    typst_content = re.sub(r'\\href\{(.*?)\}\{(.*?)\}', r'#link("\1")[\2]', typst_content)

    # Remove remaining LaTeX commands (basic cleanup)
    typst_content = re.sub(r'\\maketitle', '', typst_content)
    typst_content = re.sub(r'\\tableofcontents', '#outline()', typst_content)

    return typst_content

def add_typst_header(title="NIS2 Document", author="[ORGANIZATION]"):
    """Add standard Typst header"""
    return f"""#set document(title: "{title}", author: "{author}")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*{author}*],
      align(right)[{title}]
    )
    #line(length: 100%, stroke: 0.5pt + rgb("#003366"))
  ],
  footer: [
    #line(length: 100%, stroke: 0.5pt + rgb("#003366"))
    #set text(size: 9pt)
    #grid(
      columns: (1fr, 1fr),
      align(left)[CONFIDENTIAL],
      align(right)[Page #counter(page).display()]
    )
  ]
)

#set text(font: "Liberation Sans", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")

#let nis2blue = rgb("#003366")
#let nis2red = rgb("#CC0000")
#let nis2green = rgb("#006633")
#let nis2orange = rgb("#FF6600")

"""

def convert_file(input_path, output_path):
    """Convert a single LaTeX file to Typst"""

    try:
        with open(input_path, 'r', encoding='utf-8') as f:
            latex_content = f.read()

        # Extract title from filename
        title = Path(input_path).stem.replace('-', ' ').replace('_', ' ').title()

        # Add header
        typst_content = add_typst_header(title)

        # Convert content
        converted = convert_latex_to_typst(latex_content)

        typst_content += converted

        # Write output
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(typst_content)

        print(f"✓ Converted: {input_path} -> {output_path}")
        print(f"  ⚠ Manual review required: tables, colors, complex formatting")

        return True

    except Exception as e:
        print(f"✗ Error converting {input_path}: {e}")
        return False

def main():
    """Main conversion function"""

    if len(sys.argv) < 2:
        print("NIS2 LaTeX to Typst Converter")
        print()
        print("Usage:")
        print("  python3 convert-to-typst.py <input.tex>")
        print("  python3 convert-to-typst.py <input.tex> <output.typ>")
        print("  python3 convert-to-typst.py --all  # Convert all .tex files")
        print()
        print("Note: Automatic conversion is ~70% complete.")
        print("Manual review and adjustments needed for:")
        print("  - Complex tables")
        print("  - Color definitions")
        print("  - Custom LaTeX commands")
        print("  - Figure placements")
        print("  - Special formatting")
        return 1

    if sys.argv[1] == '--all':
        # Convert all .tex files in current directory and subdirectories
        converted = 0
        failed = 0

        for tex_file in Path('.').rglob('*.tex'):
            typ_file = tex_file.with_suffix('.typ')

            if typ_file.exists():
                print(f"⊘ Skipping {tex_file} (Typst version exists)")
                continue

            if convert_file(tex_file, typ_file):
                converted += 1
            else:
                failed += 1

        print()
        print(f"Conversion complete:")
        print(f"  ✓ Converted: {converted}")
        print(f"  ✗ Failed: {failed}")
        print()
        print("Next steps:")
        print("  1. Review each .typ file for accuracy")
        print("  2. Fix tables (convert to #table() format)")
        print("  3. Verify colors and formatting")
        print("  4. Test compile with: typst compile file.typ")

    else:
        # Convert single file
        input_file = sys.argv[1]
        output_file = sys.argv[2] if len(sys.argv) > 2 else str(Path(input_file).with_suffix('.typ'))

        if convert_file(input_file, output_file):
            print()
            print("Next steps:")
            print(f"  1. Review {output_file} for accuracy")
            print(f"  2. Test compile: typst compile {output_file}")
            print(f"  3. Compare PDF with LaTeX version")

    return 0

if __name__ == '__main__':
    sys.exit(main())

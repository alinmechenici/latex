#!/usr/bin/env python3
"""
NIS2 LaTeX to Quarto Template Converter
Converts LaTeX (.tex) templates to Quarto (.qmd) format

Quarto is a modern markdown-based publishing system that can generate
PDFs, HTML, Word documents, and more from a single source.
"""

import re
import sys
import os
from pathlib import Path

def convert_latex_to_quarto(latex_content):
    """Convert LaTeX content to Quarto/Markdown format"""

    # Start with YAML front matter
    quarto_content = """---
title: "[DOCUMENT TITLE]"
subtitle: "NIS2 Directive Compliance"
author: "[ORGANIZATION]"
date: today
format:
  pdf:
    documentclass: article
    papersize: a4
    geometry:
      - margin=2.5cm
    number-sections: true
    colorlinks: true
    toc: true
    toc-depth: 3
    header-includes: |
      \\usepackage{fancyhdr}
      \\pagestyle{fancy}
      \\fancyhead[L]{\\textbf{[ORGANIZATION]}}
      \\fancyhead[R]{[DOCUMENT TITLE]}
      \\fancyfoot[L]{CONFIDENTIAL}
      \\fancyfoot[R]{\\thepage}
      \\definecolor{nis2blue}{RGB}{0,51,102}
      \\definecolor{nis2red}{RGB}{204,0,0}
---

"""

    # Remove LaTeX document structure
    content = latex_content
    content = re.sub(r'\\documentclass\{.*?\}', '', content)
    content = re.sub(r'\\usepackage(\[.*?\])?\{.*?\}', '', content)
    content = re.sub(r'\\begin\{document\}', '', content)
    content = re.sub(r'\\end\{document\}', '', content)

    # Convert sections
    content = re.sub(r'\\section\{(.*?)\}', r'# \1', content)
    content = re.sub(r'\\subsection\{(.*?)\}', r'## \1', content)
    content = re.sub(r'\\subsubsection\{(.*?)\}', r'### \1', content)
    content = re.sub(r'\\paragraph\{(.*?)\}', r'#### \1', content)

    # Convert text formatting
    content = re.sub(r'\\textbf\{(.*?)\}', r'**\1**', content)
    content = re.sub(r'\\textit\{(.*?)\}', r'*\1*', content)
    content = re.sub(r'\\emph\{(.*?)\}', r'*\1*', content)
    content = re.sub(r'\\texttt\{(.*?)\}', r'`\1`', content)

    # Convert lists - itemize
    content = re.sub(r'\\begin\{itemize\}', '', content)
    content = re.sub(r'\\end\{itemize\}', '', content)
    content = re.sub(r'^\s*\\item\s+', '- ', content, flags=re.MULTILINE)

    # Convert lists - enumerate
    content = re.sub(r'\\begin\{enumerate\}', '', content)
    content = re.sub(r'\\end\{enumerate\}', '', content)

    # Convert tables to markdown (basic - will need manual review)
    content = re.sub(r'\\begin\{table\}.*?\n', '', content)
    content = re.sub(r'\\end\{table\}', '', content)
    content = re.sub(r'\\begin\{tabular\}\{.*?\}', '\n', content)
    content = re.sub(r'\\begin\{longtable\}\{.*?\}', '\n', content)
    content = re.sub(r'\\end\{tabular\}', '', content)
    content = re.sub(r'\\end\{longtable\}', '', content)
    content = re.sub(r'\\hline', '', content)
    content = re.sub(r'\\toprule|\\midrule|\\bottomrule', '|', content)

    # Convert special characters
    content = re.sub(r'\\\%', '%', content)
    content = re.sub(r'\\\&', '&', content)
    content = re.sub(r'\\\$', '$', content)
    content = re.sub(r'\\textasciitilde', '~', content)

    # Convert page breaks
    content = re.sub(r'\\pagebreak|\\newpage|\\clearpage', '\n{{< pagebreak >}}\n', content)

    # Convert vertical space
    content = re.sub(r'\\vspace\{.*?\}', '\n', content)
    content = re.sub(r'\\bigskip|\\medskip|\\smallskip', '\n', content)

    # Convert colors (to callout blocks)
    content = re.sub(r'\\textcolor\{red\}\{(.*?)\}', r'::: {.callout-warning}\n\1\n:::', content)
    content = re.sub(r'\\textcolor\{blue\}\{(.*?)\}', r'::: {.callout-note}\n\1\n:::', content)

    # Convert URLs
    content = re.sub(r'\\url\{(.*?)\}', r'<\1>', content)
    content = re.sub(r'\\href\{(.*?)\}\{(.*?)\}', r'[\2](\1)', content)

    # Convert footnotes
    content = re.sub(r'\\footnote\{(.*?)\}', r'[^\1]', content)

    # Remove remaining LaTeX commands (basic cleanup)
    content = re.sub(r'\\maketitle', '', content)
    content = re.sub(r'\\tableofcontents', '', content)  # Handled by YAML

    # Clean up multiple blank lines
    content = re.sub(r'\n\n\n+', '\n\n', content)

    quarto_content += content

    return quarto_content

def create_quarto_template(title="NIS2 Document", author="[ORGANIZATION]"):
    """Create a basic Quarto template with NIS2 styling"""

    template = f"""---
title: "{title}"
subtitle: "NIS2 Directive Compliance"
author: "{author}"
date: today
format:
  pdf:
    documentclass: article
    papersize: a4
    geometry:
      - margin=2.5cm
    number-sections: true
    colorlinks: true
    toc: true
    toc-depth: 3
    fig-pos: 'H'
    header-includes: |
      \\usepackage{{fancyhdr}}
      \\usepackage{{xcolor}}
      \\pagestyle{{fancy}}
      \\fancyhead[L]{{\\textbf{{{author}}}}}
      \\fancyhead[R]{{{title}}}
      \\fancyfoot[L]{{CONFIDENTIAL}}
      \\fancyfoot[C]{{}}
      \\fancyfoot[R]{{\\thepage}}
      \\definecolor{{nis2blue}}{{RGB}}{{0,51,102}}
      \\definecolor{{nis2red}}{{RGB}}{{204,0,0}}
      \\definecolor{{nis2green}}{{RGB}}{{0,102,51}}
      \\definecolor{{nis2orange}}{{RGB}}{{255,102,0}}
  html:
    theme: cosmo
    toc: true
    toc-depth: 3
    number-sections: true
  docx:
    reference-doc: custom-reference.docx
    toc: true
    number-sections: true
---

# Document Control

| Field | Value |
|-------|-------|
| **Document Title** | {title} |
| **Document Owner** | [CISO NAME], Chief Information Security Officer |
| **Classification** | CONFIDENTIAL - Internal Use Only |
| **Version** | 1.0 |
| **Date** | [REPORT DATE] |
| **Review Date** | [REVIEW DATE] (Annual) |
| **Approver** | [CEO NAME], Chief Executive Officer |

## Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | [DATE] | Initial document | [AUTHOR NAME] |

{{{{< pagebreak >}}}}

# Introduction

This document is prepared in accordance with the NIS2 Directive (EU) 2022/2555, Article 21.

::: {{.callout-important}}
## NIS2 Compliance

This document demonstrates compliance with NIS2 cybersecurity requirements for essential and important entities.
:::

# Content

[Your content goes here]

---

*Prepared for NIS2 Directive Compliance*
*Last Updated: {{{{< meta date >}}}}*
*Template Version: 2.1*
"""

    return template

def convert_file(input_path, output_path):
    """Convert a single LaTeX file to Quarto"""

    try:
        with open(input_path, 'r', encoding='utf-8') as f:
            latex_content = f.read()

        # Extract title from filename
        title = Path(input_path).stem.replace('-', ' ').replace('_', ' ').title()

        # Convert content
        quarto_content = convert_latex_to_quarto(latex_content)

        # Update title in YAML
        quarto_content = quarto_content.replace('[DOCUMENT TITLE]', title)

        # Write output
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(quarto_content)

        print(f"✓ Converted: {input_path} -> {output_path}")
        print(f"  ⚠ Manual review required: tables, formatting, special commands")

        return True

    except Exception as e:
        print(f"✗ Error converting {input_path}: {e}")
        return False

def main():
    """Main conversion function"""

    if len(sys.argv) < 2:
        print("NIS2 LaTeX to Quarto Converter")
        print()
        print("Usage:")
        print("  python3 convert-to-quarto.py <input.tex>")
        print("  python3 convert-to-quarto.py <input.tex> <output.qmd>")
        print("  python3 convert-to-quarto.py --all  # Convert all .tex files")
        print("  python3 convert-to-quarto.py --template  # Create sample template")
        print()
        print("Note: Automatic conversion is ~60% complete.")
        print("Manual review and adjustments needed for:")
        print("  - Complex tables (convert to markdown tables)")
        print("  - Special LaTeX commands")
        print("  - Figure placements")
        print("  - Custom formatting")
        print()
        print("Quarto can generate PDFs, HTML, and Word documents from .qmd files!")
        return 1

    if sys.argv[1] == '--template':
        # Create sample template
        template = create_quarto_template()
        with open('sample-nis2-template.qmd', 'w') as f:
            f.write(template)
        print("✓ Created sample-nis2-template.qmd")
        print("  Compile with: quarto render sample-nis2-template.qmd")
        return 0

    if sys.argv[1] == '--all':
        # Convert all .tex files in current directory and subdirectories
        converted = 0
        failed = 0

        for tex_file in Path('.').rglob('*.tex'):
            qmd_file = tex_file.with_suffix('.qmd')

            if qmd_file.exists():
                print(f"⊘ Skipping {tex_file} (Quarto version exists)")
                continue

            if convert_file(tex_file, qmd_file):
                converted += 1
            else:
                failed += 1

        print()
        print(f"Conversion complete:")
        print(f"  ✓ Converted: {converted}")
        print(f"  ✗ Failed: {failed}")
        print()
        print("Next steps:")
        print("  1. Review each .qmd file for accuracy")
        print("  2. Fix tables (convert to markdown table syntax)")
        print("  3. Test render: quarto render file.qmd")
        print("  4. Generate PDFs: quarto render file.qmd --to pdf")
        print("  5. Or HTML: quarto render file.qmd --to html")

    else:
        # Convert single file
        input_file = sys.argv[1]
        output_file = sys.argv[2] if len(sys.argv) > 2 else str(Path(input_file).with_suffix('.qmd'))

        if convert_file(input_file, output_file):
            print()
            print("Next steps:")
            print(f"  1. Review {output_file} for accuracy")
            print(f"  2. Test render: quarto render {output_file}")
            print(f"  3. Generate PDF: quarto render {output_file} --to pdf")
            print(f"  4. Or HTML: quarto render {output_file} --to html")

    return 0

if __name__ == '__main__':
    sys.exit(main())

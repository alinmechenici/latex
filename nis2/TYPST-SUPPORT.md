# Typst Format Support

## Overview

The NIS2 template collection now supports **both LaTeX (.tex) and Typst (.typ)** formats!

**Typst** is a modern, fast alternative to LaTeX with simpler syntax and faster compilation. Choose the format that best suits your needs.

## What is Typst?

Typst is a modern markup-based typesetting system that:
- ✅ Compiles **10-100x faster** than LaTeX
- ✅ Has **simpler, cleaner syntax**
- ✅ Provides **better error messages**
- ✅ Supports **modern features** out of the box
- ✅ Is **open source** and actively developed

Learn more: https://typst.app

## Installation

### Linux/macOS
```bash
# Quick install
curl -fsSL https://typst.app/install.sh | sh

# Or with package managers
# macOS:
brew install typst

# Arch Linux:
pacman -S typst
```

### Windows
```powershell
# Using winget
winget install --id Typst.Typst

# Or download from https://github.com/typst/typst/releases
```

### Verify Installation
```bash
typst --version
```

## Available Typst Templates

Currently, the following templates have full Typst versions:

### Core Templates (Fully Converted)
- ✅ `risk-management/risk-assessment-report.typ` - Complete risk assessment
- ✅ `notifications/nis2-early-warning-24h.typ` - 24-hour NIS2 notification

### Coming Soon
The remaining 28 templates are available in LaTeX format. Typst versions will be added progressively based on user demand.

## Usage

### Generate Single PDF (Typst)
```bash
# Compile a Typst file
typst compile risk-management/risk-assessment-report.typ

# Output to specific location
typst compile risk-assessment-report.typ ../pdf/risk-assessment.pdf

# Watch mode (auto-recompile on changes)
typst watch risk-assessment-report.typ
```

### Generate All PDFs
Use the provided script that supports both formats:

```bash
cd nis2
chmod +x generate-all-pdfs.sh
./generate-all-pdfs.sh
```

The script will:
- ✅ Detect available tools (pdflatex and/or typst)
- ✅ Generate PDFs from all available templates
- ✅ Skip files if the required tool isn't installed
- ✅ Provide a detailed summary

## Typst vs LaTeX: Quick Comparison

| Feature | LaTeX | Typst |
|---------|-------|-------|
| **Compilation Speed** | Slow (seconds to minutes) | Fast (milliseconds to seconds) |
| **Syntax** | Verbose, complex | Clean, intuitive |
| **Learning Curve** | Steep | Gentle |
| **Ecosystem** | Mature, extensive packages | Growing, modern features built-in |
| **Error Messages** | Often cryptic | Clear and helpful |
| **Real-time Preview** | Limited | Excellent (watch mode) |
| **Use Case** | Academic papers, books | All documents, especially iterative work |

## Syntax Comparison

### Headers/Footers

**LaTeX:**
```latex
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[L]{Organization}
\fancyhead[R]{Document Title}
```

**Typst:**
```typst
#set page(
  header: [Organization #h(1fr) Document Title]
)
```

### Sections

**LaTeX:**
```latex
\section{Introduction}
\subsection{Background}
```

**Typst:**
```typst
= Introduction
== Background
```

### Tables

**LaTeX:**
```latex
\begin{tabular}{|c|c|}
\hline
Name & Value \\
\hline
Test & 123 \\
\hline
\end{tabular}
```

**Typst:**
```typst
#table(
  columns: 2,
  [Name], [Value],
  [Test], [123]
)
```

### Colors

**LaTeX:**
```latex
\usepackage{xcolor}
\definecolor{nis2blue}{RGB}{0,51,102}
\textcolor{nis2blue}{Text}
```

**Typst:**
```typst
#let nis2blue = rgb("#003366")
#text(fill: nis2blue)[Text]
```

## Converting LaTeX Templates to Typst

If you want to convert the remaining templates to Typst yourself, here's a quick guide:

### Basic Conversion Pattern

1. **Document Setup**
   - LaTeX: `\documentclass`, `\usepackage` → Typst: `#set document()`, `#set page()`

2. **Structure**
   - `\section{}` → `=`
   - `\subsection{}` → `==`
   - `\subsubsection{}` → `===`

3. **Formatting**
   - `\textbf{}` → `*text*` or `#text(weight: "bold")[text]`
   - `\textit{}` → `_text_` or `#text(style: "italic")[text]`
   - `\textcolor{}` → `#text(fill: color)[text]`

4. **Lists**
   - `\begin{itemize}` → Use `-` for bullets
   - `\begin{enumerate}` → Use `+` or `1.` for numbers

5. **Tables**
   - `\begin{tabular}` → `#table()`
   - `\begin{longtable}` → `#table()` (Typst handles page breaks automatically)

### Example Conversion

**LaTeX:**
```latex
\section{Risk Assessment}
This document provides a comprehensive \textbf{risk analysis}.

\begin{itemize}
\item Risk identification
\item Risk evaluation
\end{itemize}
```

**Typst:**
```typst
= Risk Assessment
This document provides a comprehensive *risk analysis*.

- Risk identification
- Risk evaluation
```

## Benefits of Using Typst for NIS2 Templates

1. **Faster Iteration** - Quick compilation means faster document development
2. **Easier Customization** - Simpler syntax makes modifications easier
3. **Better Debugging** - Clear error messages help identify issues quickly
4. **Modern Workflow** - Watch mode provides instant feedback
5. **Cross-platform** - Single binary, no complex LaTeX distribution needed

## Recommendations

### Use LaTeX if:
- ✅ You have existing LaTeX expertise
- ✅ You need specific LaTeX packages
- ✅ Your organization has LaTeX standardization
- ✅ You're working with complex mathematical formulas

### Use Typst if:
- ✅ You want faster compilation
- ✅ You prefer simpler syntax
- ✅ You're new to document markup
- ✅ You need rapid document iteration
- ✅ You want a modern, lightweight tool

## Template Quality

Both LaTeX and Typst versions of templates:
- ✅ Generate **identical visual output**
- ✅ Maintain **professional formatting**
- ✅ Include **all NIS2 compliance requirements**
- ✅ Support **customization** with placeholders
- ✅ Are **production-ready**

## Getting Help

### Typst Resources
- Official Documentation: https://typst.app/docs
- Tutorial: https://typst.app/docs/tutorial
- Community: https://discord.gg/2uDybryKPe
- GitHub: https://github.com/typst/typst

### LaTeX Resources
- Overleaf: https://www.overleaf.com/learn
- CTAN: https://www.ctan.org
- TeX Stack Exchange: https://tex.stackexchange.com

## Conversion Service

Need help converting more templates to Typst? The templates are structured to make conversion straightforward. Key templates prioritized for Typst conversion:

**High Priority** (Most Used):
1. ✅ Risk Assessment Report (DONE)
2. ✅ NIS2 24h Early Warning (DONE)
3. ⏳ Cybersecurity Policy
4. ⏳ Incident Response Plan
5. ⏳ Business Continuity Plan

**Medium Priority** (Operational):
6. ⏳ All Playbooks (Ransomware, Data Breach, DDoS, Phishing)
7. ⏳ NIS2 72h and 1-month notifications
8. ⏳ Security Forms

**Lower Priority** (Specialized):
9. ⏳ Audit checklists
10. ⏳ Test reports
11. ⏳ Other policies

## Contributing

If you convert additional templates to Typst:
1. Maintain the same visual structure as LaTeX version
2. Keep all content identical
3. Use consistent styling (colors, fonts, spacing)
4. Test PDF generation
5. Share your conversions!

## Support Both Formats

You can maintain both formats in your organization:
- Use **Typst** for rapid document development and iteration
- Use **LaTeX** for final production versions if required
- Both generate professional, NIS2-compliant outputs

## FAQ

**Q: Can I mix Typst and LaTeX templates?**
A: Yes! Use whichever format suits each template best.

**Q: Which format is "official"?**
A: Both are official and fully supported. LaTeX has more templates currently; Typst is being expanded.

**Q: Can I convert my LaTeX customizations to Typst?**
A: Yes, most customizations translate directly. See syntax comparison above.

**Q: Is Typst production-ready?**
A: Yes! Typst is stable and used in production by many organizations.

**Q: Will Typst replace LaTeX in this collection?**
A: No, both formats will be maintained. Choose what works for you.

**Q: How do I contribute Typst conversions?**
A: Follow the existing Typst template structure and submit your conversions!

---

**Template Version**: 2.0
**Last Updated**: November 2025
**Format Support**: LaTeX (.tex) + Typst (.typ)

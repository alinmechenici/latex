# Installation and Setup Guide

This guide will help you set up your environment to generate NIS2 compliance documentation PDFs from the LaTeX templates.

## Prerequisites

### 1. LaTeX Distribution

You need a LaTeX distribution installed on your system to compile the templates into PDFs.

#### Ubuntu/Debian Linux

```bash
# Option 1: Minimal installation (faster, ~200MB)
sudo apt-get update
sudo apt-get install texlive-latex-base texlive-latex-extra texlive-fonts-recommended

# Option 2: Full installation (comprehensive, ~5GB)
sudo apt-get install texlive-full
```

#### macOS

```bash
# Using Homebrew
brew install --cask mactex

# After installation, add to PATH
export PATH="/Library/TeX/texbin:$PATH"
```

Alternatively, download [MacTeX](https://www.tug.org/mactex/) directly.

#### Windows

1. Download and install [MiKTeX](https://miktex.org/download)
2. During installation, choose "Install missing packages automatically"
3. Add MiKTeX bin directory to PATH (usually done automatically)

Alternatively, install [TeX Live for Windows](https://www.tug.org/texlive/windows.html).

### 2. Optional: ImageMagick (for logo generation)

If you don't have a logo file, the build script can generate a placeholder using ImageMagick.

#### Ubuntu/Debian
```bash
sudo apt-get install imagemagick
```

#### macOS
```bash
brew install imagemagick
```

#### Windows
Download from [ImageMagick website](https://imagemagick.org/script/download.php)

## Quick Start

### 1. Clone or Download Templates

```bash
cd /path/to/your/workspace
# If using git
git clone <repository-url>
cd nis2
```

### 2. Add Your Organization Logo (Optional)

Place your organization's logo as `logo.png` in the `nis2/` directory:

```bash
cp /path/to/your/logo.png nis2/logo.png
```

**Logo specifications**:
- Format: PNG (preferred) or JPG
- Recommended size: 200x80 pixels
- Transparent background recommended
- Will be displayed in headers

If you don't provide a logo, the build script will create a simple placeholder.

### 3. Generate All PDFs

```bash
cd nis2
./generate-pdfs.sh
```

This script will:
- Check for LaTeX installation
- Create a placeholder logo if needed
- Compile all 8 templates
- Place PDFs in the `pdf/` directory
- Clean up temporary files

### 4. Verify Output

```bash
ls -lh pdf/
```

You should see 8 PDF files:
```
01-risk-assessment-report.pdf
02-cybersecurity-policy.pdf
03-incident-response-plan.pdf
04-access-control-policy.pdf
05-business-continuity-plan.pdf
06-vendor-security-assessment.pdf
07-security-awareness-program.pdf
08-nis2-compliance-report.pdf
```

## Customizing Templates

### 1. Replace Placeholders

Before generating PDFs, customize each template by replacing placeholders:

**Search for and replace**:
- `[ORGANIZATION]` → Your organization name
- `[NAME]` → Appropriate names
- `[DATE]` → Relevant dates
- `[PHONE]` → Contact numbers
- `[EMAIL]` → Email addresses
- `[AMOUNT]` → Budget figures

**Quick replacement (Linux/macOS)**:
```bash
# Example: Replace organization name in all templates
find . -name "*.tex" -exec sed -i 's/\[ORGANIZATION\]/Acme Corporation/g' {} \;
```

**Windows PowerShell**:
```powershell
Get-ChildItem -Recurse -Filter *.tex | ForEach-Object {
    (Get-Content $_.FullName) -replace '\[ORGANIZATION\]', 'Acme Corporation' | Set-Content $_.FullName
}
```

### 2. Customize Colors

Edit the color definitions in each template's preamble:

```latex
\definecolor{nis2blue}{RGB}{0,51,153}      % Header color
\definecolor{nis2gray}{RGB}{100,100,100}   % Footer color
```

Change RGB values to match your organization's branding.

### 3. Add Content

Refer to the example content in the `examples/` directory:
- `risk-assessment-example.md`
- `incident-response-example.md`
- `cybersecurity-policy-example.md`

Use these as guides for the structure and level of detail expected.

## Compile Individual Templates

To compile a single template:

```bash
cd nis2/risk-management
pdflatex risk-assessment-report.tex
pdflatex risk-assessment-report.tex  # Run twice for TOC
mv risk-assessment-report.pdf ../pdf/
```

**Note**: Run `pdflatex` twice to generate correct table of contents and cross-references.

## Troubleshooting

### Error: "pdflatex: command not found"

**Solution**: LaTeX is not installed or not in PATH.
- Verify installation: `which pdflatex` (Linux/macOS) or `where pdflatex` (Windows)
- Reinstall LaTeX distribution
- Add LaTeX bin directory to PATH

### Error: Missing LaTeX packages

**Symptoms**: Errors like "! LaTeX Error: File `<package>.sty' not found"

**Solution**:

**MiKTeX (Windows)**:
- MiKTeX will prompt to install missing packages automatically
- Or install manually: `mpm --install=<package-name>`

**TeX Live (Linux/macOS)**:
```bash
# Install specific package
sudo tlmgr install <package-name>

# Or install all extras
sudo apt-get install texlive-latex-extra texlive-fonts-extra
```

### Error: Logo file not found

**Symptoms**: Warning or error about `logo.png`

**Solution**:
1. Create a `logo.png` file in each template directory, or
2. Comment out the logo line in templates:
```latex
% \fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
```

### PDF not generated but no errors

**Solution**:
1. Check the `.log` file for detailed errors
2. Run pdflatex without `-interaction=nonstopmode`:
```bash
pdflatex risk-assessment-report.tex
```
3. Look for specific error messages

### Tables or content overflow

**Solution**:
- Reduce font size: `\small` or `\footnotesize`
- Adjust column widths in tables
- Use `\adjustbox` or `\resizebox` for large tables
- Consider landscape orientation for wide content

## Advanced Customization

### Change Page Layout

Modify geometry settings in template preamble:

```latex
\geometry{margin=1in}  % Change to 0.75in for more space
```

### Add Watermarks

For draft versions, add to preamble:

```latex
\usepackage{draftwatermark}
\SetWatermarkText{DRAFT}
\SetWatermarkScale{1}
```

### Custom Headers/Footers

Modify the `fancyhdr` settings:

```latex
\fancyhead[L]{Custom Left Header}
\fancyhead[C]{Custom Center Header}
\fancyhead[R]{Custom Right Header}
```

### Change Fonts

Add to preamble for different font:

```latex
\usepackage{times}  % Times New Roman
% or
\usepackage{helvet}  % Helvetica
% or
\usepackage{palatino}  % Palatino
```

## Automation

### Automated Build on Changes

**Linux/macOS** (using `entr`):
```bash
# Install entr
# Ubuntu: sudo apt-get install entr
# macOS: brew install entr

# Watch for changes and rebuild
find . -name "*.tex" | entr ./generate-pdfs.sh
```

**Windows** (using PowerShell):
```powershell
# Watch and rebuild
while ($true) {
    if (Get-ChildItem -Recurse -Filter *.tex | Where-Object {$_.LastWriteTime -gt (Get-Date).AddSeconds(-2)}) {
        ./generate-pdfs.sh
    }
    Start-Sleep -Seconds 2
}
```

### CI/CD Integration

Example GitHub Actions workflow (`.github/workflows/build-pdfs.yml`):

```yaml
name: Build NIS2 PDFs

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Install LaTeX
        run: |
          sudo apt-get update
          sudo apt-get install -y texlive-latex-extra texlive-fonts-recommended
      - name: Build PDFs
        run: |
          cd nis2
          ./generate-pdfs.sh
      - name: Upload PDFs
        uses: actions/upload-artifact@v2
        with:
          name: nis2-pdfs
          path: nis2/pdf/*.pdf
```

## Docker Option

For a consistent build environment:

**Dockerfile**:
```dockerfile
FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y texlive-latex-extra texlive-fonts-recommended && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY . .

CMD ["./generate-pdfs.sh"]
```

**Build and run**:
```bash
docker build -t nis2-builder .
docker run -v $(pwd)/pdf:/workspace/pdf nis2-builder
```

## Support

If you encounter issues:

1. **Check the logs**: Look at `.log` files generated during compilation
2. **Verify LaTeX installation**: Run `pdflatex --version`
3. **Test with simple document**: Create a minimal LaTeX file to test your setup
4. **Check examples**: Review the example content in `examples/` directory
5. **Consult LaTeX documentation**: [LaTeX Project](https://www.latex-project.org/)

## Performance Tips

### Faster Compilation

For faster builds during development:

1. **Use pdflatex with draft mode**:
```bash
pdflatex -draftmode document.tex
```

2. **Compile only changed documents**

3. **Use latexmk for smart recompilation**:
```bash
latexmk -pdf document.tex
```

### Parallel Compilation

Compile multiple documents in parallel:

**Linux/macOS**:
```bash
find . -name "*.tex" | parallel pdflatex {}
```

**Windows PowerShell**:
```powershell
Get-ChildItem -Recurse -Filter *.tex | ForEach-Object -Parallel {
    pdflatex $_.FullName
}
```

## Next Steps

1. ✅ Install LaTeX
2. ✅ Generate PDFs
3. 📝 Customize templates with your organization's information
4. 📋 Fill in content using examples as guides
5. 🔄 Review and iterate
6. ✔️ Obtain management approval
7. 📤 Submit to competent authority if required

## Resources

- [LaTeX Project](https://www.latex-project.org/)
- [CTAN - Comprehensive TeX Archive Network](https://www.ctan.org/)
- [Overleaf LaTeX Documentation](https://www.overleaf.com/learn)
- [TeX Stack Exchange](https://tex.stackexchange.com/)
- [NIS2 Directive Official Text](https://eur-lex.europa.eu/eli/dir/2022/2555)

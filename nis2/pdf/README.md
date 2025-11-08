# Generated PDFs Directory

This directory contains the compiled PDF versions of all NIS2 compliance templates.

## How to Generate PDFs

Since LaTeX is not available in all environments, you'll need to generate the PDFs on a system with LaTeX installed.

### Quick Start

From the parent directory (`nis2/`), run:

```bash
./generate-pdfs.sh
```

This will compile all templates and place the PDFs in this directory.

### Manual Compilation

To compile individual templates manually:

```bash
cd ../[category-folder]
pdflatex [template-name].tex
pdflatex [template-name].tex  # Run twice for TOC
mv [template-name].pdf ../pdf/
```

## Expected Files

After successful compilation, you should have:

1. **01-risk-assessment-report.pdf** - Comprehensive risk assessment template
2. **02-cybersecurity-policy.pdf** - Organization-wide cybersecurity policy
3. **03-incident-response-plan.pdf** - Incident handling and NIS2 reporting procedures
4. **04-access-control-policy.pdf** - Access management and MFA requirements
5. **05-business-continuity-plan.pdf** - Business continuity and disaster recovery
6. **06-vendor-security-assessment.pdf** - Third-party risk evaluation
7. **07-security-awareness-program.pdf** - Training and awareness program
8. **08-nis2-compliance-report.pdf** - Annual compliance assessment

## Installation Requirements

To generate PDFs, you need:

- **LaTeX distribution**: TeX Live (Linux/macOS) or MiKTeX (Windows)
- **Optional**: ImageMagick for logo generation

See `../INSTALLATION.md` for detailed setup instructions.

## Customization

Before generating PDFs:

1. Replace `[ORGANIZATION]` and other placeholders in `.tex` files
2. Add your organization's `logo.png` to the parent directory
3. Customize colors and branding in template preambles
4. Add your actual content (see `../examples/` for guidance)

## File Size Expectations

Typical PDF sizes:
- Simple policies: 100-300 KB
- Complex documents with tables: 300-800 KB
- Documents with embedded images: 500KB-2MB

## Troubleshooting

**PDFs not generating?**
- Check that LaTeX is installed: `pdflatex --version`
- Review the `.log` files for errors
- See `../INSTALLATION.md` for detailed troubleshooting

**Logo errors?**
- Ensure `logo.png` exists in the parent directory
- Or comment out logo lines in templates

## Distribution

These PDFs can be:
- ✅ Shared with management for review
- ✅ Submitted to competent authorities (after customization)
- ✅ Used for internal compliance documentation
- ✅ Provided to auditors during assessments

**Remember**:
- Customize before distribution
- Mark as DRAFT until approved
- Follow your document control procedures
- Maintain version control

## Security Note

Some of these documents contain sensitive information when filled out:
- Risk assessments
- Incident reports
- Vendor assessments
- Compliance reports

**Protect accordingly**:
- Store in secure locations
- Encrypt sensitive PDFs
- Control access appropriately
- Follow data classification policies

## Support

For PDF generation issues, see:
- `../INSTALLATION.md` - Setup and troubleshooting
- `../README.md` - General documentation
- LaTeX documentation: https://www.latex-project.org/

# NIS2 Templates Quick Start Guide

Get started with NIS2 compliance documentation in 5 minutes.

## What's Included

✅ **10 Professional LaTeX Templates** covering all NIS2 requirements
✅ **3 Comprehensive Examples** with realistic content
✅ **Complete Documentation** for installation and customization
✅ **Automated Build Script** for easy PDF generation

## Quick Setup (3 Steps)

### Step 1: Install LaTeX (One-time)

**Ubuntu/Debian:**
```bash
sudo apt-get install texlive-latex-extra texlive-fonts-recommended
```

**macOS:**
```bash
brew install --cask mactex
```

**Windows:**
Download [MiKTeX](https://miktex.org/download)

### Step 2: Add Your Logo (Optional)

```bash
cp your-logo.png nis2/logo.png
```

Or let the script create a placeholder.

### Step 3: Generate PDFs

```bash
cd nis2
./generate-pdfs.sh
```

Done! Your PDFs are in the `pdf/` directory.

## Customization Checklist

Before finalizing documents:

- [ ] Replace `[ORGANIZATION]` with your organization name
- [ ] Replace `[NAME]`, `[DATE]`, `[EMAIL]` placeholders
- [ ] Add your actual logo (or use placeholder)
- [ ] Review and adapt content for your organization
- [ ] Fill in tables with your data
- [ ] Update contact information
- [ ] Adjust recovery objectives (RTO/RPO)
- [ ] Customize incident response contacts
- [ ] Add your risk assessment data
- [ ] Define your security controls

## Templates Overview

| # | Template | Category | NIS2 Article |
|---|----------|----------|--------------|
| 1 | Risk Assessment Report | Risk Management | 21(2)(a) |
| 2 | Business Impact Analysis | Risk Management | 21(2)(c) |
| 3 | Cybersecurity Policy | Governance | 21 |
| 4 | Incident Response Plan | Incident Response | 23 |
| 5 | Access Control Policy | Security Measures | 21(2)(i) |
| 6 | Encryption Policy | Security Measures | 21(2)(h) |
| 7 | Business Continuity Plan | Business Continuity | 21(2)(c) |
| 8 | Vendor Security Assessment | Supply Chain | 21(2)(d) |
| 9 | Security Awareness Program | Training | 21(2)(g) |
| 10 | NIS2 Compliance Report | Compliance | 21(2)(f) |

## Using the Examples

The `examples/` directory contains three detailed examples:

1. **risk-assessment-example.md** - Complete risk assessment for a cloud service provider
2. **incident-response-example.md** - Ransomware and data breach scenarios with timelines
3. **cybersecurity-policy-example.md** - Healthcare organization's comprehensive policy

Use these as templates for your own content.

## Common Tasks

### Generate Single PDF

```bash
cd nis2/risk-management
pdflatex risk-assessment-report.tex
pdflatex risk-assessment-report.tex  # Run twice
mv risk-assessment-report.pdf ../pdf/
```

### Replace Organization Name in All Files

**Linux/macOS:**
```bash
find . -name "*.tex" -exec sed -i 's/\[ORGANIZATION\]/Acme Corp/g' {} \;
```

**Windows PowerShell:**
```powershell
Get-ChildItem -Recurse -Filter *.tex | ForEach-Object {
    (Get-Content $_.FullName) -replace '\[ORGANIZATION\]', 'Acme Corp' |
    Set-Content $_.FullName
}
```

### Change Brand Colors

Edit color definitions in each template:
```latex
\definecolor{nis2blue}{RGB}{0,51,153}     % Change to your color
\definecolor{nis2gray}{RGB}{100,100,100}  % Change to your color
```

## NIS2 Compliance Checklist

Quick reference for Article 21 requirements:

- [ ] **Risk Assessment** (21(2)(a)) - Annual risk analysis completed
- [ ] **Incident Response** (21(2)(b)) - IR plan documented and tested
- [ ] **Business Continuity** (21(2)(c)) - BC/DR plans with RTO/RPO
- [ ] **Supply Chain Security** (21(2)(d)) - Vendor assessments conducted
- [ ] **Security in Development** (21(2)(e)) - Secure SDLC implemented
- [ ] **Effectiveness Assessment** (21(2)(f)) - Measures evaluated annually
- [ ] **Training & Awareness** (21(2)(g)) - Annual training >95% completion
- [ ] **Cryptography** (21(2)(h)) - Encryption policies defined
- [ ] **Access Control** (21(2)(i)) - Least privilege, quarterly reviews
- [ ] **Multi-Factor Auth** (21(2)(j)) - MFA mandatory for all users

## Incident Reporting Timeline

Critical for NIS2 compliance:

| Timeframe | Report Type | Action |
|-----------|-------------|--------|
| **24 hours** | Early Warning | Notify competent authority of significant incident |
| **72 hours** | Incident Notification | Detailed assessment, IoCs, response actions |
| **1 month** | Final Report | Complete analysis, root cause, preventive measures |

⚠️ **Missing these deadlines can result in penalties up to €10M or 2% of global turnover!**

## Directory Structure

```
nis2/
├── README.md                    # Complete documentation
├── QUICK-START.md              # This file
├── INSTALLATION.md             # Detailed setup guide
├── generate-pdfs.sh            # Automated build script
├── logo.png                    # Your logo (to be added)
│
├── risk-management/            # Risk and BIA templates
│   ├── risk-assessment-report.tex
│   └── business-impact-analysis.tex
│
├── governance/                 # Policy templates
│   └── cybersecurity-policy.tex
│
├── incident-response/          # IR planning
│   └── incident-response-plan.tex
│
├── security-measures/          # Technical policies
│   ├── access-control-policy.tex
│   └── encryption-policy.tex
│
├── business-continuity/        # BC/DR templates
│   └── business-continuity-plan.tex
│
├── supply-chain/               # Vendor management
│   └── vendor-security-assessment.tex
│
├── training-awareness/         # Training programs
│   └── security-awareness-program.tex
│
├── compliance-reporting/       # Compliance docs
│   └── nis2-compliance-report.tex
│
├── examples/                   # Example content (markdown)
│   ├── risk-assessment-example.md
│   ├── incident-response-example.md
│   └── cybersecurity-policy-example.md
│
└── pdf/                        # Generated PDFs go here
    └── README.md
```

## Troubleshooting

**"pdflatex: command not found"**
→ LaTeX not installed. See Step 1 above.

**"logo.png not found"**
→ Either add your logo or run the script (it creates a placeholder)

**PDF has placeholder text**
→ That's normal! Replace `[ORGANIZATION]` and other placeholders with your info

**Table content overflows**
→ Reduce font size or adjust column widths in the .tex file

For more help, see [INSTALLATION.md](INSTALLATION.md)

## Next Steps

1. ✅ Generate PDFs (you're done if you followed the Quick Setup)
2. 📝 Customize templates with your organization's information
3. 📋 Fill in content using examples as guides
4. 👥 Share with stakeholders for review
5. ✔️ Get management approval
6. 📤 Submit to competent authority if required
7. 🔄 Review and update annually

## Important Notes

### Classification

These documents will contain sensitive information once filled out:
- Mark as **CONFIDENTIAL** or **INTERNAL USE ONLY**
- Store securely
- Control access appropriately
- Follow your data protection policies

### Legal Disclaimer

These templates:
- ✅ Are based on NIS2 Directive requirements
- ✅ Follow industry best practices
- ✅ Provide a strong foundation for compliance
- ❌ Do not constitute legal advice
- ❌ Should be reviewed by your legal counsel
- ❌ May need adaptation for your jurisdiction

### Version Control

Maintain proper version control:
- Track all changes
- Document approvals
- Keep historical versions
- Review annually

## Resources

- **Full Documentation**: [README.md](README.md)
- **Installation Guide**: [INSTALLATION.md](INSTALLATION.md)
- **Example Content**: See `examples/` directory
- **NIS2 Directive**: [Official EU Text](https://eur-lex.europa.eu/eli/dir/2022/2555)
- **ENISA Guidance**: [NIS2 Resources](https://www.enisa.europa.eu/topics/nis-directive)

## Support

Need help?
1. Check the [README.md](README.md) for detailed information
2. Review [INSTALLATION.md](INSTALLATION.md) for setup issues
3. Consult the examples in `examples/` directory
4. Contact your cybersecurity consultant or legal counsel

## Quick Reference Cards

### File a Bug Report
```bash
# Check LaTeX version
pdflatex --version

# Try compiling with verbose output
pdflatex document.tex  # Without -interaction=nonstopmode

# Check the .log file
cat document.log
```

### Find & Replace Tips
```bash
# Find all placeholders in templates
grep -r "\[ORGANIZATION\]" nis2/

# Count placeholders
grep -r "\[" nis2/*.tex | wc -l

# List all .tex files
find nis2/ -name "*.tex"
```

---

**Ready to get compliant? Start with `./generate-pdfs.sh` and you'll have your first draft in minutes!** 🚀

Last updated: November 2025 | Version 1.0

# NIS2 Cybersecurity Templates

Comprehensive LaTeX templates for NIS2 Directive (EU) 2022/2555 compliance documentation.

## Overview

This repository contains professional LaTeX templates for all major document types required for NIS2 compliance, organized by category. Each template includes example content in markdown format to help you get started quickly.

## What is NIS2?

The NIS2 Directive (EU) 2022/2555 is the EU's comprehensive cybersecurity legislation that:
- Strengthens security requirements for essential and important entities
- Mandates cybersecurity risk management measures
- Requires incident reporting within strict timelines (24h/72h/1 month)
- Imposes significant penalties for non-compliance (up to €10M or 2% of global turnover)
- Applies to medium and large enterprises (50+ employees or €10M+ turnover) in 18 critical sectors

## Directory Structure

```
nis2/
├── risk-management/           # Risk assessment and management documents
│   └── risk-assessment-report.tex
├── governance/                # Policies and governance frameworks
│   └── cybersecurity-policy.tex
├── incident-response/         # Incident handling and response plans
│   └── incident-response-plan.tex
├── security-measures/         # Technical security policies
│   └── access-control-policy.tex
├── business-continuity/       # BC/DR planning
│   └── business-continuity-plan.tex
├── supply-chain/              # Vendor and supply chain security
│   └── vendor-security-assessment.tex
├── training-awareness/        # Security awareness and training
│   └── security-awareness-program.tex
├── compliance-reporting/      # Compliance assessment and reporting
│   └── nis2-compliance-report.tex
├── examples/                  # Example content in markdown format
│   ├── risk-assessment-example.md
│   ├── incident-response-example.md
│   └── cybersecurity-policy-example.md
└── pdf/                       # Generated PDF documents
```

## Document Categories

### 1. Risk Management
**Purpose**: Identify, assess, and manage cybersecurity risks

**Templates**:
- `risk-assessment-report.tex` - Annual risk assessment documentation
  - Asset inventory
  - Threat and vulnerability analysis
  - Risk register with ratings
  - Risk treatment plans
  - Control assessments

**NIS2 Reference**: Article 21(2)(a) - Risk analysis and security policies

### 2. Governance
**Purpose**: Establish cybersecurity policies and governance framework

**Templates**:
- `cybersecurity-policy.tex` - Comprehensive cybersecurity policy
  - Policy scope and objectives
  - Governance structure and responsibilities
  - Security requirements across all domains
  - Compliance obligations

**NIS2 Reference**: Article 21 - Cybersecurity risk management measures

### 3. Incident Response
**Purpose**: Handle and report cybersecurity incidents

**Templates**:
- `incident-response-plan.tex` - Complete incident response framework
  - IR team structure and contacts
  - Incident classification (severity levels)
  - Response processes (detection to lessons learned)
  - NIS2 reporting requirements and timelines
  - Communication plans
  - Playbooks for common incidents

**NIS2 Reference**: Article 23 - Reporting obligations

**Critical Timelines**:
- ⏰ **24 hours**: Early warning
- ⏰ **72 hours**: Incident notification
- ⏰ **1 month**: Final report

### 4. Security Measures
**Purpose**: Implement technical security controls

**Templates**:
- `access-control-policy.tex` - Access management requirements
  - Multi-factor authentication (MFA)
  - Principle of least privilege
  - Account lifecycle management
  - Password policies
  - Access reviews

**NIS2 Reference**: Article 21(2)(i) - Access control policies and asset management

### 5. Business Continuity
**Purpose**: Ensure operational resilience

**Templates**:
- `business-continuity-plan.tex` - Business continuity framework
  - Business impact analysis (BIA)
  - Recovery time objectives (RTO)
  - Recovery point objectives (RPO)
  - Backup and recovery strategies
  - Testing schedule

**NIS2 Reference**: Article 21(2)(c) - Business continuity and crisis management

### 6. Supply Chain Security
**Purpose**: Manage third-party and vendor risks

**Templates**:
- `vendor-security-assessment.tex` - Supplier evaluation
  - Vendor security questionnaire
  - Risk assessment methodology
  - Security control verification
  - Recommendations

**NIS2 Reference**: Article 21(2)(d) - Supply chain security

### 7. Training & Awareness
**Purpose**: Build security culture and competence

**Templates**:
- `security-awareness-program.tex` - Comprehensive training program
  - Mandatory training requirements
  - Role-based training
  - Basic cyber hygiene practices
  - Phishing simulations
  - Metrics and effectiveness

**NIS2 Reference**: Article 21(2)(g) - Basic cyber hygiene and training

### 8. Compliance & Reporting
**Purpose**: Demonstrate compliance and track progress

**Templates**:
- `nis2-compliance-report.tex` - Annual compliance assessment
  - Compliance status across all requirements
  - KPI tracking
  - Gap analysis
  - Remediation plans
  - Management oversight documentation

**NIS2 Reference**: Article 21(2)(f) - Assessment of security measures effectiveness

## How to Use These Templates

### Prerequisites

Install LaTeX on your system:

**Ubuntu/Debian**:
```bash
sudo apt-get install texlive-full
```

**macOS**:
```bash
brew install --cask mactex
```

**Windows**:
Download and install MiKTeX from https://miktex.org/

### Customizing Templates

1. **Replace placeholders**: Search for `[ORGANIZATION]`, `[NAME]`, `[DATE]`, etc., and replace with your information

2. **Add your logo**: Place your organization's logo as `logo.png` in the same directory, or update the path in the template

3. **Customize content**: Use the example markdown files in the `examples/` folder as guidance for content structure

4. **Adjust colors**: Modify the color definitions in the template preamble if desired

### Generating PDFs

**Compile individual document**:
```bash
cd nis2/risk-management
pdflatex risk-assessment-report.tex
pdflatex risk-assessment-report.tex  # Run twice for TOC and references
```

**Note**: Run `pdflatex` twice to generate correct table of contents and cross-references.

**Generate all PDFs** (see instructions below):
```bash
cd nis2
./generate-all-pdfs.sh
```

### Example Content

The `examples/` folder contains detailed example content demonstrating:
- **Realistic scenarios**: Based on actual NIS2 use cases
- **Complete data**: Tables, risk registers, incident timelines
- **Best practices**: Industry-standard approaches
- **Compliance evidence**: Meeting specific NIS2 requirements

Use these examples as templates for your own content.

## NIS2 Article 21 Requirements Mapping

| Requirement | Template(s) | Description |
|-------------|------------|-------------|
| (a) Risk analysis and security policies | risk-assessment-report.tex, cybersecurity-policy.tex | Comprehensive risk management |
| (b) Incident handling | incident-response-plan.tex | Detection, response, and recovery |
| (c) Business continuity | business-continuity-plan.tex | BC/DR planning and testing |
| (d) Supply chain security | vendor-security-assessment.tex | Third-party risk management |
| (e) Security in acquisition, development, maintenance | [Covered in cybersecurity-policy.tex] | Secure SDLC |
| (f) Effectiveness assessment | nis2-compliance-report.tex | Measuring and reporting effectiveness |
| (g) Basic cyber hygiene and training | security-awareness-program.tex | Training and awareness |
| (h) Cryptography and encryption | [Covered in cybersecurity-policy.tex] | Encryption policies |
| (i) Human resources, access control, asset management | access-control-policy.tex | Access management |
| (j) Multi-factor authentication | access-control-policy.tex | MFA requirements |

## Incident Reporting Quick Reference

### Significant Incident Criteria

A "significant incident" under NIS2 has caused or is capable of causing:
- Severe operational disruption of services
- Financial loss for the entity
- Considerable material or non-material damage to natural or legal persons

### Reporting Timeline

| Timeframe | Report Type | Required Content |
|-----------|-------------|------------------|
| **24 hours** | Early Warning | Basic notification, incident type, preliminary impact |
| **72 hours** | Incident Notification | Type, severity, impact, IoCs, initial assessment, response measures |
| **1 month** | Final Report | Complete analysis, root cause, detailed impact, response actions, preventive measures, recommendations |

### Competent Authorities by Member State (Examples)

- 🇩🇪 **Germany**: BSI (Federal Office for Information Security)
  - Email: nis-meldestelle@bsi.bund.de
  - Sector-specific: BaFin (financial), BNetzA (energy)

- 🇫🇷 **France**: ANSSI (National Cybersecurity Agency)
  - Email: cert-fr@ssi.gouv.fr

- 🇳🇱 **Netherlands**: NCSC (National Cyber Security Centre)
  - Email: cert@ncsc.nl

- 🇵🇱 **Poland**: CSIRT NASK, CSIRT GOV
  - Email: info@cert.gov.pl

*Check your national NIS2 implementation for specific authority contacts*

## Key Features

### Professional Formatting
- Clean, corporate design with customizable colors
- Consistent headers, footers, and branding
- Professional tables and layouts
- Page numbering and document control

### NIS2 Compliance
- Based on Directive (EU) 2022/2555
- Covers all Article 21 requirements
- Includes Article 23 reporting framework
- References official EU guidance

### Practical Content
- Real-world examples
- Industry best practices
- Complete sample data
- Ready-to-use templates

### Easy Customization
- Clear placeholder marking ([ORGANIZATION], etc.)
- Modular structure
- Well-commented LaTeX code
- Example content for guidance

## Penalties for Non-Compliance

### Essential Entities
- Up to **€10 million** OR
- **2% of total worldwide annual turnover**
- Whichever is higher

### Important Entities
- Up to **€7 million** OR
- **1.4% of total worldwide annual turnover**
- Whichever is higher

### Additional Consequences
- Management liability and personal sanctions
- Potential ban from management positions
- Reputational damage
- Operational restrictions

## Timeline

- **October 17, 2024**: NIS2 came into effect (member state transposition deadline)
- **April 17, 2025**: Member states must publish lists of essential and important entities
- **October 17, 2025**: Expected full organizational compliance

## Best Practices

1. **Start Early**: Don't wait for enforcement to begin compliance
2. **Document Everything**: Maintain evidence of all security measures
3. **Test Regularly**: Exercise incident response and business continuity plans
4. **Train Staff**: Ensure all employees understand their responsibilities
5. **Review Continuously**: Update policies and assessments at least annually
6. **Engage Management**: Ensure board-level oversight and approval
7. **Report Promptly**: Don't miss the 24/72h/1 month incident reporting deadlines
8. **Assess Vendors**: Implement supply chain security assessments
9. **Measure Effectiveness**: Track KPIs and demonstrate continuous improvement
10. **Seek Expert Advice**: Consult legal and cybersecurity professionals

## Additional Resources

### Official Sources
- [NIS2 Directive (EU) 2022/2555](https://eur-lex.europa.eu/eli/dir/2022/2555)
- [ENISA NIS2 Resources](https://www.enisa.europa.eu/topics/nis-directive)
- [European Commission Digital Strategy](https://digital-strategy.ec.europa.eu/en/policies/nis2-directive)

### Standards and Frameworks
- ISO/IEC 27001:2022 - Information Security Management
- ISO/IEC 27005:2022 - Information Security Risk Management
- NIST Cybersecurity Framework v1.1
- CIS Controls v8

### Useful Tools
- [ENISA Threat Landscape](https://www.enisa.europa.eu/topics/threat-risk-management/threats-and-trends)
- [MITRE ATT&CK Framework](https://attack.mitre.org/)
- [NIS2 Self-Assessment Tools](https://www.enisa.europa.eu/publications/nis2-technical-implementation-guidance)

## Sectors Covered by NIS2

### Essential Entities (Annex I)
- Energy (electricity, oil, gas, hydrogen)
- Transport (air, rail, water, road)
- Banking and financial market infrastructures
- Health sector
- Drinking water supply and distribution
- Digital infrastructure
- ICT service management
- Public administration
- Space

### Important Entities (Annex II)
- Postal and courier services
- Waste management
- Chemicals production
- Food production and processing
- Manufacturing (medical devices, computers, machinery, vehicles, electrical equipment)
- Digital providers (online marketplaces, search engines, social networks, cloud computing)
- Research organizations

## Contributing

These templates are provided as-is for NIS2 compliance purposes. Organizations should customize them according to:
- Their specific sector requirements
- National transposition laws
- Organizational size and complexity
- Existing security controls
- Risk appetite and tolerance

## Disclaimer

These templates are provided for informational purposes and do not constitute legal advice. Organizations should:
- Consult with legal counsel familiar with NIS2
- Verify requirements with their national competent authority
- Adapt templates to their specific circumstances
- Ensure compliance with all applicable regulations (GDPR, sector-specific rules, etc.)

## Support

For questions or issues:
- Review the example content in `examples/` folder
- Consult official NIS2 guidance from ENISA
- Contact your national competent authority
- Seek professional cybersecurity and legal advice

## Version History

- **v1.0** (2025-01-01): Initial release
  - 8 document categories
  - 8 LaTeX templates
  - 3 comprehensive examples
  - Full NIS2 Article 21 coverage
  - Incident reporting framework

## License

These templates are provided as open resources for NIS2 compliance. Organizations are free to use, modify, and distribute them as needed for compliance purposes.

---

**Prepared for NIS2 Directive Compliance**
**Last Updated**: November 2025
**Template Version**: 1.0

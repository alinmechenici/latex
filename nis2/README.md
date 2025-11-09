# NIS2 Cybersecurity Templates

Comprehensive LaTeX and Typst templates for NIS2 Directive (EU) 2022/2555 compliance documentation.

## Overview

This repository contains professional templates for all major document types required for NIS2 compliance, organized by category. Each template includes example content in markdown format to help you get started quickly.

**Format Support:**
- **LaTeX (.tex)** - Industry-standard document preparation system (all 30 templates)
- **Typst (.typ)** - Modern, fast alternative with simpler syntax (**all 30 templates!**)

**Full dual-format coverage!** Every template is available in both LaTeX and Typst. Choose the format that best suits your workflow! See [TYPST-SUPPORT.md](TYPST-SUPPORT.md) for details.

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
├── governance/                # Policies and governance frameworks (6 templates)
│   ├── cybersecurity-policy.tex
│   ├── asset-management-policy.tex
│   ├── data-classification-policy.tex
│   ├── remote-work-policy.tex
│   ├── acceptable-use-policy.tex
│   └── backup-retention-policy.tex
├── incident-response/         # Incident handling and response plans
│   └── incident-response-plan.tex
├── security-measures/         # Technical security policies
│   └── access-control-policy.tex
├── business-continuity/       # BC/DR planning (2 templates)
│   ├── business-continuity-plan.tex
│   └── disaster-recovery-plan.tex
├── supply-chain/              # Vendor and supply chain security
│   └── vendor-security-assessment.tex
├── training-awareness/        # Security awareness and training
│   └── security-awareness-program.tex
├── compliance-reporting/      # Compliance assessment and reporting
│   └── nis2-compliance-report.tex
├── procedures/                # Operational procedures (2 templates)
│   ├── vulnerability-management-procedure.tex
│   └── change-management-procedure.tex
├── notifications/             # NIS2 regulatory notifications (3 templates)
│   ├── nis2-early-warning-24h.tex
│   ├── nis2-incident-notification-72h.tex
│   └── nis2-final-report-1month.tex
├── playbooks/                 # Incident response playbooks (4 templates)
│   ├── ransomware-response-playbook.tex
│   ├── data-breach-response-playbook.tex
│   ├── ddos-response-playbook.tex
│   └── phishing-campaign-response-playbook.tex
├── forms/                     # Operational forms (3 templates)
│   ├── security-incident-report.tex
│   ├── risk-acceptance-form.tex
│   └── security-exception-request.tex
├── audit/                     # Audit and assessment (1 template)
│   └── internal-security-audit-checklist.tex
├── reports/                   # Testing and management reports (3 templates)
│   ├── penetration-test-report.tex
│   ├── dr-test-report.tex
│   └── executive-security-briefing.tex
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
- `asset-management-policy.tex` - IT asset lifecycle management
  - Asset inventory and classification
  - Lifecycle management (acquisition to disposal)
  - Data sanitization standards
- `data-classification-policy.tex` - Data handling and protection
  - 4-tier classification scheme (CRITICAL/CONFIDENTIAL/INTERNAL/PUBLIC)
  - Handling requirements per classification
  - GDPR and PCI DSS alignment
- `remote-work-policy.tex` - Remote work and BYOD security
  - VPN and secure connectivity requirements
  - Device security (encryption, MDM)
  - BYOD eligibility and controls
- `acceptable-use-policy.tex` - IT resource usage policy
  - Acceptable and prohibited activities
  - Personal use guidelines
  - Monitoring and enforcement
- `backup-retention-policy.tex` - Backup and data retention
  - 3-2-1 backup strategy
  - Retention schedules by data type
  - Ransomware protection (immutable backups)

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
- `disaster-recovery-plan.tex` - IT disaster recovery procedures
  - DR team structure and roles
  - Recovery objectives by tier (4h/24h/48h)
  - Failover and failback procedures
  - DR site management

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

### 9. Operational Procedures
**Purpose**: Standardize operational security processes

**Templates**:
- `vulnerability-management-procedure.tex` - Vulnerability scanning and remediation
  - Scanning schedules (weekly/monthly)
  - Severity classification
  - Remediation SLAs (Critical: 72h, High: 7d, Medium: 30d, Low: 90d)
  - Exception and tracking processes
- `change-management-procedure.tex` - Change control process
  - Change Advisory Board (CAB) procedures
  - Change categories (Standard/Normal/Emergency)
  - Approval workflows
  - Rollback procedures

**NIS2 Reference**: Article 21(2)(e) - Security in acquisition, development, and maintenance

### 10. NIS2 Notifications
**Purpose**: Regulatory incident reporting to competent authorities

**Templates**:
- `nis2-early-warning-24h.tex` - 24-hour early warning
  - Basic incident notification
  - Preliminary impact assessment
  - Contact information
- `nis2-incident-notification-72h.tex` - 72-hour detailed notification
  - Detailed impact assessment
  - Indicators of Compromise (IoCs)
  - Attack timeline
  - Response measures taken
- `nis2-final-report-1month.tex` - 1-month comprehensive final report
  - Complete timeline and root cause analysis
  - Detailed impact breakdown
  - Lessons learned
  - Preventive measures implemented

**NIS2 Reference**: Article 23 - Reporting obligations

### 11. Incident Response Playbooks
**Purpose**: Step-by-step guides for specific incident types

**Templates**:
- `ransomware-response-playbook.tex` - Ransomware attack response
  - Detection and initial response (0-15 min)
  - Containment procedures (15-60 min)
  - Assessment and decision-making (1-4h)
  - Recovery procedures (1-3 days)
  - Critical DO/DO NOT guidance
- `data-breach-response-playbook.tex` - GDPR 72-hour compliance
  - Breach assessment
  - NIS2 and GDPR notification requirements
  - Communication templates
  - Evidence preservation
- `ddos-response-playbook.tex` - DDoS attack mitigation
  - Attack type identification (Volume/Protocol/Application layer)
  - Mitigation strategies (Cloud scrubbing, ISP coordination)
  - Traffic analysis and filtering
- `phishing-campaign-response-playbook.tex` - Social engineering attacks
  - Validation and scoping
  - Email blocking and quarantine
  - User communication
  - Investigation procedures

**NIS2 Reference**: Article 21(2)(b) - Incident handling

### 12. Operational Forms
**Purpose**: Standardized documentation and approvals

**Templates**:
- `security-incident-report.tex` - Incident documentation form
  - Incident classification and severity
  - Affected systems and data
  - Timeline and actions taken
  - NIS2/GDPR reporting status
- `risk-acceptance-form.tex` - Formal risk acceptance
  - Risk description and assessment
  - Business justification
  - Compensating controls
  - Approval authority matrix (Critical/High/Medium/Low)
- `security-exception-request.tex` - Policy exception requests
  - Policy/standard violated
  - Business justification
  - Compensating controls
  - Duration and review requirements

**NIS2 Reference**: Article 21(2)(a) - Risk management

### 13. Audit & Assessment
**Purpose**: Internal security audits and compliance verification

**Templates**:
- `internal-security-audit-checklist.tex` - NIS2 Article 21 audit
  - Comprehensive checklist for all 10 NIS2 requirements
  - Pass/fail verification
  - Technical controls assessment
  - Compliance rate calculation

**NIS2 Reference**: Article 21(2)(f) - Assessment of security measures effectiveness

### 14. Testing & Management Reports
**Purpose**: Security testing results and executive reporting

**Templates**:
- `penetration-test-report.tex` - Security assessment results
  - Executive summary
  - Methodology (reconnaissance, scanning, exploitation)
  - Findings by severity with CVSS scores
  - Remediation timelines and recommendations
- `dr-test-report.tex` - Disaster recovery test results
  - Test overview and objectives
  - RTO/RPO validation
  - System recovery status (pass/fail)
  - Lessons learned and action items
- `executive-security-briefing.tex` - Monthly C-level security report
  - Security posture score
  - KPI dashboard
  - Incident summary
  - Threat landscape
  - Compliance status
  - Budget tracking
  - Recommendations

**NIS2 Reference**: Article 21(2)(c,f) - Business continuity testing and effectiveness assessment

## How to Use These Templates

### Prerequisites

**Option 1: LaTeX** (all 30 templates supported)

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

**Option 2: Typst** (modern alternative, select templates)

**Linux/macOS**:
```bash
curl -fsSL https://typst.app/install.sh | sh
# or: brew install typst (macOS)
```

**Windows**:
```powershell
winget install --id Typst.Typst
```

**Both**: You can install both systems and use whichever suits each template!

### Customizing Templates

1. **Replace placeholders**: Search for `[ORGANIZATION]`, `[NAME]`, `[DATE]`, etc., and replace with your information

2. **Add your logo**: Place your organization's logo as `logo.png` in the same directory, or update the path in the template

3. **Customize content**: Use the example markdown files in the `examples/` folder as guidance for content structure

4. **Adjust colors**: Modify the color definitions in the template preamble if desired

### Generating PDFs

**Option 1: LaTeX (individual document)**
```bash
cd nis2/risk-management
pdflatex risk-assessment-report.tex
pdflatex risk-assessment-report.tex  # Run twice for TOC and references
```
Note: Run `pdflatex` twice to generate correct table of contents and cross-references.

**Option 2: Typst (individual document)**
```bash
cd nis2/risk-management
typst compile risk-assessment-report.typ
# Much faster! Watch mode for live updates:
typst watch risk-assessment-report.typ
```

**Option 3: Generate ALL PDFs (both formats)**
```bash
cd nis2
chmod +x generate-all-pdfs.sh
./generate-all-pdfs.sh
```
The script automatically detects available tools (pdflatex/typst) and generates PDFs from all templates.

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
- Well-commented code (LaTeX and Typst)
- Example content for guidance

### Multiple Format Support - Complete Coverage!
- **LaTeX (.tex)** - Industry-standard, all 30 templates ✅
- **Typst (.typ)** - Modern alternative, all 30 templates ✅
- **10-100x faster** compilation with Typst
- Choose the format that suits your workflow
- Both generate identical professional PDFs
- Conversion script included for customization
- See [TYPST-SUPPORT.md](TYPST-SUPPORT.md) for details

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

- **v2.1** (2025-11-09): Full Typst format support - all templates!
  - Added Typst (.typ) format for ALL 30 templates (100% coverage!)
  - Automated conversion script (convert-to-typst.py) included
  - Enhanced build script supporting both LaTeX and Typst
  - Comprehensive Typst documentation (TYPST-SUPPORT.md)
  - 10-100x faster PDF generation with Typst
  - Users can now choose LaTeX or Typst for every template
  - Both formats maintained in parallel for maximum flexibility

- **v2.0** (2025-11-08): Complete NIS2 compliance suite
  - 14 document categories
  - 30 LaTeX templates
  - 3 comprehensive examples (3,000+ lines)
  - Full NIS2 Article 21 & 23 coverage
  - Complete incident reporting framework (24h/72h/1month)
  - Incident response playbooks (Ransomware, Data Breach, DDoS, Phishing)
  - Operational procedures and forms
  - Audit checklists and testing reports
  - Executive management reporting

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
**Template Version**: 2.1 (30 Templates × 2 Formats = 60 Files!)
**Formats**: LaTeX (.tex) + Typst (.typ) - Complete dual-format coverage

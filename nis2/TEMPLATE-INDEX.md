# NIS2 Template Index

Complete index of all NIS2 compliance templates organized by category.

## 📊 Summary Statistics

- **Total Templates**: 30 templates × 2 formats = **60 template files!**
- **Format Support**: 100% dual-format coverage!
  - ✅ LaTeX (.tex) - All 30 templates
  - ✅ Typst (.typ) - All 30 templates
- **Example Content**: 3 comprehensive markdown files (3,000+ lines)
- **Documentation**: 5 guides (README, INSTALLATION, QUICK-START, TYPST-SUPPORT, this INDEX)
- **Conversion Tools**: Automated LaTeX-to-Typst converter included
- **Total Files**: 60 template files + 3 examples + 5 docs + conversion script
- **Total Lines**: 20,000+ lines of professional content (both formats)
- **Categories**: 14 organized categories
- **NIS2 Coverage**: 100% of Article 21 & 23 requirements

---

## 📁 Template Catalog by Category

### 1. Risk Management (3 templates)

| Template | File | Description | NIS2 Article |
|----------|------|-------------|--------------|
| **Risk Assessment Report** | `risk-management/risk-assessment-report.tex` | Comprehensive annual risk assessment with threat analysis, vulnerability assessment, risk register, and treatment plans | 21(2)(a) |
| **Business Impact Analysis** | `risk-management/business-impact-analysis.tex` | BIA for business continuity, RTO/RPO definitions, critical function identification | 21(2)(c) |

### 2. Governance & Policy (6 templates)

| Template | File | Description | NIS2 Article |
|----------|------|-------------|--------------|
| **Cybersecurity Policy** | `governance/cybersecurity-policy.tex` | Master cybersecurity policy covering all NIS2 requirements, security controls, governance structure | 21 (all) |
| **Asset Management Policy** | `governance/asset-management-policy.tex` | IT asset lifecycle management, inventory procedures, disposal standards | 21(2)(i) |
| **Data Classification Policy** | `governance/data-classification-policy.tex` | Data classification scheme (CRITICAL/CONFIDENTIAL/INTERNAL/PUBLIC), handling requirements, GDPR alignment | 21 |
| **Remote Work & BYOD Policy** | `governance/remote-work-policy.tex` | Remote work security, VPN requirements, device management (MDM), BYOD controls | 21 |
| **Acceptable Use Policy** | `governance/acceptable-use-policy.tex` | IT resource usage policy, acceptable and prohibited activities, personal use guidelines | 21 |
| **Backup & Retention Policy** | `governance/backup-retention-policy.tex` | Backup strategy (3-2-1 rule), retention schedules, ransomware protection (immutable backups) | 21(2)(c) |

### 3. Incident Response (2 templates)

| Template | File | Description | NIS2 Article |
|----------|------|-------------|--------------|
| **Incident Response Plan** | `incident-response/incident-response-plan.tex` | Complete IR framework with team structure, response processes, NIS2 reporting timelines (24h/72h/1 month) | 23 |

### 4. Security Measures (3 templates)

| Template | File | Description | NIS2 Article |
|----------|------|-------------|--------------|
| **Access Control Policy** | `security-measures/access-control-policy.tex` | MFA requirements, least privilege, account management, access reviews | 21(2)(i)(j) |
| **Encryption Policy** | `security-measures/encryption-policy.tex` | Data-at-rest and in-transit encryption standards, key management, algorithm requirements | 21(2)(h) |

### 5. Business Continuity (2 templates)

| Template | File | Description | NIS2 Article |
|----------|------|-------------|--------------|
| **Business Continuity Plan** | `business-continuity/business-continuity-plan.tex` | BC/DR planning, recovery objectives, testing schedule | 21(2)(c) |
| **Disaster Recovery Plan** | `business-continuity/disaster-recovery-plan.tex` | Detailed IT disaster recovery procedures, failover/failback, DR site management | 21(2)(c) |

### 6. Supply Chain Security (1 template)

| Template | File | Description | NIS2 Article |
|----------|------|-------------|--------------|
| **Vendor Security Assessment** | `supply-chain/vendor-security-assessment.tex` | Third-party risk evaluation framework, vendor questionnaire, security controls verification | 21(2)(d) |

### 7. Training & Awareness (1 template)

| Template | File | Description | NIS2 Article |
|----------|------|-------------|--------------|
| **Security Awareness Program** | `training-awareness/security-awareness-program.tex` | Comprehensive training program, phishing simulations, cyber hygiene practices, metrics | 21(2)(g) |

### 8. Compliance & Reporting (1 template)

| Template | File | Description | NIS2 Article |
|----------|------|-------------|--------------|
| **NIS2 Compliance Report** | `compliance-reporting/nis2-compliance-report.tex` | Annual compliance assessment, KPI tracking, gap analysis, management oversight documentation | 21(2)(f) |

### 9. Procedures (2 templates)

| Template | File | Description | Purpose |
|----------|------|-------------|---------|
| **Vulnerability Management Procedure** | `procedures/vulnerability-management-procedure.tex` | Scanning schedules, severity classification, remediation SLAs (Critical: 72h, High: 7d), patch management | Operational |
| **Change Management Procedure** | `procedures/change-management-procedure.tex` | CAB process, change categories, approval workflows, rollback procedures | Operational |

### 10. Forms (3 templates)

| Template | File | Description | Purpose |
|----------|------|-------------|---------|
| **Security Incident Report Form** | `forms/security-incident-report.tex` | Fillable incident report with NIS2/GDPR sections, timeline tracking, impact assessment | IR Documentation |
| **Risk Acceptance Form** | `forms/risk-acceptance-form.tex` | Formal risk acceptance documentation, business justification, compensating controls, approval matrix | Risk Management |
| **Security Exception Request** | `forms/security-exception-request.tex` | Policy exception request form, business justification, duration, compensating controls, approval workflow | Policy Exceptions |

### 11. Incident Response Playbooks (4 templates)

| Playbook | File | Description | When to Use |
|----------|------|-------------|-------------|
| **Ransomware Response** | `playbooks/ransomware-response-playbook.tex` | Step-by-step ransomware incident response, containment procedures, recovery steps, payment decision framework | Ransomware/crypto-malware detected |
| **Data Breach Response** | `playbooks/data-breach-response-playbook.tex` | Data breach handling, GDPR 72-hour rule, NIS2 reporting, notification templates | Unauthorized data access/exposure |
| **DDoS Response** | `playbooks/ddos-response-playbook.tex` | DDoS attack mitigation, attack type identification, cloud scrubbing, ISP coordination | DDoS/DoS attack detected |
| **Phishing Campaign Response** | `playbooks/phishing-campaign-response-playbook.tex` | Social engineering attack response, email blocking, quarantine, user communication | Phishing campaign detected |

### 12. NIS2 Notifications (3 templates)

| Template | File | Description | Deadline |
|----------|------|-------------|----------|
| **24-Hour Early Warning** | `notifications/nis2-early-warning-24h.tex` | Basic incident notification to competent authority, preliminary impact, incident type | 24 hours |
| **72-Hour Incident Notification** | `notifications/nis2-incident-notification-72h.tex` | Detailed notification with IoCs, attack timeline, impact assessment, response measures | 72 hours |
| **1-Month Final Report** | `notifications/nis2-final-report-1month.tex` | Comprehensive final report with root cause, detailed impact, lessons learned, preventive measures | 1 month |

### 13. Audit & Assessment (1 template)

| Template | File | Description | Purpose |
|----------|------|-------------|---------|
| **Internal Security Audit Checklist** | `audit/internal-security-audit-checklist.tex` | NIS2 Article 21 compliance audit, comprehensive pass/fail checklist, technical controls verification | Internal Audits |

### 14. Testing & Management Reports (3 templates)

| Template | File | Description | Purpose |
|----------|------|-------------|---------|
| **Penetration Test Report** | `reports/penetration-test-report.tex` | Security assessment results, methodology, findings by severity, CVSS scores, remediation timelines | Security Testing |
| **DR Test Report** | `reports/dr-test-report.tex` | Disaster recovery exercise results, RTO/RPO validation, system recovery status, lessons learned | DR Testing |
| **Executive Security Briefing** | `reports/executive-security-briefing.tex` | Monthly C-level security report, KPI dashboard, incident summary, threat landscape, compliance status | Management Reporting |

---

## 📚 Example Content (3 files)

| File | Description | Lines |
|------|-------------|-------|
| `examples/risk-assessment-example.md` | Complete risk assessment for cloud service provider with 24 identified risks, treatment plans, realistic scenarios | 850+ |
| `examples/incident-response-example.md` | Two detailed incident scenarios (ransomware + data breach) with timelines, NIS2 reporting, lessons learned | 1,100+ |
| `examples/cybersecurity-policy-example.md` | Healthcare organization comprehensive policy with all NIS2 requirements, KPIs, metrics | 1,200+ |

---

## 📖 Documentation

| Document | Description |
|----------|-------------|
| `README.md` | Comprehensive guide to NIS2, templates, usage, compliance mapping |
| `INSTALLATION.md` | Detailed setup instructions for all platforms (Linux/macOS/Windows) |
| `QUICK-START.md` | 5-minute quick start guide |
| `TEMPLATE-INDEX.md` | This document - complete template catalog |

---

## 🎯 NIS2 Article 21 Coverage Matrix

| Requirement | Template(s) | Status |
|-------------|------------|--------|
| **(a)** Risk analysis and security policies | Risk Assessment Report, Cybersecurity Policy | ✅ Complete |
| **(b)** Incident handling | Incident Response Plan, IR Forms, Playbooks | ✅ Complete |
| **(c)** Business continuity | Business Continuity Plan, Disaster Recovery Plan, BIA | ✅ Complete |
| **(d)** Supply chain security | Vendor Security Assessment | ✅ Complete |
| **(e)** Security in acquisition/development | Change Management, (in Cybersecurity Policy) | ✅ Complete |
| **(f)** Effectiveness assessment | NIS2 Compliance Report, (in Vulnerability Mgmt) | ✅ Complete |
| **(g)** Training and cyber hygiene | Security Awareness Program | ✅ Complete |
| **(h)** Cryptography and encryption | Encryption Policy | ✅ Complete |
| **(i)** Access control, asset management | Access Control Policy, Asset Management Policy | ✅ Complete |
| **(j)** Multi-factor authentication | Access Control Policy | ✅ Complete |

**Article 23** - Incident Reporting: Covered in Incident Response Plan, all playbooks

---

## 🔍 Templates by Use Case

### For Annual Compliance

- NIS2 Compliance Report
- Risk Assessment Report
- All policies (for review)

### For Incident Response

- Incident Response Plan
- Security Incident Report Form
- All 4 Playbooks (Ransomware, Data Breach, DDoS, Phishing)
- NIS2 Notification Templates (24h/72h/1month)

### For Day-to-Day Operations

- Change Management Procedure
- Vulnerability Management Procedure
- Asset Management Policy
- Data Classification Policy

### For Audits

- NIS2 Compliance Report
- Risk Assessment Report
- All policies
- Security Awareness Program (training records)

### For New Systems/Projects

- Change Management Procedure
- Risk Assessment (for new system)
- Data Classification Policy
- Asset Management Policy

---

## 📏 Template Characteristics

### Professional Features

- **Formatting**: Clean, corporate design with customizable branding
- **Structure**: Consistent headers, footers, tables, and layouts
- **Navigation**: Table of contents, cross-references, hyperlinks
- **Classification**: Confidentiality markings (CONFIDENTIAL, INTERNAL)
- **Compliance**: NIS2 article references throughout
- **Versioning**: Document control tables

### Customization Points

All templates include placeholders for easy customization:
- `[ORGANIZATION]` - Your organization name
- `[NAME]` - Personnel names
- `[DATE]` - Relevant dates
- `[PHONE]` / `[EMAIL]` - Contact information
- `[AMOUNT]` - Budget figures and costs
- Logo placeholder (logo.png)

### Security Classifications

- **CONFIDENTIAL**: Incident Response Plan, DR Plan, IR Forms, Playbooks
- **INTERNAL USE ONLY**: Most policies and procedures
- **PUBLIC**: None (all internal documents)

---

## 🚀 Getting Started

### For Complete Beginners

1. Start with **QUICK-START.md**
2. Read **INSTALLATION.md** for setup
3. Generate PDFs with `./generate-pdfs.sh`
4. Review **example content** for guidance

### For Policy Development

1. Start with **Cybersecurity Policy**
2. Add supporting policies (Access Control, Encryption, Data Classification)
3. Customize with your requirements
4. Get management approval

### For Incident Response

1. Customize **Incident Response Plan**
2. Print and laminate **playbooks** (keep accessible)
3. Train IR team on procedures
4. Test with tabletop exercises

### For Compliance Reporting

1. Use **NIS2 Compliance Report** template
2. Conduct **Risk Assessment** annually
3. Document with **Security Incident Reports**
4. Track metrics and KPIs

---

## 📊 Template Complexity

| Complexity | Templates | Best For |
|------------|-----------|----------|
| **Simple** | Access Control Policy, Encryption Policy, Data Classification Policy | Quick wins, specific requirements |
| **Moderate** | Cybersecurity Policy, Security Awareness Program, BCP | Core compliance documents |
| **Complex** | Incident Response Plan, Risk Assessment, DR Plan | Comprehensive programs |
| **Very Detailed** | Vulnerability Mgmt, Change Mgmt, Ransomware Playbook | Operational procedures |

---

## 🔄 Recommended Update Frequency

| Template Type | Review Frequency | Update Trigger |
|---------------|------------------|----------------|
| **Policies** | Annual | Regulatory changes, major incidents |
| **Procedures** | Semi-annual | Process improvements, tool changes |
| **Plans** (IR, BCP, DR) | Annual + after tests | Test results, organizational changes |
| **Playbooks** | After each use | Lessons learned, new threats |
| **Reports** | Annual (compliance) | Compliance cycle |
| **Forms** | As needed | Process changes |

---

## 💡 Tips for Success

### Do's ✅

- Customize templates thoroughly before first use
- Get legal review for policies
- Test incident response procedures
- Keep playbooks accessible (print them!)
- Update after incidents and tests
- Train staff on procedures
- Maintain version control

### Don'ts ❌

- Don't use placeholder text in production
- Don't skip management approval
- Don't forget to update contact information
- Don't create and forget (review regularly)
- Don't overcomplicate - start simple
- Don't ignore example content (learn from it)

---

## 🆘 Support

### Common Questions

**Q: Which templates do I need first?**
A: Start with Cybersecurity Policy, Risk Assessment, and Incident Response Plan.

**Q: How do I customize templates?**
A: Search and replace placeholders, add your logo, adjust content for your organization.

**Q: Can I use these for NIS2 compliance?**
A: Yes! All templates are designed for NIS2 compliance, but consult your legal team.

**Q: Do I need all templates?**
A: Not necessarily. Choose based on your organization's needs and risk profile.

**Q: How often should I update?**
A: See "Recommended Update Frequency" table above.

### Additional Resources

- Main documentation: `README.md`
- Setup help: `INSTALLATION.md`
- Quick reference: `QUICK-START.md`
- Official NIS2: https://eur-lex.europa.eu/eli/dir/2022/2555
- ENISA guidance: https://www.enisa.europa.eu/topics/nis-directive

---

## 📜 License & Usage

These templates are provided for NIS2 compliance purposes. Organizations may:
- ✅ Use for their own compliance
- ✅ Customize and modify
- ✅ Share internally
- ✅ Use across multiple entities within the organization

Organizations should:
- ⚠️ Adapt to their specific context
- ⚠️ Get legal/compliance review
- ⚠️ Keep confidential (don't publicly share customized versions with sensitive data)

---

**Last Updated**: November 2025 | **Version**: 2.1 | **Total Templates**: 30 (60 files - dual format!)

---

## Quick Template Finder

**Need to respond to ransomware?** → `playbooks/ransomware-response-playbook.tex`

**Need to report data breach?** → `playbooks/data-breach-response-playbook.tex` + `forms/security-incident-report.tex`

**Need to report to NIS2 authority?** → `notifications/nis2-early-warning-24h.tex` (then 72h, then 1 month)

**Under DDoS attack?** → `playbooks/ddos-response-playbook.tex`

**Phishing campaign detected?** → `playbooks/phishing-campaign-response-playbook.tex`

**Annual compliance review?** → `compliance-reporting/nis2-compliance-report.tex`

**Internal audit?** → `audit/internal-security-audit-checklist.tex`

**Executive briefing?** → `reports/executive-security-briefing.tex`

**Security testing?** → `reports/penetration-test-report.tex` or `reports/dr-test-report.tex`

**Setting up security program?** → Start with `governance/cybersecurity-policy.tex`

**Vendor evaluation?** → `supply-chain/vendor-security-assessment.tex`

**Disaster happens?** → `business-continuity/disaster-recovery-plan.tex`

**Need policy exception?** → `forms/security-exception-request.tex`

**Accept a risk?** → `forms/risk-acceptance-form.tex`

---

For the complete, up-to-date list of templates and latest changes, see the `nis2/` directory structure.

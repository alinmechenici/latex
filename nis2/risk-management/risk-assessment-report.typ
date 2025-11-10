#set document(title: "Risk Assessment Report", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Risk Assessment Report]
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

// Title Page
#align(center)[
  #v(3cm)
  #text(size: 28pt, fill: nis2blue, weight: "bold")[
    Cybersecurity Risk Assessment Report
  ]

  #v(1cm)
  #text(size: 16pt)[
    NIS2 Directive Compliance
  ]

  #v(2cm)
  #image("logo.png", width: 30%)

  #v(2cm)
  #text(size: 14pt)[
    *[ORGANIZATION NAME]*\
    #v(0.5cm)
    Assessment Period: [START DATE] to [END DATE]\
    Report Date: [REPORT DATE]\
    Version: 1.0
  ]

  #v(2cm)
  #text(size: 11pt, fill: nis2red, weight: "bold")[
    CONFIDENTIAL
  ]

  #v(1cm)
  #text(size: 10pt)[
    _Prepared in accordance with NIS2 Directive (EU) 2022/2555, Article 21(2)(a)_
  ]
]

#pagebreak()

// Document Control
= Document Control

#table(
  columns: (30%, 70%),
  stroke: 0.5pt,
  [*Document Title*], [Cybersecurity Risk Assessment Report],
  [*Document Owner*], [[CISO NAME], Chief Information Security Officer],
  [*Classification*], [CONFIDENTIAL - Internal Use Only],
  [*Version*], [1.0],
  [*Date*], [[REPORT DATE]],
  [*Review Date*], [[REVIEW DATE] (Annual)],
  [*Approver*], [[CEO NAME], Chief Executive Officer],
  [*Distribution*], [Executive Board, Risk Committee, IT Management]
)

#v(1cm)

== Version History

#table(
  columns: (15%, 15%, 40%, 30%),
  stroke: 0.5pt,
  [*Version*], [*Date*], [*Changes*], [*Author*],
  [1.0], [[DATE]], [Initial risk assessment], [[AUTHOR NAME]]
)

#pagebreak()

// Table of Contents
#outline(
  title: [Table of Contents],
  depth: 3,
  indent: auto
)

#pagebreak()

// Executive Summary
= Executive Summary

This Cybersecurity Risk Assessment Report presents a comprehensive analysis of information security risks facing [ORGANIZATION NAME] for the period [START DATE] to [END DATE]. This assessment has been conducted in accordance with the NIS2 Directive (EU) 2022/2555, Article 21(2)(a), which requires essential and important entities to implement appropriate risk analysis and information system security policies.

== Assessment Scope

The scope of this risk assessment includes:

- *Information Systems*: All critical IT infrastructure, applications, and services
- *Data Assets*: Customer data, business-critical information, intellectual property
- *Physical Assets*: Data centers, network equipment, endpoints
- *Personnel*: Employees, contractors, third-party access
- *Processes*: Business operations, IT operations, security controls
- *Third Parties*: Vendors, suppliers, service providers

== Key Findings

#set enum(numbering: "1.")

+ *Total Risks Identified*: [NUMBER] risks across all categories
+ *Critical Risks*: [NUMBER] requiring immediate action (RTO: 30 days)
+ *High Risks*: [NUMBER] requiring priority attention (RTO: 90 days)
+ *Medium Risks*: [NUMBER] requiring planned remediation (RTO: 180 days)
+ *Low Risks*: [NUMBER] for continuous monitoring
+ *Overall Risk Posture*: [ACCEPTABLE/NEEDS IMPROVEMENT/UNACCEPTABLE]

== Critical Risk Areas

The following areas require immediate executive attention:

#table(
  columns: (5%, 40%, 25%, 30%),
  stroke: 0.5pt,
  fill: (col, row) => if row == 0 { nis2blue } else { white },
  [*#*], [*Risk*], [*Impact*], [*Recommended Action*],
  text(fill: white)[*1*], text(fill: white)[*[CRITICAL RISK 1]*], text(fill: white)[*[IMPACT]*], text(fill: white)[*[ACTION]*],
  [2], [[CRITICAL RISK 2]], [[IMPACT]], [[ACTION]],
  [3], [[CRITICAL RISK 3]], [[IMPACT]], [[ACTION]]
)

== Compliance Status

*NIS2 Article 21(2)(a) Compliance*: #text(fill: nis2green)[*COMPLIANT*] / #text(fill: nis2red)[*PARTIAL*] / #text(fill: nis2red)[*NON-COMPLIANT*]

This assessment demonstrates our organization's commitment to identifying and managing cybersecurity risks in accordance with EU regulatory requirements.

== Recommendations

+ Implement immediate remediation for all Critical risks (within 30 days)
+ Allocate budget of [AMOUNT] EUR for security improvements
+ Conduct quarterly risk reassessments for high-risk areas
+ Enhance security awareness training programs
+ Strengthen third-party risk management processes

#pagebreak()

= Introduction

== Purpose

The purpose of this risk assessment is to:

- Identify cybersecurity threats and vulnerabilities affecting [ORGANIZATION]
- Assess the likelihood and impact of identified risks
- Evaluate existing security controls and their effectiveness
- Prioritize risks based on business impact
- Recommend risk treatment strategies
- Demonstrate compliance with NIS2 Article 21 requirements

== Scope

=== In Scope

- All information systems and IT infrastructure
- Business-critical applications and services
- Data processing activities (personal data, business data)
- Physical security of IT facilities
- Human resources and access management
- Third-party relationships and supply chain
- Cloud services and SaaS applications
- Network infrastructure and connectivity
- Endpoint devices (workstations, mobile devices)
- Security operations and incident response capabilities

=== Out of Scope

- Financial risk assessment (covered separately by Finance)
- Operational risks unrelated to cybersecurity
- Physical security of non-IT facilities
- Environmental risks (covered in Business Continuity Plan)

== Regulatory Context

=== NIS2 Directive Requirements

The NIS2 Directive (EU) 2022/2555 requires essential and important entities to take appropriate and proportionate technical, operational and organizational measures to manage cybersecurity risks and prevent or minimize the impact of incidents.

*Article 21(2)(a)* specifically requires:
- Policies on risk analysis and information system security

*Key Obligations*:
- Identify and assess cybersecurity risks
- Implement appropriate security measures
- Regular review and testing of measures
- Incident handling procedures
- Business continuity and disaster recovery
- Supply chain security

=== Penalties for Non-Compliance

- *Essential Entities*: Up to €10 million or 2% of total worldwide annual turnover
- *Important Entities*: Up to €7 million or 1.4% of total worldwide annual turnover
- Management liability and potential disqualification

#pagebreak()

= Methodology

== Risk Assessment Framework

This assessment follows the ISO 27005:2022 risk management methodology, aligned with:

- *ISO/IEC 27001:2022* - Information Security Management
- *NIST Cybersecurity Framework v1.1* - Identify, Protect, Detect, Respond, Recover
- *ENISA Threat Landscape* - European cybersecurity threat intelligence
- *NIS2 Directive* - EU cybersecurity requirements

== Risk Assessment Process

#set enum(numbering: "1.")

+ *Asset Identification* - Inventory all critical assets
+ *Threat Analysis* - Identify potential threat actors and scenarios
+ *Vulnerability Assessment* - Identify weaknesses and gaps
+ *Likelihood Assessment* - Evaluate probability of exploitation
+ *Impact Assessment* - Determine business consequences
+ *Risk Calculation* - Risk Level = Likelihood × Impact
+ *Risk Evaluation* - Compare against risk appetite
+ *Risk Treatment* - Select mitigation strategies

== Risk Rating Methodology

=== Likelihood Scale

#table(
  columns: (20%, 20%, 60%),
  stroke: 0.5pt,
  [*Level*], [*Score*], [*Description*],
  [Very High], [5], [Almost certain to occur (>75% probability in next 12 months)],
  [High], [4], [Likely to occur (50-75% probability)],
  [Medium], [3], [Possible to occur (25-50% probability)],
  [Low], [2], [Unlikely to occur (5-25% probability)],
  [Very Low], [1], [Rare occurrence (<5% probability)]
)

=== Impact Scale

#table(
  columns: (20%, 20%, 60%),
  stroke: 0.5pt,
  [*Level*], [*Score*], [*Description*],
  [Catastrophic], [5], [Severe business disruption, >€1M financial loss, data breach >100K records],
  [Major], [4], [Significant disruption, €500K-1M loss, reputational damage],
  [Moderate], [3], [Noticeable impact, €100K-500K loss, compliance issues],
  [Minor], [2], [Limited impact, €10K-100K loss, temporary disruption],
  [Negligible], [1], [Minimal impact, <€10K loss, no service disruption]
)

=== Risk Matrix

#table(
  columns: (1.5cm, 1.5cm, 1.5cm, 1.5cm, 1.5cm, 1.5cm),
  stroke: 0.5pt,
  align: center,
  [], [*1*], [*2*], [*3*], [*4*], [*5*],
  [*5*],
    text(fill: nis2orange)[*M*],
    text(fill: nis2orange)[*H*],
    text(fill: nis2red)[*H*],
    text(fill: nis2red)[*C*],
    text(fill: nis2red)[*C*],
  [*4*],
    text(fill: nis2green)[*L*],
    text(fill: nis2orange)[*M*],
    text(fill: nis2orange)[*H*],
    text(fill: nis2red)[*H*],
    text(fill: nis2red)[*C*],
  [*3*],
    text(fill: nis2green)[*L*],
    text(fill: nis2green)[*M*],
    text(fill: nis2orange)[*M*],
    text(fill: nis2orange)[*H*],
    text(fill: nis2red)[*H*],
  [*2*],
    text(fill: nis2green)[*L*],
    text(fill: nis2green)[*L*],
    text(fill: nis2green)[*M*],
    text(fill: nis2orange)[*M*],
    text(fill: nis2orange)[*H*],
  [*1*],
    text(fill: nis2green)[*L*],
    text(fill: nis2green)[*L*],
    text(fill: nis2green)[*L*],
    text(fill: nis2green)[*M*],
    text(fill: nis2orange)[*M*]
)

*Legend*: L = Low (1-4) | M = Medium (5-9) | H = High (10-15) | C = Critical (16-25)

#pagebreak()

= Asset Inventory

== Information Assets

#table(
  columns: (5%, 30%, 35%, 15%, 15%),
  stroke: 0.5pt,
  [*ID*], [*Asset*], [*Description*], [*Owner*], [*Classification*],
  [A-001], [Customer Database], [Production customer data (PII, payment info)], [IT Director], [CRITICAL],
  [A-002], [ERP System], [Business operations platform], [COO], [CRITICAL],
  [A-003], [Email System], [Corporate email (Microsoft 365)], [IT Director], [CONFIDENTIAL],
  [A-004], [File Server], [Shared documents and files], [IT Director], [CONFIDENTIAL],
  [A-005], [Backup Systems], [All backup infrastructure], [IT Director], [CRITICAL],
  [A-006], [Website], [Public-facing corporate website], [Marketing], [INTERNAL],
  [A-007], [Active Directory], [Identity and access management], [IT Director], [CRITICAL],
  [A-008], [[ASSET]], [[DESCRIPTION]], [[OWNER]], [[CLASSIFICATION]]
)

== Technical Infrastructure

#table(
  columns: (5%, 35%, 35%, 25%),
  stroke: 0.5pt,
  [*ID*], [*Infrastructure*], [*Description*], [*Criticality*],
  [I-001], [Primary Data Center], [On-premises production environment], [Critical],
  [I-002], [Cloud Infrastructure (AWS/Azure)], [IaaS/PaaS services], [Critical],
  [I-003], [Network Equipment], [Firewalls, switches, routers], [Critical],
  [I-004], [Endpoint Devices], [Workstations, laptops (500+ devices)], [High],
  [I-005], [Mobile Devices], [Corporate smartphones/tablets], [Medium],
  [I-006], [[INFRASTRUCTURE]], [[DESCRIPTION]], [[CRITICALITY]]
)

#pagebreak()

= Threat Analysis

== Threat Landscape

Based on ENISA Threat Landscape 2024 and sector-specific intelligence:

=== Top Cyber Threats

+ *Ransomware* - #text(fill: nis2red)[CRITICAL THREAT]
  - Trend: Increasing sophistication, double/triple extortion
  - Recent incidents: [Examples from sector]
  - Threat actors: LockBit, BlackCat/ALPHV, Cl0p

+ *Phishing & Social Engineering* - #text(fill: nis2red)[HIGH THREAT]
  - Spear phishing targeting executives
  - Business Email Compromise (BEC)
  - Credential harvesting campaigns

+ *DDoS Attacks* - #text(fill: nis2orange)[MEDIUM THREAT]
  - Volumetric attacks on public services
  - Application-layer attacks

+ *Data Breaches* - #text(fill: nis2red)[HIGH THREAT]
  - Insider threats (malicious/negligent)
  - Misconfigured cloud storage
  - Third-party compromises

+ *Supply Chain Attacks* - #text(fill: nis2orange)[MEDIUM THREAT]
  - Compromised software updates
  - Vendor access exploitation

+ *Zero-Day Exploits* - #text(fill: nis2orange)[MEDIUM THREAT]
  - Unpatched vulnerabilities
  - Advanced Persistent Threats (APTs)

== Threat Actors

#table(
  columns: (25%, 25%, 25%, 25%),
  stroke: 0.5pt,
  [*Actor Type*], [*Motivation*], [*Capability*], [*Likelihood*],
  [Cybercriminals], [Financial gain], [High], [Very High],
  [Nation-State], [Espionage, disruption], [Very High], [Medium],
  [Hacktivists], [Ideology, publicity], [Medium], [Low],
  [Insider (Malicious)], [Revenge, financial], [Medium], [Low],
  [Insider (Negligent)], [Unintentional], [Low], [High]
)

#pagebreak()

= Vulnerability Assessment

== Technical Vulnerabilities

#table(
  columns: (5%, 35%, 30%, 15%, 15%),
  stroke: 0.5pt,
  [*ID*], [*Vulnerability*], [*Affected Systems*], [*Severity*], [*Status*],
  [V-001], [Unpatched systems (>30 days)], [[NUMBER]] servers/workstations], [HIGH], [Open],
  [V-002], [Weak password policies], [Active Directory], [MEDIUM], [Open],
  [V-003], [Missing MFA on admin accounts], [Critical systems], [CRITICAL], [Open],
  [V-004], [Unencrypted data at rest], [File servers], [HIGH], [Open],
  [V-005], [Outdated firewall rules], [Perimeter network], [MEDIUM], [Open],
  [V-006], [No endpoint detection (EDR)], [[NUMBER]] endpoints], [HIGH], [Open],
  [V-007], [[VULNERABILITY]], [[SYSTEMS]], [[SEVERITY]], [[STATUS]]
)

== Organizational Vulnerabilities

- *Insufficient security awareness training* (Last training: [DATE])
- *No formal incident response plan* / *Untested incident response plan*
- *Limited security monitoring* (No 24/7 SOC)
- *Inadequate backup testing* (Last test: [DATE])
- *Incomplete asset inventory*
- *No regular penetration testing*
- *Insufficient vendor security assessments*

== Process Vulnerabilities

- *Change management* - No formal CAB process
- *Access reviews* - Irregular access rights reviews
- *Vulnerability management* - No defined patching SLAs
- *Data classification* - Inconsistent data handling
- *Security logging* - Incomplete log retention

#pagebreak()

= Risk Register

== Critical Risks (Score 16-25)

#table(
  columns: (1.5cm, 6cm, 1.5cm, 1.5cm, 1.5cm, 4cm),
  stroke: 0.5pt,
  align: (center, left, center, center, center, left),
  fill: (col, row) => if row == 0 { nis2red } else { white },
  text(fill: white)[*ID*], text(fill: white)[*Risk Description*], text(fill: white)[*L*], text(fill: white)[*I*], text(fill: white)[*Risk*], text(fill: white)[*Owner*],
  [R-001], [Ransomware attack due to unpatched vulnerabilities and lack of endpoint protection], [4], [5], [20], [IT Director],
  [R-002], [Data breach through misconfigured cloud storage with customer PII exposure], [3], [5], [15], [CISO],
  [R-003], [Business disruption from inadequate backup/DR capabilities], [4], [4], [16], [IT Director],
  [R-004], [[CRITICAL RISK DESCRIPTION]], [[L]], [[I]], [[SCORE]], [[OWNER]]
)

== High Risks (Score 10-15)

#table(
  columns: (1.5cm, 6cm, 1.5cm, 1.5cm, 1.5cm, 4cm),
  stroke: 0.5pt,
  align: (center, left, center, center, center, left),
  fill: (col, row) => if row == 0 { nis2orange } else { white },
  text(fill: white)[*ID*], text(fill: white)[*Risk Description*], text(fill: white)[*L*], text(fill: white)[*I*], text(fill: white)[*Risk*], text(fill: white)[*Owner*],
  [R-005], [Phishing attack leading to credential compromise and unauthorized access], [4], [3], [12], [CISO],
  [R-006], [DDoS attack causing extended service unavailability], [3], [4], [12], [IT Director],
  [R-007], [Insider threat - unauthorized data access or exfiltration], [2], [5], [10], [HR Director],
  [R-008], [Supply chain compromise through vendor access], [3], [4], [12], [CISO],
  [R-009], [[HIGH RISK DESCRIPTION]], [[L]], [[I]], [[SCORE]], [[OWNER]]
)

== Medium Risks (Score 5-9)

#table(
  columns: (1.5cm, 7cm, 1.5cm, 1.5cm, 1.5cm, 3.5cm),
  stroke: 0.5pt,
  align: (center, left, center, center, center, left),
  [*ID*], [*Risk Description*], [*L*], [*I*], [*Risk*], [*Owner*],
  [R-010], [Insufficient security awareness leading to successful social engineering], [4], [2], [8], [HR Director],
  [R-011], [Compliance violations due to inadequate data protection measures], [3], [3], [9], [DPO],
  [R-012], [Unauthorized access through weak password policies], [3], [2], [6], [IT Director],
  [R-013], [Data loss from hardware failure], [2], [3], [6], [IT Director],
  [R-014], [[MEDIUM RISK DESCRIPTION]], [[L]], [[I]], [[SCORE]], [[OWNER]]
)

== Low Risks (Score 1-4)

#table(
  columns: (1.5cm, 8cm, 1.5cm, 1.5cm, 1.5cm, 3cm),
  stroke: 0.5pt,
  align: (center, left, center, center, center, left),
  [*ID*], [*Risk Description*], [*L*], [*I*], [*Risk*], [*Owner*],
  [R-015], [Physical security breach at office location], [1], [2], [2], [Facilities],
  [R-016], [Website defacement], [2], [1], [2], [IT Director],
  [R-017], [[LOW RISK DESCRIPTION]], [[L]], [[I]], [[SCORE]], [[OWNER]]
)

#pagebreak()

= Detailed Risk Analysis

== R-001: Ransomware Attack (CRITICAL)

*Risk Description*: Ransomware attack exploiting unpatched vulnerabilities and lack of comprehensive endpoint protection, leading to encryption of critical business systems and data.

*Likelihood*: High (4/5)
- Ransomware is the #1 threat in current landscape
- [NUMBER] unpatched systems identified
- Limited EDR deployment
- Previous incidents in sector

*Impact*: Catastrophic (5/5)
- Complete business disruption (RTO > 72 hours)
- Financial loss: Estimated €[AMOUNT]M (ransom + recovery + lost revenue)
- Regulatory penalties (NIS2 non-compliance)
- Reputational damage
- Potential customer data compromise

*Current Controls*:
- Antivirus software (signature-based, limited effectiveness)
- Firewall and network segmentation (partial)
- Backups (weekly, last test [DATE])

*Control Gaps*:
- No advanced endpoint detection and response (EDR)
- Inconsistent patching (>30-day lag)
- Limited network segmentation
- No email filtering for malicious attachments
- Insufficient backup testing and offline backups

*Treatment Recommendation*: MITIGATE
+ Deploy EDR solution across all endpoints (Priority 1, 30 days)
+ Implement rigorous patch management (14-day SLA for critical patches)
+ Enhance email security with advanced threat protection
+ Implement 3-2-1 backup strategy with immutable backups
+ Conduct ransomware response tabletop exercise
+ Budget required: €[AMOUNT]

*Residual Risk*: Medium (6) - After implementing controls

---

== R-002: Data Breach - Cloud Misconfiguration (CRITICAL)

*Risk Description*: Unauthorized access to customer personal data (PII) through misconfigured cloud storage, leading to GDPR/NIS2 breach notification requirements.

*Likelihood*: Medium (3/5)
- Common misconfiguration issues identified in cloud audit
- Multiple cloud environments (AWS, Azure, SaaS)
- Insufficient cloud security expertise
- Past incidents in similar organizations

*Impact*: Catastrophic (5/5)
- Customer PII exposure (estimated [NUMBER] records)
- GDPR penalties: Up to €20M or 4% of turnover
- NIS2 penalties: Up to €10M or 2% of turnover
- Mandatory breach notification (72 hours)
- Class-action lawsuits potential
- Severe reputational damage and customer churn

*Current Controls*:
- Cloud provider default security settings
- IAM policies (partially implemented)
- Periodic manual configuration reviews

*Control Gaps*:
- No Cloud Security Posture Management (CSPM) tools
- Inconsistent access controls across cloud environments
- Missing data encryption at rest for some resources
- No automated compliance monitoring
- Insufficient logging and monitoring

*Treatment Recommendation*: MITIGATE
+ Implement CSPM solution for continuous monitoring (30 days)
+ Conduct comprehensive cloud security audit (immediate)
+ Enforce encryption at rest for all cloud storage
+ Implement least-privilege access across all cloud resources
+ Enable CloudTrail/Azure Monitor with SIEM integration
+ Develop cloud security policy and standards
+ Budget required: €[AMOUNT]

*Residual Risk*: Low (4) - After implementing controls

---

== R-003: Inadequate Business Continuity/DR (CRITICAL)

*Risk Description*: Extended business disruption due to inadequate backup and disaster recovery capabilities following major incident or disaster.

*Likelihood*: High (4/5)
- Last DR test: [DATE] (>12 months ago)
- RTO/RPO not formally defined for all systems
- Single point of failure in infrastructure
- Untested backup restoration procedures

*Impact*: Major (4/5)
- Business disruption >72 hours
- Revenue loss: €[AMOUNT] per day
- Customer service degradation
- Contract penalties (SLA violations)
- Regulatory scrutiny

*Current Controls*:
- Daily backups of critical systems
- Offsite backup storage
- Documented DR plan (not recently tested)

*Control Gaps*:
- DR plan not tested in [TIMEFRAME]
- No automated failover capabilities
- Unclear RTO/RPO requirements
- Single data center dependency
- Backup restoration not regularly tested

*Treatment Recommendation*: MITIGATE
+ Conduct comprehensive DR test exercise (60 days)
+ Define and document RTO/RPO for all critical systems
+ Implement automated backup testing
+ Establish secondary site or cloud-based DR
+ Update and test DR plan quarterly
+ Budget required: €[AMOUNT]

*Residual Risk*: Medium (8) - After implementing controls

#pagebreak()

= Risk Treatment Plan

== Treatment Strategies

#table(
  columns: (25%, 75%),
  stroke: 0.5pt,
  [*Strategy*], [*Description*],
  [*Avoid*], [Eliminate the risk by discontinuing the activity],
  [*Mitigate*], [Reduce likelihood or impact through controls (most common)],
  [*Transfer*], [Share risk through insurance or outsourcing],
  [*Accept*], [Accept risk when cost of mitigation exceeds potential impact]
)

== Immediate Actions (0-30 days)

#table(
  columns: (1.5cm, 5cm, 3cm, 2cm, 3cm, 3.5cm),
  stroke: 0.5pt,
  [*Risk*], [*Action*], [*Strategy*], [*Cost*], [*Owner*], [*Due Date*],
  [R-001], [Deploy EDR on critical servers], [Mitigate], [€[AMOUNT]], [IT Director], [[DATE]],
  [R-002], [Cloud security audit], [Mitigate], [€[AMOUNT]], [CISO], [[DATE]],
  [R-003], [Define RTO/RPO requirements], [Mitigate], [€0], [IT Director], [[DATE]],
  [R-005], [Implement MFA on all admin accounts], [Mitigate], [€[AMOUNT]], [IT Director], [[DATE]],
  [R-008], [Vendor security assessment], [Mitigate], [€[AMOUNT]], [CISO], [[DATE]]
)

*Total Budget (0-30 days)*: €[AMOUNT]

== Short-term Actions (31-90 days)

#table(
  columns: (1.5cm, 5cm, 3cm, 2cm, 3cm, 3.5cm),
  stroke: 0.5pt,
  [*Risk*], [*Action*], [*Strategy*], [*Cost*], [*Owner*], [*Due Date*],
  [R-001], [Implement enterprise EDR solution], [Mitigate], [€[AMOUNT]], [IT Director], [[DATE]],
  [R-001], [Email security enhancement], [Mitigate], [€[AMOUNT]], [IT Director], [[DATE]],
  [R-002], [Implement CSPM tool], [Mitigate], [€[AMOUNT]], [CISO], [[DATE]],
  [R-003], [Conduct DR test exercise], [Mitigate], [€[AMOUNT]], [IT Director], [[DATE]],
  [R-006], [DDoS protection service], [Transfer], [€[AMOUNT]], [IT Director], [[DATE]]
)

*Total Budget (31-90 days)*: €[AMOUNT]

== Medium-term Actions (91-180 days)

#table(
  columns: (1.5cm, 5cm, 3cm, 2cm, 3cm, 3.5cm),
  stroke: 0.5pt,
  [*Risk*], [*Action*], [*Strategy*], [*Cost*], [*Owner*], [*Due Date*],
  [R-001], [3-2-1 backup strategy], [Mitigate], [€[AMOUNT]], [IT Director], [[DATE]],
  [R-003], [DR site establishment], [Mitigate], [€[AMOUNT]], [IT Director], [[DATE]],
  [R-007], [Data Loss Prevention (DLP)], [Mitigate], [€[AMOUNT]], [CISO], [[DATE]],
  [R-010], [Security awareness program], [Mitigate], [€[AMOUNT]], [HR Director], [[DATE]],
  [R-011], [Compliance management platform], [Mitigate], [€[AMOUNT]], [DPO], [[DATE]]
)

*Total Budget (91-180 days)*: €[AMOUNT]

== Total Investment Required

#table(
  columns: (40%, 30%, 30%),
  stroke: 0.5pt,
  [*Period*], [*CAPEX*], [*OPEX (Annual)*],
  [Immediate (0-30 days)], [€[AMOUNT]], [€[AMOUNT]],
  [Short-term (31-90 days)], [€[AMOUNT]], [€[AMOUNT]],
  [Medium-term (91-180 days)], [€[AMOUNT]], [€[AMOUNT]],
  [*Total*], [*€[AMOUNT]*], [*€[AMOUNT]*]
)

#pagebreak()

= Recommendations

== Strategic Recommendations

+ *Establish Risk Management Framework*
  - Formalize risk management process
  - Quarterly risk assessments
  - Risk committee with executive oversight

+ *Increase Security Investment*
  - Allocate €[AMOUNT] for immediate risk mitigation
  - Plan for €[AMOUNT] annual security budget
  - Prioritize Critical and High risks

+ *Enhance Security Operations*
  - Establish 24/7 security monitoring (SOC)
  - Implement Security Information and Event Management (SIEM)
  - Develop incident response capabilities

+ *Strengthen Governance*
  - Board-level cybersecurity reporting
  - Appoint dedicated CISO
  - Implement cybersecurity policies

+ *Improve Resilience*
  - Quarterly DR testing
  - Redundant infrastructure
  - Comprehensive backup strategy

== Tactical Recommendations

+ *Patch Management*: 14-day SLA for critical patches, 30 days for high
+ *Endpoint Protection*: Deploy EDR across 100% of estate
+ *Access Control*: Enforce MFA on all accounts, implement PAM
+ *Data Protection*: Encryption at rest and in transit, DLP implementation
+ *Network Security*: Zero-trust architecture, micro-segmentation
+ *Security Awareness*: Mandatory quarterly training, phishing simulations
+ *Vendor Management*: Security assessments for all critical vendors
+ *Testing*: Annual penetration testing, quarterly vulnerability scans

#pagebreak()

= Conclusion

This comprehensive risk assessment has identified [NUMBER] cybersecurity risks across [ORGANIZATION]'s IT environment, with [NUMBER] rated as Critical or High priority. The assessment demonstrates compliance with NIS2 Directive Article 21(2)(a) requirements for risk analysis and security policies.

== Key Takeaways

+ *Immediate action required* on [NUMBER] Critical risks within 30 days
+ *Total investment needed*: €[AMOUNT] CAPEX + €[AMOUNT] annual OPEX
+ *Compliance status*: Partial - requires urgent remediation to achieve full NIS2 compliance
+ *Residual risk level*: [TARGET] after implementing recommended controls
+ *Next assessment*: [DATE] (12 months or following major changes)

== NIS2 Compliance Attestation

This risk assessment satisfies the requirements of:
- *Article 21(2)(a)*: Risk analysis and information system security policies
- *Article 21(2)(f)*: Assessment of effectiveness of security measures

The identified risks and treatment plan provide the foundation for our organization's cybersecurity risk management framework in accordance with the NIS2 Directive.

#v(2cm)

== Approvals

#table(
  columns: (30%, 30%, 20%, 20%),
  stroke: 0.5pt,
  [*Role*], [*Name*], [*Signature*], [*Date*],
  [Chief Information Security Officer], [[CISO NAME]], [________________], [[DATE]],
  [Chief Technology Officer], [[CTO NAME]], [________________], [[DATE]],
  [Chief Executive Officer], [[CEO NAME]], [________________], [[DATE]],
  [Risk Committee Chair], [[CHAIR NAME]], [________________], [[DATE]]
)

#pagebreak()

= Appendices

== Appendix A: Risk Assessment Questionnaire

[Questionnaire used for risk identification and analysis]

== Appendix B: Asset Inventory (Complete)

[Full detailed asset inventory]

== Appendix C: Vulnerability Scan Results

[Technical vulnerability scanning reports]

== Appendix D: Threat Intelligence Sources

[Sources consulted for threat analysis]

== Appendix E: Risk Treatment Cost-Benefit Analysis

[Detailed financial analysis of risk treatments]

== Appendix F: Compliance Mapping

[Mapping to NIS2 Article 21 requirements]

#pagebreak()

= Glossary

#table(
  columns: (30%, 70%),
  stroke: 0.5pt,
  [*Term*], [*Definition*],
  [*APT*], [Advanced Persistent Threat - sophisticated, targeted cyberattack],
  [*BIA*], [Business Impact Analysis],
  [*CSPM*], [Cloud Security Posture Management],
  [*DLP*], [Data Loss Prevention],
  [*DR*], [Disaster Recovery],
  [*EDR*], [Endpoint Detection and Response],
  [*GDPR*], [General Data Protection Regulation (EU) 2016/679],
  [*IoC*], [Indicator of Compromise],
  [*MFA*], [Multi-Factor Authentication],
  [*NIS2*], [Network and Information Security Directive (EU) 2022/2555],
  [*PAM*], [Privileged Access Management],
  [*PII*], [Personally Identifiable Information],
  [*RPO*], [Recovery Point Objective - maximum acceptable data loss],
  [*RTO*], [Recovery Time Objective - maximum acceptable downtime],
  [*SIEM*], [Security Information and Event Management],
  [*SOC*], [Security Operations Center]
)

---

#align(center)[
  *END OF REPORT*

  #v(1cm)

  This document is CONFIDENTIAL and intended solely for use by [ORGANIZATION].

  Unauthorized distribution is prohibited.
]

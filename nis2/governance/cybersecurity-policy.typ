#set document(title: "Cybersecurity Policy", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Cybersecurity Policy]
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

\documentclass[11pt,a4paper]{article}












\geometry{margin=1in}

\definecolor{nis2blue}{RGB}{0,51,153}
\definecolor{nis2gray}{RGB}{100,100,100}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Cybersecurity Policy*]}
\fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
\fancyfoot[L]{#text(fill: rgb("nis2gray"))[\small \jobname]}
\fancyfoot[C]{#text(fill: rgb("nis2gray"))[\small Internal Use Only]}
\fancyfoot[R]{#text(fill: rgb("nis2gray"))[\small Page \thepage\ of \pageref{LastPage]}}

\renewcommand{\headrulewidth}{2pt}
\renewcommand{\footrulewidth}{1pt}

\hypersetup{
    colorlinks=true,
    linkcolor=nis2blue,
    filecolor=nis2blue,
    urlcolor=nis2blue,
}



\begin{titlepage}
    \centering
    \vspace*{2cm}

    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Cybersecurity Policy]\par}
    #v(0.5cm)
    {\Large NIS2 Directive Compliance\par}
    #v(2cm)

    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Effective Date:* \today\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    #v(0.5cm)
    {\Large*Review Date:* [REVIEW DATE]\par}
    #v(2cm)

    {\large*Classification:* Internal Use Only\par}
    \vfill

    {\large Owner: Chief Information Security Officer (CISO)\par}
    {\large Approved by: [MANAGEMENT BOARD]\par}
    #v(1cm)

    {\small This policy complies with NIS2 Directive (EU) 2022/2555 Article 21\par}
\end{titlepage}

#outline()
#pagebreak()

= Document Control

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Document Title* & Cybersecurity Policy ,

*Document Owner* & Chief Information Security Officer ,

*Version* & 1.0 ,

*Effective Date* & \today ,

*Review Frequency* & Annual ,

*Next Review Date* & [DATE] ,

)
\caption{Document Control Information}
\end{table}

== Version History
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Version* & *Date* & *Author* & *Changes* ,

1.0 & \today & [Author] & Initial version ,

)
\caption{Version History}
\end{table}

= Purpose and Scope

== Purpose
This Cybersecurity Policy establishes the framework for protecting [ORGANIZATION]'s information assets, network infrastructure, and information systems in compliance with the NIS2 Directive (EU) 2022/2555.

The policy aims to:

    - Ensure confidentiality, integrity, and availability of information systems
    - Protect against cybersecurity threats and incidents
    - Establish clear roles and responsibilities for cybersecurity
    - Ensure compliance with NIS2 requirements
    - Minimize cybersecurity risks to the organization


== Scope
This policy applies to:

    - All employees, contractors, and third parties with access to organizational systems
    - All information systems, networks, and data assets
    - All locations and facilities operated by [ORGANIZATION]
    - Cloud services and external service providers


= Regulatory Context

== NIS2 Directive Compliance
This policy implements the cybersecurity risk management measures required by Article 21 of the NIS2 Directive, including:


    - Risk analysis and information system security policies
    - Incident handling procedures
    - Business continuity and crisis management
    - Supply chain security
    - Security in network and information systems acquisition, development, and maintenance
    - Policies and procedures to assess the effectiveness of cybersecurity measures
    - Basic cyber hygiene practices and cybersecurity training
    - Policies and procedures regarding cryptography and encryption
    - Human resources security, access control policies, and asset management
    - Multi-factor authentication or continuous authentication solutions


= Governance Structure

== Roles and Responsibilities

=== Management Body

    - Ultimate responsibility for cybersecurity risk management
    - Approval of cybersecurity policies and strategies
    - Oversight of cybersecurity measures implementation
    - Approval of budget and resources for cybersecurity


=== Chief Information Security Officer (CISO)

    - Development and maintenance of cybersecurity policies
    - Implementation of cybersecurity risk management framework
    - Coordination of incident response activities
    - Reporting to management on cybersecurity posture
    - Liaison with regulatory authorities


=== IT Department

    - Implementation of technical security controls
    - System and network security management
    - Security monitoring and vulnerability management
    - Support for incident response


=== All Employees

    - Compliance with cybersecurity policies and procedures
    - Reporting of security incidents and suspicious activities
    - Participation in mandatory security awareness training
    - Protection of access credentials and sensitive information


= Cybersecurity Risk Management

== Risk Assessment

    - Annual comprehensive risk assessments shall be conducted
    - Ad-hoc assessments for significant system changes
    - Risk assessments follow ISO 27005 methodology
    - Results documented in Risk Assessment Reports


== Risk Treatment
All identified risks shall be treated through one of the following approaches:

    - *Mitigate:* Implement controls to reduce risk
    - *Accept:* Formally accept residual risk (management approval required)
    - *Transfer:* Transfer risk through insurance or contracts
    - *Avoid:* Eliminate the risk-causing activity


= Security Measures

== Access Control

    - Principle of least privilege enforced
    - Multi-factor authentication (MFA) required for all users
    - Regular access reviews conducted quarterly
    - Immediate revocation of access upon termination


== Cryptography and Encryption

    - Data at rest encrypted using AES-256 or equivalent
    - Data in transit protected using TLS 1.3 or higher
    - Key management procedures in place
    - Encryption standards reviewed annually


== Network Security

    - Network segmentation implemented
    - Firewalls and intrusion detection/prevention systems deployed
    - Regular network security assessments
    - Secure remote access via VPN


== Vulnerability Management

    - Monthly vulnerability scanning
    - Critical patches applied within 72 hours
    - High-priority patches applied within 7 days
    - Annual penetration testing


== Malware Protection

    - Anti-malware solutions deployed on all endpoints
    - Real-time scanning enabled
    - Definitions updated automatically
    - Regular security awareness training on malware threats


= Incident Management

== Incident Detection and Reporting

    - 24/7 security monitoring capability
    - All incidents reported immediately to CISO
    - Incident reporting hotline available
    - Automated alerting for critical events


== NIS2 Incident Reporting Requirements
Significant incidents must be reported to competent authorities:

    - *Early warning:* Within 24 hours of awareness
    - *Incident notification:* Within 72 hours with initial assessment
    - *Final report:* Within 1 month with detailed analysis


= Business Continuity and Resilience

== Business Continuity Planning

    - Business impact analysis conducted annually
    - Recovery time objectives (RTO) defined for critical systems
    - Recovery point objectives (RPO) established
    - Business continuity plans tested annually


== Backup and Recovery

    - Daily backups of critical systems
    - Backup integrity tested monthly
    - Off-site backup storage maintained
    - Documented recovery procedures


= Supply Chain Security

== Third-Party Risk Management

    - Security assessments of suppliers and service providers
    - Contractual security requirements in agreements
    - Regular vendor security reviews
    - Incident notification requirements for suppliers


= Training and Awareness

== Security Awareness Program

    - Mandatory annual security awareness training
    - Role-based security training
    - Phishing simulation exercises
    - Regular security communications


== Basic Cyber Hygiene
Training covers:

    - Password security and management
    - Phishing and social engineering awareness
    - Safe internet and email usage
    - Physical security awareness
    - Mobile device security


= Compliance and Monitoring

== Policy Compliance

    - Regular compliance audits conducted
    - Non-compliance investigated and addressed
    - Disciplinary action for policy violations


== Effectiveness Evaluation

    - Annual review of security measure effectiveness
    - Key performance indicators (KPIs) tracked
    - Continuous improvement process


= Policy Review and Updates

This policy shall be reviewed:

    - Annually at minimum
    - Following significant security incidents
    - When regulatory requirements change
    - When organizational changes affect security


= Related Documents

    - Incident Response Plan
    - Risk Assessment Report
    - Business Continuity Plan
    - Access Control Policy
    - Encryption Policy
    - Acceptable Use Policy


= Approval

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Signature & Date* ,

CISO & & ,

CEO & & ,

Management Board & & ,

)
\caption{Policy Approval}
\end{table}



#set document(title: "Nis2 Compliance Report", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Nis2 Compliance Report]
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
\definecolor{compliant}{RGB}{0,153,51}
\definecolor{partial}{RGB}{255,153,0}
\definecolor{noncompliant}{RGB}{204,0,0}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*NIS2 Compliance Report*]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[NIS2 Compliance Report]\par}
    #v(0.5cm)
    {\Large Annual Compliance Assessment\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Reporting Period:* [PERIOD]\par}
    #v(0.5cm)
    {\Large*Report Date:* \today\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    \vfill
    {\small Directive (EU) 2022/2555 - NIS2 Compliance Assessment\par}
\end{titlepage}

#outline()
#pagebreak()

= Executive Summary

== Compliance Status Overview
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Category* & *Compliant* & *Partial* & *Non-Compliant* ,

Risk Management & X/Y & X/Y & X/Y ,

Incident Handling & X/Y & X/Y & X/Y ,

Business Continuity & X/Y & X/Y & X/Y ,

Supply Chain Security & X/Y & X/Y & X/Y ,

Security Measures & X/Y & X/Y & X/Y ,

*Overall* & *X%* & *X%* & *X%* ,

)
\caption{Compliance Status Summary}
\end{table}

== Key Findings

    - Overall compliance rate: [XX%]
    - Critical gaps identified: [NUMBER]
    - Incidents reported: [NUMBER]
    - Major achievements: [SUMMARY]


= Organizational Context

== Entity Classification
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Entity Type* & Essential / Important ,

*Sector* & [SECTOR] ,

*Size* & Medium / Large ,

*Employees* & [NUMBER] ,

*Annual Turnover* & [AMOUNT] ,

)
\caption{Entity Classification}
\end{table}

== Competent Authority

    - Authority: [NATIONAL AUTHORITY]
    - Registration Date: [DATE]
    - Entity ID: [ID NUMBER]


= Article 21 - Cybersecurity Risk Management

== Risk Analysis and Security Policies

=== Requirement
Policies for risk analysis and information system security

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Risk Assessment Report dated [DATE]
    - Cybersecurity Policy version [VERSION]
    - Annual risk assessment conducted
    - Management approval obtained


=== Gaps Identified
[List any gaps or areas for improvement]

== Incident Handling

=== Requirement
Policies and procedures for incident handling

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Incident Response Plan dated [DATE]
    - Incident Response Team established
    - 24/7 incident reporting capability
    - Incident handling procedures documented


=== Performance Metrics
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Metric* & *Value* ,

Total incidents & [NUMBER] ,

Significant incidents & [NUMBER] ,

Average response time & [TIME] ,

Incidents reported to authority & [NUMBER] ,

)
\caption{Incident Handling Metrics}
\end{table}

== Business Continuity and Crisis Management

=== Status
$\square$ Compliant \quad
#text(fill: rgb("partial"))[$\blacksquare$] Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Business Continuity Plan dated [DATE]
    - Business Impact Analysis completed
    - RTO and RPO defined
    - BCP tested on [DATE]


=== Gaps

    - Crisis management procedures need enhancement
    - Communication plan requires update


== Supply Chain Security

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Vendor Security Assessment process implemented
    - Critical suppliers identified and assessed
    - Contractual security requirements in place
    - Regular vendor reviews conducted


== Security in Acquisition, Development, and Maintenance

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Secure development lifecycle implemented
    - Security requirements in procurement
    - Code review processes
    - Vulnerability scanning in CI/CD


== Effectiveness Assessment

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Quarterly security metrics reporting
    - Annual effectiveness review completed
    - KPIs defined and tracked
    - Internal audit program operational


== Cybersecurity Training and Hygiene

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Security Awareness Program implemented
    - 98% training completion rate
    - Monthly phishing simulations
    - Cyber hygiene guidelines published


== Cryptography and Encryption

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Encryption Policy documented
    - Data at rest: AES-256 encryption
    - Data in transit: TLS 1.3
    - Key management procedures in place


== Human Resources, Access Control, Asset Management

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - Access Control Policy implemented
    - Asset inventory maintained
    - Background checks for sensitive roles
    - Quarterly access reviews


== Multi-Factor Authentication

=== Status
#text(fill: rgb("compliant"))[$\blacksquare$] Compliant \quad
$\square$ Partially Compliant \quad
$\square$ Non-Compliant

=== Evidence

    - MFA implemented for all users
    - 100% adoption rate
    - MFA required for remote access
    - MFA required for privileged accounts


= Article 23 - Incident Reporting

== Reporting Obligations Compliance

#table(
  columns: auto,
  stroke: 0.5pt,

*Incident* & *Classification* & *Reported* & *Timeline Met* ,

\endfirsthead

*Incident* & *Classification* & *Reported* & *Timeline Met* ,

\endhead
INC-2024-001 & Significant & Yes & 24h: Yes, 72h: Yes, Final: Yes ,

INC-2024-002 & Not significant & N/A & N/A ,

\caption{Incident Reporting Compliance}
)

== Reporting Performance

    - Early warning (24h): [X/Y met]
    - Incident notification (72h): [X/Y met]
    - Final reports (1 month): [X/Y met]


= Management Body Oversight

== Management Involvement

    - Quarterly cybersecurity briefings to management
    - Annual NIS2 compliance review by board
    - Management approved cybersecurity budget
    - CISO reports directly to CEO
    - Management participated in IR exercise


== Training

    - Management completed cybersecurity awareness training
    - NIS2-specific training delivered
    - Crisis management training conducted


= Key Performance Indicators

#table(
  columns: auto,
  stroke: 0.5pt,

*KPI* & *Target* & *Actual* & *Status* ,

\endfirsthead

*KPI* & *Target* & *Actual* & *Status* ,

\endhead
Training completion rate & 100% & [X%] & [Status] ,

Phishing click rate & <5% & [X%] & [Status] ,

Patch compliance (critical) & 95% & [X%] & [Status] ,

Incident response time & <1h & [TIME] & [Status] ,

Vulnerability remediation & <30d & [DAYS] & [Status] ,

\caption{Key Performance Indicators}
)

= Gaps and Remediation Plan

== Critical Gaps

    - [Gap description]
    
        - Remediation: [Action]
        - Owner: [Name]
        - Deadline: [Date]
    


== Areas for Improvement

    - [Improvement area]
    - [Improvement area]


= Investment and Resources

== Cybersecurity Budget
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Category* & *Budget* & *Spent* ,

Personnel & [AMOUNT] & [AMOUNT] ,

Technology & [AMOUNT] & [AMOUNT] ,

Training & [AMOUNT] & [AMOUNT] ,

Consulting & [AMOUNT] & [AMOUNT] ,

*Total* & *[AMOUNT]* & *[AMOUNT]* ,

)
\caption{Cybersecurity Budget}
\end{table}

== Staffing

    - CISO: 1 FTE
    - Security Team: [NUMBER] FTE
    - IT Security: [NUMBER] FTE


= Continuous Improvement

== Planned Initiatives

    - [Initiative 1] - [Completion date]
    - [Initiative 2] - [Completion date]
    - [Initiative 3] - [Completion date]


== Next Period Objectives

    - Achieve 100% compliance across all areas
    - Reduce incident response time by 20%
    - Implement advanced threat detection
    - Enhance supply chain security program


= Conclusion

[Summary of overall compliance posture, achievements, and commitment to continuous improvement]

= Approval

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

CISO & & ,

CEO & & ,

Management Board & & ,

)
\end{table}



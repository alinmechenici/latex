#set document(title: "Data Breach Response Playbook", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Data Breach Response Playbook]
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
\definecolor{nis2red}{RGB}{204,0,0}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Data Breach Response Playbook*]}
\fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
\fancyfoot[L]{#text(fill: rgb("nis2gray"))[\small \jobname]}
\fancyfoot[C]{#text(fill: rgb("nis2red"))[\small*CONFIDENTIAL*]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Data Breach Response Playbook]\par}
    #v(0.5cm)
    {\Large NIS2 & GDPR Compliance\par}
    #v(2cm)
    #text(fill: rgb("nis2red"))[\Large*CRITICAL INCIDENT - TIME-SENSITIVE*]
    \vfill
    {\large Organization: [ORGANIZATION]\par}
    {\large Version: 1.0\par}
    {\large Last Updated: \today\par}
\end{titlepage}

#outline()
#pagebreak()

= Quick Reference

\begin{center}
\fbox{\begin{minipage}{0.9\textwidth}
*DATA BREACH - IMMEDIATE ACTIONS*

*Indicators:*

    - Unauthorized access to databases
    - Data exfiltration alerts
    - Misconfigured systems exposing data
    - External notification of leaked data
    - Dark web monitoring alerts


*CRITICAL TIMELINE:*

    - *NIS2*: 24h early warning, 72h notification, 1 month final report
    - *GDPR*: 72 hours to DPA (Data Protection Authority)
    - *Data Subjects*: Without undue delay if high risk


*IMMEDIATE ACTIONS:*

    - CONTAIN: Stop data exfiltration
    - ASSESS: Determine scope and impact
    - NOTIFY: IR Team, CISO, Legal, DPO
    - PRESERVE: Collect forensic evidence
    - REPORT: Initiate regulatory notifications

\end{minipage}}
\end{center}

= Phase 1: Detection & Containment (0-2 Hours)

== Detection Methods

*Internal Detection:*

    - DLP (Data Loss Prevention) alerts
    - SIEM unusual data transfer patterns
    - Database audit logs
    - Cloud access security broker (CASB)
    - Network traffic anomalies


*External Notification:*

    - Security researcher report
    - Customer complaint
    - Media inquiry
    - Dark web monitoring service
    - Law enforcement notification


== Immediate Containment Actions

*Stop Data Exposure (0-30 min):*

    - Take misconfigured system offline
    - Revoke compromised credentials
    - Block unauthorized IP addresses
    - Disable compromised accounts
    - Close exposed ports/services
    - Remove publicly accessible data


*Preserve Evidence (30-60 min):*

    - Capture system logs
    - Database access logs
    - Network traffic captures
    - Screenshots of exposure
    - User activity logs


*Notify IR Team (60-120 min):*

    - IR Team Leader
    - CISO
    - Data Protection Officer (DPO)
    - Legal Counsel
    - Privacy Team
    - Communications Lead


= Phase 2: Assessment (2-24 Hours)

== Scope Determination

*Critical Questions:*

    - What data was accessed/exposed?
    - How much data? (number of records)
    - What type of data? (personal, sensitive, financial)
    - Who was affected? (customers, employees, partners)
    - When did the breach occur?
    - How long was data exposed?
    - Was data exfiltrated or just accessed?
    - Is data encrypted or plaintext?


== Data Classification

#table(
  columns: auto,
  stroke: 0.5pt,

*Data Category* & *Examples & Impact* ,

\endfirsthead

*Data Category* & *Examples & Impact* ,

\endhead
*Personal Data* & Names, addresses, emails, phone numbers - GDPR applies ,

*Sensitive Personal Data* & Health, racial origin, political opinions, biometric - HIGH RISK ,

*Financial Data* & Bank accounts, credit cards (PCI DSS), payment information ,

*Authentication* & Passwords, security questions, MFA seeds - CRITICAL ,

*Business Data* & Trade secrets, IP, contracts, customer lists ,

\caption{Data Classification for Breach Assessment}
)

== Root Cause Analysis

*Common Causes:*

    - Misconfigured cloud storage (S3, Azure Blob)
    - SQL injection vulnerability
    - Stolen/compromised credentials
    - Insider threat (malicious or accidental)
    - Phishing leading to account compromise
    - Unpatched vulnerabilities
    - Third-party/supply chain breach


== Impact Assessment

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Impact Factor* & *Assessment* ,

Number of individuals & [NUMBER] ,

Type of data & [PERSONAL/SENSITIVE/FINANCIAL] ,

Likelihood of misuse & [HIGH/MEDIUM/LOW] ,

GDPR high risk? & [YES/NO] ,

NIS2 significant? & [YES/NO] ,

Business impact & €[AMOUNT] ,

)
\caption{Impact Assessment Matrix}
\end{table}

= Phase 3: Regulatory Notification

== NIS2 Incident Reporting

*Significant Incident Criteria:*

    - Service disruption
    - Financial loss
    - Considerable damage to persons


*Reporting Timeline:*

    - *24 hours*: Early warning to competent authority
    - *72 hours*: Incident notification with assessment
    - *1 month*: Final detailed report


== GDPR Data Breach Notification

*72-Hour Rule:*

Must notify Data Protection Authority within 72 hours if:

    - Breach likely to result in risk to individuals' rights and freedoms
    - Personal data involved
    - Not encrypted or otherwise protected


*DPA Notification Must Include:*

    - Nature of breach
    - Categories and approximate number of individuals
    - Categories and approximate number of records
    - Contact point (DPO)
    - Likely consequences
    - Measures taken or proposed


*Exceptions (No notification required if):*

    - Data encrypted and key not compromised
    - Technical/organizational measures prevent high risk
    - Subsequent measures eliminate high risk


== Data Subject Notification

*Required if high risk to individuals*

*Notification Should Include:*

    - Description of breach in clear language
    - Contact point for more information (DPO)
    - Likely consequences
    - Measures taken to mitigate
    - Recommendations for individuals (password reset, monitoring)


*Notification Methods:*

    - Email (preferred)
    - Letter (for those without email)
    - Website notification (if contact details unavailable)
    - Media announcement (for mass breaches)


= Phase 4: Remediation

== Short-term Actions (0-7 days)


    - Fix vulnerability or misconfiguration
    - Revoke all potentially compromised credentials
    - Force password resets for affected accounts
    - Enhanced monitoring of affected systems
    - Remove exposed data from public internet
    - Contact search engines for de-indexing (if applicable)


== Medium-term Actions (7-30 days)


    - Security audit of similar systems
    - Implement additional controls
    - Third-party security assessment
    - Dark web monitoring for exposed data
    - Credit monitoring for affected individuals (if applicable)
    - Review and update security policies


== Long-term Actions (30+ days)


    - Architecture review and improvements
    - Enhanced security controls implementation
    - Staff training and awareness
    - Process improvements
    - Technology upgrades


= Phase 5: Communication

== Internal Communications

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Audience* & *Message* & *Timing* ,

Executive Team & Full details, impact & Immediate ,

Employees & Need-to-know basis & Within 24h ,

Legal/Compliance & Complete information & Immediate ,

Customer Service & FAQs, talking points & Before public notice ,

)
\caption{Internal Communication Plan}
\end{table}

== External Communications

*Press Release/Public Statement:*

    - Approved by Legal Counsel
    - Factual, concise, empathetic
    - Outline what happened
    - What we're doing about it
    - How to get more information
    - Avoid speculation or blame


*Customer Support:*

    - Dedicated hotline or email
    - FAQ document prepared
    - Response templates
    - Escalation procedures
    - Log all inquiries


= Decision Trees

== GDPR Notification Decision Tree


    - *Q:* Is personal data involved? ,
    NO → No GDPR notification required ,
    YES → Continue

    - *Q:* Is data encrypted with key not compromised? ,
    YES → No notification required (document decision) ,
    NO → Continue

    - *Q:* Likely to result in risk to individuals? ,
    NO → No notification required (document decision) ,
    YES → *Notify DPA within 72 hours*

    - *Q:* High risk to individuals? ,
    NO → DPA notification only ,
    YES → *Notify DPA AND data subjects without undue delay*


= Key Contacts

== Internal Team

#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Contact* ,

Data Protection Officer & [NAME] & [PHONE/EMAIL] ,

Legal Counsel & [NAME] & [PHONE/EMAIL] ,

CISO & [NAME] & [PHONE/EMAIL] ,

Privacy Team Lead & [NAME] & [PHONE/EMAIL] ,

Communications Lead & [NAME] & [PHONE/EMAIL] ,

\caption{Internal Contacts}
)

== External Authorities


    - *Data Protection Authority:* [NATIONAL DPA] - [CONTACT]
    - *NIS2 Competent Authority:* [AUTHORITY] - [CONTACT]
    - *Law Enforcement:* [CYBERCRIME UNIT] - [CONTACT]
    - *Cyber Insurance:* [INSURER] - [POLICY \#] - [HOTLINE]


= Templates

== Data Subject Notification Template

_See Appendix A for full template_

*Subject:* Important Security Notice Regarding Your [ORGANIZATION] Account

*Body outline:*

    - What happened
    - What information was involved
    - What we are doing
    - What you should do (recommendations)
    - How to contact us
    - Resources (credit monitoring if applicable)


== GDPR DPA Notification Template

_See Appendix B for full template_

Must include all required elements per GDPR Article 33.

= Post-Incident

== Lessons Learned

*Within 2 weeks of incident closure:*

    - What was the root cause?
    - How was it detected?
    - What worked well in response?
    - What can be improved?
    - Preventive measures needed?


== Documentation

Maintain for regulatory purposes:

    - Complete incident timeline
    - All notifications sent (DPA, data subjects)
    - Assessment and decision documentation
    - Evidence of remediation
    - Lessons learned report


*Retention:* Minimum 3 years (NIS2), longer if required by GDPR or other regulations

= Prevention Checklist


    - ✅ Regular security assessments
    - ✅ Data minimization practices
    - ✅ Encryption at rest and in transit
    - ✅ Access controls and least privilege
    - ✅ Regular access reviews
    - ✅ Security awareness training
    - ✅ Vulnerability management
    - ✅ Penetration testing
    - ✅ Data inventory maintained
    - ✅ Privacy by design
    - ✅ Vendor security assessments
    - ✅ Incident response plan tested




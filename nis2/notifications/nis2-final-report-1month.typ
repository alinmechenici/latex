#set document(title: "Nis2 Final Report 1Month", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Nis2 Final Report 1Month]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*NIS2 Final Report (1 Month)*]}
\fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
\fancyfoot[L]{#text(fill: rgb("nis2gray"))[\small \jobname]}
\fancyfoot[C]{#text(fill: rgb("nis2gray"))[\small Regulatory Notification]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[NIS2 Final Incident Report]\par}
    #v(0.5cm)
    {\Large One-Month Comprehensive Report}\par}
    #v(2cm)
    {\large Directive (EU) 2022/2555 - Article 23(4)\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Incident ID:* INC-[YEAR]-[NUMBER]\par}
    #v(0.5cm)
    {\Large*Report Date:* \today\par}
\end{titlepage}

#outline()
#pagebreak()

= Executive Summary

== Incident Overview

Provide a concise executive summary (2-3 paragraphs) covering:

    - What happened
    - When it occurred
    - Impact to services and users
    - Current status (resolved/ongoing)
    - Key lessons learned


#v(4cm)

== Key Statistics

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Detection to Containment* & [TIME] ,

*Total Duration* & [DAYS/HOURS] ,

*Services Affected* & [NUMBER] ,

*Users Impacted* & [NUMBER] ,

*Financial Impact* & €[AMOUNT] ,

*Status* & $\square$ Resolved \quad $\square$ Ongoing ,

)
\caption{Incident Summary Statistics}
\end{table}

= Notification Reference

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Early Warning (24h)* & Submitted: [DATE/TIME] ,

*Incident Notification (72h)* & Submitted: [DATE/TIME] ,

*Final Report (1 month)* & Submitted: [DATE/TIME] ,

*Incident ID* & INC-[YEAR]-[NUMBER] ,

*Authority Reference* & [REF NUMBER from authority] ,

)
\caption{Notification Timeline}
\end{table}

= Detailed Incident Analysis

== Incident Classification

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Incident Type* & [e.g., Ransomware Attack] ,

*Category* & [Cyber Attack / System Failure / etc.] ,

*Severity* & Critical / High / Medium ,

*Significance* & Significant Incident (NIS2) ,

)
\caption{Final Classification}
\end{table}

== Root Cause Analysis

=== Primary Root Cause

[Detailed explanation of the root cause]

#v(3cm)

=== Contributing Factors


    - [Contributing factor 1]
    - [Contributing factor 2]
    - [Contributing factor 3]


=== Attack Vector and Methodology

Detailed description of how the attack was carried out:

#v(4cm)

== Complete Timeline

#table(
  columns: auto,
  stroke: 0.5pt,

*Date/Time* & *Event Description* ,

\endfirsthead

*Date/Time* & *Event Description* ,

\endhead
[DATE/TIME] & Initial compromise occurred (estimated based on forensics) ,

[DATE/TIME] & Attacker established persistence ,

[DATE/TIME] & Lateral movement began ,

[DATE/TIME] & Data exfiltration detected (if applicable) ,

[DATE/TIME] & Malicious activity first detected ,

[DATE/TIME] & Incident reported internally ,

[DATE/TIME] & IR team activated ,

[DATE/TIME] & Containment initiated ,

[DATE/TIME] & Early warning submitted (24h notification) ,

[DATE/TIME] & Containment completed ,

[DATE/TIME] & Incident notification submitted (72h) ,

[DATE/TIME] & Eradication completed ,

[DATE/TIME] & Recovery initiated ,

[DATE/TIME] & Services fully restored ,

[DATE/TIME] & Incident declared resolved ,

\caption{Complete Incident Timeline}
)

= Impact Assessment

== Service Impact

#table(
  columns: auto,
  stroke: 0.5pt,

*Service* & *Impact Level* & *Downtime* & *Recovery* ,

\endfirsthead

*Service* & *Impact Level* & *Downtime* & *Recovery* ,

\endhead
[Service 1] & Complete/Partial & [HOURS] & [DATE/TIME] ,

[Service 2] & Complete/Partial & [HOURS] & [DATE/TIME] ,

\caption{Service Impact Summary}
)

== User/Customer Impact

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Total Users Affected* & [NUMBER] (confirmed) ,

*Individual Customers* & [NUMBER] ,

*Business Customers* & [NUMBER] ,

*Geographic Scope* & [COUNTRIES/REGIONS] ,

*Average Downtime per User* & [HOURS/DAYS] ,

)
\caption{User Impact Analysis}
\end{table}

== Data Impact

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Data Compromised* & YES / NO ,

*Data Categories* & [List: Personal, Financial, etc.] ,

*Records Affected* & [NUMBER] records ,

*Data Exfiltrated* & [VOLUME] or None detected ,

*Sensitive Data Involved* & YES / NO - [Specify type] ,

*GDPR Notification* & Required: YES/NO | Completed: [DATE] ,

)
\caption{Data Impact Summary}
\end{table}

== Financial Impact

#table(
  columns: auto,
  stroke: 0.5pt,

*Cost Category* & *Amount (€)* & *Details* ,

\endfirsthead

*Cost Category* & *Amount (€)* & *Details* ,

\endhead
Investigation Costs & [AMOUNT] & Forensics, consultants ,

Remediation Costs & [AMOUNT] & System recovery, rebuilds ,

Recovery Costs & [AMOUNT] & Data restoration, testing ,

Revenue Loss & [AMOUNT] & Service downtime ,

Customer Compensation & [AMOUNT] & SLA penalties, refunds ,

Legal/Regulatory & [AMOUNT] & Legal fees, potential fines ,

Notification Costs & [AMOUNT] & Customer communications ,

Security Improvements & [AMOUNT] & Enhanced controls ,

*Total Direct Costs* & *[TOTAL]* & ,

Reputational Damage & Estimated [AMOUNT] & Long-term revenue impact ,

*Grand Total* & *[TOTAL]* & ,

\caption{Detailed Financial Impact}
)

== Operational Impact


    - *Business Processes Disrupted:* [List]
    - *Employee Productivity Loss:* [Hours/Days]
    - *Supply Chain Impact:* [Description]
    - *Compliance Issues:* [Any regulatory violations]


= Response and Recovery

== Response Actions Taken

=== Detection Phase
[Describe how the incident was detected]

#v(2cm)

=== Containment Phase

Actions taken to contain the incident:

    - [Action 1]
    - [Action 2]
    - [Action 3]


=== Eradication Phase

Actions taken to remove the threat:

    - [Action 1]
    - [Action 2]
    - [Action 3]


=== Recovery Phase

Recovery steps and verification:

    - [Action 1]
    - [Action 2]
    - [Action 3]


== External Assistance

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Forensic Firm* & [NAME] - [Role] ,

*Law Enforcement* & [AGENCY] - [Involvement] ,

*Cyber Insurance* & [INSURER] - [Coverage] ,

*Technology Vendors* & [VENDORS] - [Support provided] ,

*Legal Counsel* & [FIRM] - [Services] ,

)
\caption{External Support}
\end{table}

= Technical Details

== Indicators of Compromise (IoCs)

#table(
  columns: auto,
  stroke: 0.5pt,

*IoC Type* & *Values* ,

\endfirsthead

*IoC Type* & *Values* ,

\endhead
IP Addresses & [Complete list of malicious IPs] ,

Domain Names & [Complete list of malicious domains] ,

File Hashes (MD5) & [List] ,

File Hashes (SHA-256) & [List] ,

Malware Family & [Name and variant] ,

URLs & [Malicious URLs] ,

Email Addresses & [Attacker emails, phishing senders] ,

Registry Keys & [Modified/created registry keys] ,

File Paths & [Malicious file locations] ,

\caption{Complete IoC List}
)

== Vulnerabilities Exploited

#table(
  columns: auto,
  stroke: 0.5pt,

*CVE* & *Description* & *CVSS* & *Affected Systems* ,

\endfirsthead

*CVE* & *Description* & *CVSS* & *Affected Systems* ,

\endhead
[CVE-XXXX-XXXXX] & [Description] & [Score] & [Systems] ,

\caption{Exploited Vulnerabilities}
)

== Attack Tools and Techniques (MITRE ATT&CK)


    - *Initial Access:* [Technique - TID]
    - *Execution:* [Technique - TID]
    - *Persistence:* [Technique - TID]
    - *Privilege Escalation:* [Technique - TID]
    - *Defense Evasion:* [Technique - TID]
    - *Credential Access:* [Technique - TID]
    - *Discovery:* [Technique - TID]
    - *Lateral Movement:* [Technique - TID]
    - *Collection:* [Technique - TID]
    - *Exfiltration:* [Technique - TID]
    - *Impact:* [Technique - TID]


= Lessons Learned

== What Worked Well


    - [Success 1]
    - [Success 2]
    - [Success 3]


== What Could Be Improved


    - [Improvement area 1]
    - [Improvement area 2]
    - [Improvement area 3]


== Gaps Identified


    - *People:* [Skills, training, staffing gaps]
    - *Process:* [Procedure gaps, communication issues]
    - *Technology:* [Tool gaps, detection limitations]


= Preventive and Corrective Measures

== Immediate Actions Completed (0-30 days)

#table(
  columns: auto,
  stroke: 0.5pt,

*Action* & *Completion Date* & *Owner* ,

\endfirsthead

*Action* & *Completion Date* & *Owner* ,

\endhead
[Action 1] & [DATE] & [OWNER] ,

[Action 2] & [DATE] & [OWNER] ,

\caption{Immediate Corrective Actions}
)

== Short-term Improvements (30-90 days)

#table(
  columns: auto,
  stroke: 0.5pt,

*Planned Action* & *Target Date* & *Owner* ,

\endfirsthead

*Planned Action* & *Target Date* & *Owner* ,

\endhead
[Action 1] & [DATE] & [OWNER] ,

[Action 2] & [DATE] & [OWNER] ,

\caption{Short-term Improvements}
)

== Long-term Strategic Changes (90+ days)


    - [Strategic initiative 1]
    - [Strategic initiative 2]
    - [Strategic initiative 3]


== Policy and Procedure Updates


    - [Updated policy 1] - Effective: [DATE]
    - [Updated policy 2] - Effective: [DATE]
    - [New procedure 1] - Implemented: [DATE]


= Recommendations for the Sector

== Threat Intelligence Sharing

Information that may benefit other entities in the sector:

#v(3cm)

== Best Practices

Recommendations based on this incident:


    - [Recommendation 1]
    - [Recommendation 2]
    - [Recommendation 3]


= Regulatory Compliance

== NIS2 Compliance

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Early Warning (24h)* & ✓ Submitted within deadline ,

*Incident Notification (72h)* & ✓ Submitted within deadline ,

*Final Report (1 month)* & ✓ Submitted within deadline ,

*Interim Updates* & [NUMBER] updates provided ,

)
\caption{NIS2 Reporting Compliance}
\end{table}

== Other Regulatory Notifications


    - *GDPR:* [Notification status to DPA and data subjects]
    - *Sector-specific:* [Any other regulatory notifications]
    - *Law Enforcement:* [Reporting status]


= Conclusion

[Comprehensive conclusion summarizing the incident, response, and path forward]

#v(3cm)

= Appendices

== Appendix A: Forensic Analysis Report
[Attach or reference detailed forensic report]

== Appendix B: Complete IoC List
[Detailed technical appendix with all indicators]

== Appendix C: Communication Records
[Customer notifications, media statements, etc.]

== Appendix D: Evidence Preservation
[Chain of custody, evidence location]

= Declaration

I, the undersigned, declare that this final incident report is complete and accurate to the best of my knowledge.

#v(1cm)

#table(
  columns: auto,
  stroke: 0.5pt,

*Name* & [FULL NAME] ,

*Position* & [TITLE] ,

*Date* & \today ,

*Signature* & ,
& ,

)

#v(0.5cm)

*Reviewed and Approved by:*

#v(0.3cm)

#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

CISO & & ,

Legal Counsel & & ,

CEO & & ,

)



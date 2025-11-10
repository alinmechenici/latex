#set document(title: "NIS2 24-Hour Early Warning", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[NIS2 Early Warning (24h)]
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

#let nis2blue = rgb("#003366")
#let nis2red = rgb("#CC0000")

// Title
#align(center)[
  #v(2cm)
  #text(size: 24pt, fill: nis2blue, weight: "bold")[
    NIS2 EARLY WARNING NOTIFICATION
  ]

  #v(0.5cm)
  #text(size: 14pt)[
    24-Hour Significant Incident Report
  ]

  #v(0.5cm)
  #text(size: 12pt, fill: nis2red, weight: "bold")[
    URGENT - TO BE SUBMITTED WITHIN 24 HOURS
  ]

  #v(1cm)
]

#align(center)[
  #box(
    width: 90%,
    stroke: 2pt + nis2red,
    inset: 15pt,
    [
      #set align(left)
      #text(size: 11pt, weight: "bold")[*REGULATORY REQUIREMENT*]

      This form must be submitted to the competent national authority within *24 hours* of becoming aware of a significant cybersecurity incident, as required by:

      *NIS2 Directive (EU) 2022/2555, Article 23(1)*

      Failure to report may result in penalties up to €10 million or 2% of total worldwide annual turnover for essential entities.
    ]
  )
]

#v(1cm)

= 1. REPORTING ENTITY INFORMATION

#table(
  columns: (35%, 65%),
  stroke: 0.5pt,
  inset: 8pt,
  [*Organization Name*], [[ORGANIZATION NAME]],
  [*Registration Number*], [[REGISTRATION NUMBER]],
  [*Entity Type*], [☐ Essential Entity #h(2cm) ☐ Important Entity],
  [*Sector*], [[SECTOR - e.g., Healthcare, Energy, Financial]],
  [*Member State*], [[COUNTRY]],
  [*Contact Person*], [[NAME]],
  [*Position/Title*], [[TITLE - e.g., CISO, CTO]],
  [*Email Address*], [[EMAIL]],
  [*Phone Number (24/7)*], [[PHONE]],
  [*Incident ID*], [INC-[YYYY]-[NUMBER]]
)

#pagebreak()

= 2. INCIDENT DETECTION

#table(
  columns: (35%, 65%),
  stroke: 0.5pt,
  inset: 8pt,
  [*Date/Time Detected*], [[DD/MM/YYYY HH:MM] (UTC/Local Time)],
  [*Detected By*], [[NAME/SYSTEM]],
  [*Detection Method*], [
    ☐ Automated monitoring/alerts \
    ☐ User report \
    ☐ Third-party notification \
    ☐ Other: _________________
  ]
)

= 3. INCIDENT TYPE

*Please select primary incident type:*

#grid(
  columns: 2,
  gutter: 10pt,
  [
    ☐ *Cyber Attack* (specify): \
    #h(1cm) ☐ Ransomware \
    #h(1cm) ☐ Malware \
    #h(1cm) ☐ DDoS/DoS \
    #h(1cm) ☐ SQL Injection \
    #h(1cm) ☐ Phishing/Social Engineering \
    #h(1cm) ☐ Zero-day Exploit \
    #h(1cm) ☐ Other: ______________
  ],
  [
    ☐ *Data Breach* \
    #h(1cm) ☐ Unauthorized access \
    #h(1cm) ☐ Data exfiltration \
    #h(1cm) ☐ Data loss \
    #h(1cm) ☐ Accidental disclosure

    ☐ *System Compromise* \
    ☐ *Service Disruption* \
    ☐ *Other*: _______________
  ]
)

= 4. PRELIMINARY IMPACT ASSESSMENT

== 4.1 Affected Systems/Services

#table(
  columns: (100%),
  stroke: 0.5pt,
  inset: 8pt,
  [List primary affected systems, services, or infrastructure:],
  [
    #v(3cm)
    [Brief description - will be detailed in 72-hour report]
  ]
)

== 4.2 Service Impact

☐ *Complete service disruption* \
☐ *Partial service degradation* (___% of services affected) \
☐ *Internal systems only* (no customer-facing impact) \
☐ *No service impact* (security event only)

== 4.3 Data Impact

☐ *Personal data potentially compromised* (estimated records: _______) \
☐ *Business-critical data affected* \
☐ *No data breach identified at this time* \
☐ *Under investigation*

*GDPR Consideration*: ☐ Separate GDPR breach notification filed (if personal data involved)

== 4.4 Geographic Scope

*Countries/Regions Affected*:

☐ Single Member State: [COUNTRY] \
☐ Multiple Member States (list): _________________ \
☐ Cross-border EU impact \
☐ Non-EU countries affected: _________________

= 5. INCIDENT STATUS

== 5.1 Current Status

☐ *Ongoing* - Incident still in progress \
☐ *Contained* - Spread stopped, but not fully resolved \
☐ *Under Investigation* - Full scope unknown \
☐ *Resolved* - Incident resolved (explain early warning: _________)

== 5.2 Response Actions Taken

#table(
  columns: (100%),
  stroke: 0.5pt,
  inset: 8pt,
  [Brief summary of immediate actions taken:],
  [
    #v(4cm)
    [Examples: systems isolated, incident response team activated, backups verified, law enforcement contacted]
  ]
)

#pagebreak()

= 6. POTENTIAL SEVERITY ASSESSMENT

Based on preliminary information:

*Operational Impact*: \
☐ Critical (Complete service unavailable) \
☐ High (Major degradation) \
☐ Medium (Moderate impact) \
☐ Low (Minor impact)

*Financial Impact (Preliminary)*: \
☐ > €1 million \
☐ €500K - €1M \
☐ €100K - €500K \
☐ < €100K \
☐ Unknown at this time

*Reputational Impact*: \
☐ Critical (Severe damage, media coverage likely) \
☐ High (Significant reputational risk) \
☐ Medium (Moderate concern) \
☐ Low (Minimal reputational impact)

= 7. ADDITIONAL INFORMATION

== 7.1 Root Cause (If Known)

#table(
  columns: (100%),
  stroke: 0.5pt,
  inset: 8pt,
  [
    #v(2cm)
    [Preliminary root cause or attack vector (if identified)]
  ]
)

== 7.2 Threat Actor (If Known)

☐ Known threat actor: _________________ \
☐ Under investigation \
☐ Unknown \
☐ Not applicable

== 7.3 External Support

☐ Law enforcement contacted: [AGENCY] \
☐ CSIRT/CERT involved: [TEAM NAME] \
☐ Third-party incident responders engaged \
☐ Cyber insurance claim initiated

== 7.4 Public Disclosure

☐ Incident publicly disclosed (specify: __________) \
☐ Media coverage (specify outlets: __________) \
☐ Not publicly disclosed

#pagebreak()

= 8. NEXT STEPS AND TIMELINE

== 8.1 Planned Actions

#table(
  columns: (100%),
  stroke: 0.5pt,
  inset: 8pt,
  [Immediate next steps (24-72 hours):],
  [
    #v(3cm)
    [List planned investigation and remediation activities]
  ]
)

== 8.2 Follow-up Reporting

#box(
  width: 100%,
  stroke: 1pt + nis2blue,
  inset: 10pt,
  [
    *MANDATORY FOLLOW-UP NOTIFICATIONS*:

    + *72-Hour Notification* (Article 23(4)): Due by [DATE/TIME]
      - Detailed incident notification with IoCs, impact assessment, response measures

    + *1-Month Final Report* (Article 23(6)): Due by [DATE/TIME]
      - Comprehensive final report with root cause, lessons learned, preventive measures

    + *Intermediate Updates*: As required if significant new information emerges
  ]
)

= 9. DECLARATION

I hereby confirm that:

- This notification is submitted within 24 hours of becoming aware of the significant incident
- The information provided is accurate to the best of our knowledge at this time
- We will provide updated information in the 72-hour notification and final report
- We understand our obligations under the NIS2 Directive

#v(1cm)

#table(
  columns: (50%, 50%),
  stroke: 0.5pt,
  inset: 8pt,
  [*Name and Title*], [[NAME], [TITLE]],
  [*Signature*], [_________________________],
  [*Date and Time*], [[DD/MM/YYYY HH:MM]]
)

#pagebreak()

= 10. COMPETENT AUTHORITY USE ONLY

#box(
  width: 100%,
  fill: rgb("#f0f0f0"),
  inset: 15pt,
  [
    #set text(size: 10pt)
    *FOR OFFICIAL USE - DO NOT COMPLETE*

    #v(0.5cm)

    Notification received: _________________ \
    Received by: _________________ \
    Case number: _________________ \
    Initial assessment: _________________ \
    Follow-up required: ☐ Yes ☐ No \
    Notes: _________________
  ]
)

#v(2cm)

#align(center)[
  #text(size: 10pt, style: "italic")[
    *SUBMISSION INSTRUCTIONS*

    Submit this form to your national competent authority:

    - Email: [COMPETENT AUTHORITY EMAIL] \
    - Secure portal: [PORTAL URL] \
    - Emergency hotline: [PHONE NUMBER]

    *Keep a copy for your 72-hour and 1-month reports.*
  ]
]

---

#align(center)[
  #text(size: 9pt, style: "italic")[
    NIS2 Directive (EU) 2022/2555 - Article 23 Early Warning \
    Template Version 2.0 - November 2025
  ]
]

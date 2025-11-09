#set document(title: "Acceptable Use Policy", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Acceptable Use Policy]
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
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Acceptable Use Policy*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Acceptable Use Policy},
{\Large IT Resources and Information Systems}
\end{center}

= Purpose
Define acceptable and unacceptable use of organizational IT resources.

= Scope
All employees, contractors, and third parties with access to organizational systems, networks, and data.

= Acceptable Use

== General Principles
IT resources provided for:

- Business purposes
- Limited personal use (reasonable)
- Professional development


== User Responsibilities

- Protect credentials (no sharing)
- Use strong passwords + MFA
- Lock screen when away
- Report security incidents
- Complete security training
- Follow security policies


= Prohibited Activities

== Strictly Prohibited

- Unauthorized access to systems/data
- Sharing credentials
- Installing unauthorized software
- Disabling security controls
- Circumventing security measures
- Data exfiltration
- Illegal activities
- Harassment or discrimination


== Internet and Email
*Prohibited:*

- Accessing illegal content
- Downloading pirated software
- Gambling, adult content
- Excessive personal use
- Spam or chain emails
- Phishing or social engineering


== Data Handling
*Do:*

- Classify data appropriately
- Encrypt sensitive data
- Use approved storage/sharing
- Follow data retention policies


*Don't:*

- Store data on personal devices (without MDM)
- Share via unapproved services
- Send sensitive data to personal email
- Screenshot confidential information


= Personal Use

*Reasonable personal use allowed:*

- During breaks/lunch
- Brief personal emails
- Non-work hours (if permitted)


*Not allowed:*

- Interfering with work
- Consuming excessive bandwidth
- Violating any policy


= Monitoring

Users should have no expectation of privacy:

- Organization may monitor all activity
- Network traffic logged
- Email may be reviewed
- Compliance with laws/regulations


= Consequences

Violations may result in:

- Verbal/written warning
- Suspension of access
- Disciplinary action
- Termination
- Legal action (if criminal)


= Acknowledgment

All users must:

- Read and understand policy
- Sign acknowledgment annually
- Complete AUP training
- Report violations




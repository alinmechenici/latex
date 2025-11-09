#set document(title: "Phishing Campaign Response Playbook", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Phishing Campaign Response Playbook]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Phishing Response Playbook*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Phishing Campaign Response},
{\Large Social Engineering Attack Response}
\end{center}

\section*{Quick Actions}
*User Reports Phishing:*

- DO NOT click links or open attachments
- Forward email to security@[ORG].com
- Delete from inbox
- Report via phishing button


= Response Phases

== Phase 1: Validation (0-15 min)
*Verify Phishing Email:*

- Check sender address (spoofed?)
- Analyze links/attachments
- Review email headers
- Search for similar reports


== Phase 2: Containment (15-60 min)
*If Phishing Confirmed:*

- Block sender domain/address
- Quarantine similar emails
- Scan for delivered messages
- Remove from all inboxes
- Block malicious URLs/IPs


*Affected Users:*

- Identify who clicked/opened
- Force password reset
- Revoke active sessions
- Scan endpoints for malware
- Monitor account activity


== Phase 3: Investigation
*Determine Impact:*

- Number of recipients
- Number who clicked
- Credentials compromised?
- Malware delivered?
- Data accessed?


== Phase 4: Communication
*Alert Users:*

- Email warning about phishing
- Indicators (subject, sender)
- What to do if received
- Reinforce reporting process


= Prevention

- Advanced email filtering
- Link/attachment sandboxing
- DMARC/SPF/DKIM enforcement
- Monthly phishing simulations
- Security awareness training




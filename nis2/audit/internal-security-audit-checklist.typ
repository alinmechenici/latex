#set document(title: "Internal Security Audit Checklist", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Internal Security Audit Checklist]
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
\definecolor{pass}{RGB}{0,153,51}
\definecolor{fail}{RGB}{204,0,0}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Security Audit Checklist*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Internal Security Audit},
{\Large NIS2 Compliance Audit Checklist}
\end{center}

\section*{Audit Information}

#table(
  columns: auto,
  stroke: 0.5pt,

*Audit Date* & [DATE] ,

*Auditor* & [NAME] - [TITLE] ,

*Audit Scope* & [DEPARTMENT/SYSTEMS] ,

*Audit Type* & $\square$ Comprehensive \quad $\square$ Focused \quad $\square$ Follow-up ,

)

= NIS2 Article 21 Compliance

== Risk Analysis & Security Policies (21.2.a)

#table(
  columns: auto,
  stroke: 0.5pt,

*Control* & *Status* & *Comments* ,

Annual risk assessment conducted & $\square$Pass $\square$Fail & ,

Risk assessment approved by management & $\square$Pass $\square$Fail & ,

Risk register maintained & $\square$Pass $\square$Fail & ,

Cybersecurity policy exists & $\square$Pass $\square$Fail & ,

Policy reviewed annually & $\square$Pass $\square$Fail & ,

)

== Incident Handling (21.2.b)

#table(
  columns: auto,
  stroke: 0.5pt,

*Control* & *Status* & *Comments* ,

IR plan documented & $\square$Pass $\square$Fail & ,

IR team established & $\square$Pass $\square$Fail & ,

24/7 incident reporting capability & $\square$Pass $\square$Fail & ,

NIS2 reporting procedure defined & $\square$Pass $\square$Fail & ,

IR plan tested in past 12 months & $\square$Pass $\square$Fail & ,

)

== Business Continuity (21.2.c)

#table(
  columns: auto,
  stroke: 0.5pt,

BCP documented & $\square$Pass $\square$Fail & ,

RTO/RPO defined & $\square$Pass $\square$Fail & ,

BCP tested annually & $\square$Pass $\square$Fail & ,

DR plan exists & $\square$Pass $\square$Fail & ,

Backups verified regularly & $\square$Pass $\square$Fail & ,

)

== Supply Chain Security (21.2.d)

#table(
  columns: auto,
  stroke: 0.5pt,

Vendor security assessment process & $\square$Pass $\square$Fail & ,

Critical vendors identified & $\square$Pass $\square$Fail & ,

Vendor assessments current & $\square$Pass $\square$Fail & ,

Contractual security requirements & $\square$Pass $\square$Fail & ,

)

== Training & Awareness (21.2.g)

#table(
  columns: auto,
  stroke: 0.5pt,

Annual security awareness training & $\square$Pass $\square$Fail & ,

Training completion >95% & $\square$Pass $\square$Fail & ,

Phishing simulations conducted & $\square$Pass $\square$Fail & ,

Cyber hygiene practices documented & $\square$Pass $\square$Fail & ,

)

== Cryptography & Encryption (21.2.h)

#table(
  columns: auto,
  stroke: 0.5pt,

Encryption policy exists & $\square$Pass $\square$Fail & ,

Data-at-rest encrypted (sensitive) & $\square$Pass $\square$Fail & ,

Data-in-transit encrypted & $\square$Pass $\square$Fail & ,

TLS 1.2+ enforced & $\square$Pass $\square$Fail & ,

Key management procedures & $\square$Pass $\square$Fail & ,

)

== Access Control (21.2.i,j)

#table(
  columns: auto,
  stroke: 0.5pt,

Access control policy exists & $\square$Pass $\square$Fail & ,

Least privilege enforced & $\square$Pass $\square$Fail & ,

MFA mandatory for all users & $\square$Pass $\square$Fail & ,

MFA adoption 100% & $\square$Pass $\square$Fail & ,

Quarterly access reviews & $\square$Pass $\square$Fail & ,

Asset inventory maintained & $\square$Pass $\square$Fail & ,

)

= Technical Controls

== Vulnerability Management

#table(
  columns: auto,
  stroke: 0.5pt,

Regular vulnerability scanning & $\square$Pass $\square$Fail & ,

Critical patches within 72h & $\square$Pass $\square$Fail & ,

Patch compliance >95% & $\square$Pass $\square$Fail & ,

)

== Endpoint Security

#table(
  columns: auto,
  stroke: 0.5pt,

EDR deployed on all endpoints & $\square$Pass $\square$Fail & ,

Full disk encryption & $\square$Pass $\square$Fail & ,

)

= Summary

#table(
  columns: auto,
  stroke: 0.5pt,

*Total Controls Checked* & [NUMBER] ,

*Pass* & [NUMBER] ,

*Fail* & [NUMBER] ,

*Compliance Rate* & [PERCENTAGE]% ,

)

\section*{Critical Findings}


- [Finding 1]
- [Finding 2]


\section*{Recommendations}


- [Recommendation 1]
- [Recommendation 2]


#v(1cm)

*Auditor Signature:* \underline{\hspace{6cm}} *Date:* \underline{\hspace{3cm}}



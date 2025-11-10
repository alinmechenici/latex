#set document(title: "Penetration Test Report", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Penetration Test Report]
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
\definecolor{critical}{RGB}{204,0,0}
\definecolor{high}{RGB}{255,102,0}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Penetration Test Report*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Penetration Test Report},
{\Large Security Assessment}
\end{center}

\section*{Executive Summary}

#table(
  columns: auto,
  stroke: 0.5pt,

*Test Date* & [DATE RANGE] ,

*Tester* & [NAME/COMPANY] ,

*Test Type* & $\square$ External \quad $\square$ Internal \quad $\square$ Web App ,

*Scope* & [SYSTEMS/IP RANGES TESTED] ,

)

\subsection*{Key Findings}

#table(
  columns: auto,
  stroke: 0.5pt,

*Critical* & [NUMBER] ,

*High* & [NUMBER] ,

*Medium* & [NUMBER] ,

*Low* & [NUMBER] ,

*Informational* & [NUMBER] ,

)

= Methodology


- *Reconnaissance:* Information gathering
- *Scanning:* Vulnerability identification
- *Exploitation:* Vulnerability validation
- *Post-Exploitation:* Impact assessment
- *Reporting:* Documentation


= Findings

#table(
  columns: auto,
  stroke: 0.5pt,

*ID* & *Finding* & *Severity* & *CVSS* & *System* ,

\endfirsthead

*ID* & *Finding* & *Severity* & *CVSS* & *System* ,

\endhead
F-01 & [Vulnerability Name] & Critical & 9.8 & [System] ,

F-02 & [Vulnerability Name] & High & 7.5 & [System] ,

)

= Detailed Findings

== F-01: [Vulnerability Name]

*Severity:* #text(fill: rgb("critical"))[CRITICAL] (CVSS 9.8)

*Description:* [Detailed description]

*Impact:* [What attacker could achieve]

*Affected Systems:* [List]

*Proof of Concept:* [Steps to reproduce]

*Remediation:* [How to fix]

*Timeline:* Remediate within 72 hours

= Recommendations


- [Recommendation 1]
- [Recommendation 2]


= Conclusion

Overall security posture: [Assessment]



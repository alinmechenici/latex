#set document(title: "Business Impact Analysis", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Business Impact Analysis]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Business Impact Analysis*]}
\fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
\fancyfoot[L]{#text(fill: rgb("nis2gray"))[\small \jobname]}
\fancyfoot[C]{#text(fill: rgb("nis2gray"))[\small Confidential]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Business Impact Analysis]\par}
    #v(0.5cm)
    {\Large NIS2 Business Continuity Assessment\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Analysis Date:* \today\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    \vfill
    {\small NIS2 Article 21(2)(c) - Business Continuity\par}
\end{titlepage}

#outline()
#pagebreak()

= Executive Summary

== Purpose
This Business Impact Analysis (BIA) identifies critical business functions, their dependencies, and the impact of disruptions to support NIS2-compliant business continuity planning.

== Scope

    - All business functions and processes
    - Critical IT systems and infrastructure
    - Dependencies and resource requirements
    - Recovery objectives and priorities


= Methodology

== Process

    - Identify business functions and processes
    - Interview process owners
    - Determine criticality and dependencies
    - Define recovery time and point objectives
    - Calculate financial and operational impacts
    - Prioritize recovery efforts


= Critical Business Functions

#table(
  columns: auto,
  stroke: 0.5pt,

*Function* & *Description* & *Process Owner* & *Criticality* & *Staff Required* ,

\endfirsthead

*Function* & *Description* & *Process Owner* & *Criticality* & *Staff Required* ,

\endhead
[Function 1] & [Description] & [Owner] & Critical & [Number] ,

[Function 2] & [Description] & [Owner] & High & [Number] ,

[Function 3] & [Description] & [Owner] & Medium & [Number] ,

\caption{Critical Business Functions}
)

= Recovery Objectives

== Recovery Time Objective (RTO)
Maximum acceptable downtime for each function.

== Recovery Point Objective (RPO)
Maximum acceptable data loss for each function.

#table(
  columns: auto,
  stroke: 0.5pt,

*Function/System* & *RTO* & *RPO* & *Impact if Unavailable* & *Priority* ,

\endfirsthead

*Function/System* & *RTO* & *RPO* & *Impact if Unavailable* & *Priority* ,

\endhead
[System 1] & 4 hours & 1 hour & Service disruption, revenue loss & P1 ,

[System 2] & 24 hours & 4 hours & Limited operations & P2 ,

[System 3] & 72 hours & 24 hours & Administrative delay & P3 ,

\caption{Recovery Objectives by System}
)

= Impact Analysis

== Financial Impact

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Outage Duration* & *Revenue Loss* & *Recovery Costs* & *Total Impact* ,

1 hour & €[AMOUNT] & €[AMOUNT] & €[AMOUNT] ,

4 hours & €[AMOUNT] & €[AMOUNT] & €[AMOUNT] ,

24 hours & €[AMOUNT] & €[AMOUNT] & €[AMOUNT] ,

1 week & €[AMOUNT] & €[AMOUNT] & €[AMOUNT] ,

)
\caption{Financial Impact by Outage Duration}
\end{table}

== Operational Impact

    - Customer service degradation
    - Employee productivity loss
    - Supply chain disruption
    - Regulatory compliance violations
    - Data loss or corruption


== Reputational Impact

    - Customer confidence erosion
    - Media coverage (negative)
    - Market share loss
    - Partner relationship damage


= Dependencies

== IT Systems Dependencies

#table(
  columns: auto,
  stroke: 0.5pt,

*System* & *Depends On* & *Single Point of Failure* ,

\endfirsthead

*System* & *Depends On* & *Single Point of Failure* ,

\endhead
[System A] & Network, Database, Authentication & [Yes/No - Description] ,

\caption{System Dependencies}
)

== Resource Dependencies

    - Personnel (key roles)
    - Facilities and workspace
    - Technology and equipment
    - Third-party services
    - Utilities (power, internet)


= Recovery Strategies

== Technology Recovery

    - Hot site for Tier 1 systems (RTO < 4h)
    - Warm site for Tier 2 systems (RTO < 24h)
    - Cold site for Tier 3 systems (RTO < 72h)
    - Cloud-based disaster recovery


== Personnel

    - Work-from-home capabilities
    - Cross-training programs
    - Succession planning
    - External expertise contracts


== Facilities

    - Alternate work locations identified
    - Emergency supplies and equipment
    - Communication systems


= Recommendations


    - Implement automated failover for critical systems
    - Increase backup frequency for high-RPO systems
    - Establish alternate supplier agreements
    - Conduct quarterly BC/DR testing
    - Invest in redundancy for single points of failure


= Conclusion

[Summary of critical functions, recovery priorities, and recommended investments]

= Approval
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

BIA Lead & & ,

CISO & & ,

CEO & & ,

)
\end{table}



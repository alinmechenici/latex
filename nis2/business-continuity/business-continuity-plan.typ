#set document(title: "Business Continuity Plan", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Business Continuity Plan]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Business Continuity Plan*]}
\fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
\fancyfoot[L]{#text(fill: rgb("nis2gray"))[\small \jobname]}
\fancyfoot[C]{#text(fill: rgb("nis2gray"))[\small CONFIDENTIAL]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Business Continuity Plan]\par}
    #v(0.5cm)
    {\Large NIS2 Directive Compliance\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    #v(0.5cm)
    {\Large*Date:* \today\par}
    \vfill
    {\small NIS2 Article 21 - Business Continuity and Crisis Management\par}
\end{titlepage}

#outline()
#pagebreak()

= Executive Summary
This Business Continuity Plan (BCP) ensures [ORGANIZATION] can continue critical operations during and after disruptive events, in compliance with NIS2 Directive requirements.

= Business Impact Analysis

== Critical Business Functions
#table(
  columns: auto,
  stroke: 0.5pt,

*Function* & *Description* & *RTO* & *RPO* & *Impact* ,

\endfirsthead

*Function* & *Description* & *RTO* & *RPO* & *Impact* ,

\endhead
[Function 1] & [Description] & 4 hours & 1 hour & Critical ,

[Function 2] & [Description] & 24 hours & 4 hours & High ,

\caption{Critical Business Functions}
)

= Recovery Strategies

== IT Recovery

    - Hot site available for critical systems
    - Cloud-based failover for key applications
    - Daily backups with off-site storage
    - Disaster recovery site located in [LOCATION]


== Personnel

    - Work-from-home capabilities
    - Cross-training for critical roles
    - Succession planning documented
    - Emergency contact procedures


== Facilities

    - Alternate work location: [ADDRESS]
    - Emergency power generation
    - Physical security measures


= Recovery Procedures

== Activation
BCP activated by:

    - Crisis Management Team
    - CISO for cyber incidents
    - CEO for major disruptions


== Critical System Recovery Steps

    - Assess incident impact
    - Notify Crisis Management Team
    - Activate recovery site if needed
    - Restore systems per priority
    - Verify functionality
    - Resume business operations
    - Document actions taken


= Communication Plan

== Internal Communications

    - Emergency notification system
    - Regular status updates
    - Employee hotline: [PHONE]


== External Communications

    - Customer notification procedures
    - Regulatory reporting (NIS2 requirements)
    - Media relations protocol


= Testing and Maintenance

== Testing Schedule

    - Annual full BCP test
    - Semi-annual tabletop exercises
    - Quarterly backup restoration tests


== Plan Updates
Review and update:

    - Annually at minimum
    - After significant organizational changes
    - After test exercises
    - After actual incidents


= Approval
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

CEO & & ,

CISO & & ,

)
\end{table}



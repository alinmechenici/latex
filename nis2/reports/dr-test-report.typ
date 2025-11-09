#set document(title: "Dr Test Report", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Dr Test Report]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*DR Test Report*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Disaster Recovery Test Report},
{\Large DR Exercise Results}
\end{center}

\section*{Test Overview}

#table(
  columns: auto,
  stroke: 0.5pt,

*Test Date* & [DATE] ,

*Test Type* & $\square$ Full Failover \quad $\square$ Partial \quad $\square$ Tabletop ,

*Test Leader* & [NAME] ,

*Participants* & [NUMBER] participants ,

*Duration* & [HOURS/DAYS] ,

)

\section*{Test Objectives}


- Validate RTO/RPO targets
- Test recovery procedures
- Verify backup integrity
- Train DR team
- Identify gaps/improvements


\section*{Systems Tested}

#table(
  columns: auto,
  stroke: 0.5pt,

*System* & *RTO Target* & *Actual* & *Status* & *Notes* ,

\endfirsthead

*System* & *RTO Target* & *Actual* & *Status* & *Notes* ,

\endhead
[System 1] & 4h & 3.5h & #text(fill: rgb("pass"))[PASS] & ,

[System 2] & 24h & 26h & #text(fill: rgb("fail"))[FAIL] & Exceeded target ,

)

\section*{Test Results}

\subsection*{Success Criteria}

#table(
  columns: auto,
  stroke: 0.5pt,

*Criterion* & *Met?* & *Comments* ,

All critical systems recovered & YES/NO & ,

RTO targets met & YES/NO & ,

RPO targets met & YES/NO & ,

Data integrity verified & YES/NO & ,

Applications functional & YES/NO & ,

)

\subsection*{Issues Encountered}


- [Issue 1 - Impact - Resolution]
- [Issue 2 - Impact - Resolution]


\section*{Lessons Learned}

*What Worked Well:*

- [Success 1]
- [Success 2]


*What Needs Improvement:*

- [Improvement 1]
- [Improvement 2]


\section*{Action Items}

#table(
  columns: auto,
  stroke: 0.5pt,

*ID* & *Action* & *Owner* & *Due Date* ,

A-01 & [Action description] & [Owner] & [Date] ,

A-02 & [Action description] & [Owner] & [Date] ,

)

\section*{Recommendations}


- Update DR procedures
- Additional training
- Infrastructure improvements


\section*{Conclusion}

Overall test result: $\square$ #text(fill: rgb("pass"))[SUCCESSFUL] \quad $\square$ #text(fill: rgb("fail"))[UNSUCCESSFUL] \quad $\square$ PARTIAL

Next DR test scheduled for: [DATE]

#v(1cm)

*Approved:* \underline{\hspace{6cm}} *Date:* \underline{\hspace{3cm}}



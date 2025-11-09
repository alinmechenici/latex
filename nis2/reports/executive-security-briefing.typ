#set document(title: "Executive Security Briefing", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Executive Security Briefing]
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
\definecolor{good}{RGB}{0,153,51}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Executive Security Briefing*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Executive Security Briefing},
#v(0.3cm)
{\Large Monthly Cybersecurity Report},
#v(0.3cm)
{\large [MONTH YEAR]}
\end{center}

\section*{Security Posture Summary}

\begin{center}
\begin{tikzpicture}
\node[circle, fill=good, minimum size=1.5cm, text=white, font=\huge\bfseries] at (0,0) {B+};
\node[below] at (0,-1) {Overall Security Score};
\end{tikzpicture}
\end{center}

\subsection*{Key Metrics}

#table(
  columns: auto,
  stroke: 0.5pt,

*Metric* & *Current* & *Target* & *Trend* ,

Security Incidents (Month) & [N] & <5 & $\uparrow$/$\downarrow$ ,

Critical Vulnerabilities & [N] & 0 & $\uparrow$/$\downarrow$ ,

Patch Compliance & [X]% & 95% & $\uparrow$/$\downarrow$ ,

Training Completion & [X]% & 100% & $\uparrow$/$\downarrow$ ,

Phishing Click Rate & [X]% & <5% & $\uparrow$/$\downarrow$ ,

)

\section*{This Month's Highlights}

\subsection*{Achievements}

- ✅ [Achievement 1]
- ✅ [Achievement 2]


\subsection*{Concerns}

- ⚠️ [Concern 1]
- ⚠️ [Concern 2]


\section*{Incident Summary}

#table(
  columns: auto,
  stroke: 0.5pt,

*Total Incidents* & [NUMBER] ,

Critical (P1) & [NUMBER] ,

High (P2) & [NUMBER] ,

Medium (P3) & [NUMBER] ,

NIS2 Reportable & [NUMBER] ,

)

\subsection*{Notable Incidents}

*INC-[ID]:* [Brief description] - Status: [Resolved/Ongoing]

\section*{Threat Landscape}

*Current Threats Targeting Our Sector:*

- [Threat 1 - e.g., Ransomware campaign targeting healthcare]
- [Threat 2]


*Intelligence:* [Brief summary of threat intel]

\section*{Compliance Status}

#table(
  columns: auto,
  stroke: 0.5pt,

*NIS2 Compliance* & #text(fill: rgb("good"))[✓ Compliant] ,

*GDPR* & #text(fill: rgb("good"))[✓ Compliant] ,

*ISO 27001* & #text(fill: rgb("good"))[✓ Certified] ,

*Next Audit* & [DATE] ,

)

\section*{Key Projects}


- *[Project Name]* - [Status] - [Completion %]
- *[Project Name]* - [Status] - [Completion %]


\section*{Budget & Resources}

#table(
  columns: auto,
  stroke: 0.5pt,

*Budget Item* & *Allocated* & *Spent YTD* ,

Security Tools & €[AMOUNT] & €[AMOUNT] ,

Personnel & €[AMOUNT] & €[AMOUNT] ,

Training & €[AMOUNT] & €[AMOUNT] ,

*Total* & €[AMOUNT] & €[AMOUNT] ,

)

\section*{Recommendations}


- [Recommendation requiring exec decision/budget]
- [Recommendation requiring exec decision/budget]


\section*{Looking Ahead}

*Next Month Priorities:*

- [Priority 1]
- [Priority 2]
- [Priority 3]


#v(1cm)

*Prepared by:* [CISO NAME]

*Date:* [DATE]



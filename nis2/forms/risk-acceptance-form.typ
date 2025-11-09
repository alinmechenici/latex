#set document(title: "Risk Acceptance Form", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Risk Acceptance Form]
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
\definecolor{nis2red}{RGB}{204,0,0}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Risk Acceptance Form*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries#text(fill: rgb("nis2blue"))[Risk Acceptance Form]},
#v(0.3cm)
{\Large Formal Risk Acceptance Documentation}
\end{center}

\section*{Form Information}

#table(
  columns: auto,
  stroke: 0.5pt,

*Risk ID* & RISK-[YEAR]-[NUMBER] ,

*Submission Date* & [DATE] ,

*Submitted By* & [NAME] - [TITLE] ,

*Department* & [DEPARTMENT] ,

)

\section*{Risk Description}

\subsection*{Risk Summary}
Briefly describe the risk being accepted:

#v(3cm)

\subsection*{Risk Details}

#table(
  columns: auto,
  stroke: 0.5pt,

*Risk Category* & $\square$ Technical \quad $\square$ Operational \quad $\square$ Compliance ,
& $\square$ Financial \quad $\square$ Reputational \quad $\square$ Other ,

*Affected Systems* & [LIST SYSTEMS/APPLICATIONS] ,
& ,

*Affected Data* & [DATA TYPES AND CLASSIFICATION] ,
& ,

)

\section*{Risk Assessment}

#table(
  columns: auto,
  stroke: 0.5pt,

*Likelihood* & $\square$ Very High (5) \quad $\square$ High (4) \quad $\square$ Medium (3) ,
& $\square$ Low (2) \quad $\square$ Very Low (1) ,

*Impact* & $\square$ Critical (5) \quad $\square$ High (4) \quad $\square$ Medium (3) ,
& $\square$ Low (2) \quad $\square$ Minimal (1) ,

*Risk Score* & Likelihood × Impact = \underline{\hspace{2cm}} ,

*Risk Level* & $\square$ Critical (16-25) \quad $\square$ High (11-15) ,
& $\square$ Medium (6-10) \quad $\square$ Low (1-5) ,

)

\section*{Risk Treatment Options Considered}

\subsection*{Why Not Mitigate?}

Explain why risk mitigation is not feasible:

#v(3cm)

\subsection*{Why Not Transfer?}

Explain why risk transfer (insurance, outsourcing) is not chosen:

#v(2cm)

\subsection*{Why Not Avoid?}

Explain why avoiding the risk (discontinuing activity) is not an option:

#v(2cm)

\section*{Business Justification}

Explain the business reason for accepting this risk:

#v(4cm)

\section*{Compensating Controls}

List any compensating controls in place to reduce (but not eliminate) the risk:


- [Control 1]
#v(1cm)
- [Control 2]
#v(1cm)
- [Control 3]
#v(1cm)


\section*{Acceptance Terms}

#table(
  columns: auto,
  stroke: 0.5pt,

*Acceptance Duration* & $\square$ Permanent ,
& $\square$ Temporary until: [DATE] ,
& $\square$ Until specific condition met: \underline{\hspace{4cm}} ,

*Review Frequency* & $\square$ Quarterly \quad $\square$ Semi-annual \quad $\square$ Annual ,

*Next Review Date* & [DATE] ,

*Conditions for Review* & $\square$ Risk score increases ,
& $\square$ New threats emerge ,
& $\square$ Compensating controls fail ,
& $\square$ Regulatory requirements change ,

)

\section*{Approval}

*\textcolor{nis2red*{Risk acceptance requires appropriate management approval based on risk level.}}

#v(0.5cm)

*Approval Requirements:*

- *Critical/High Risk:* CISO + CIO + CEO
- *Medium Risk:* CISO + CIO or Risk Owner
- *Low Risk:* CISO or Department Head


#v(1cm)

#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Signature & Date* ,

Risk Owner & & ,
& & ,

CISO & & ,
& & ,

CIO (if req'd) & & ,
& & ,

CEO (if req'd) & & ,
& & ,

)

#v(1cm)

\hrule
#v(0.3cm)

\footnotesize
*Risk Acceptance Registry:* This form must be logged in the Risk Acceptance Registry

*Retention:* Retain for duration of acceptance + 2 years

*Review:* Re-assess on review date or when conditions change



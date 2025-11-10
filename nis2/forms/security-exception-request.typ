#set document(title: "Security Exception Request", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Security Exception Request]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Security Exception Request*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Security Exception Request},
{\Large Policy Exception Request Form}
\end{center}

\section*{Request Information}

#table(
  columns: auto,
  stroke: 0.5pt,

*Request ID* & EXC-[YEAR]-[NUMBER] ,

*Request Date* & [DATE] ,

*Requestor* & [NAME] - [TITLE] ,

*Department* & [DEPARTMENT] ,

*Contact* & [EMAIL] - [PHONE] ,

)

\section*{Exception Details}

\subsection*{Policy/Standard Violated}

#table(
  columns: auto,
  stroke: 0.5pt,

*Policy Name* & [POLICY NAME] ,

*Specific Requirement* & [SECTION/REQUIREMENT] ,

)

\subsection*{Requested Exception}

Describe specifically what exception is being requested:

#v(3cm)

\subsection*{Systems/Applications Affected}

#table(
  columns: auto,
  stroke: 0.5pt,

*Systems* & [LIST ALL AFFECTED SYSTEMS] ,
& ,

*Data Involved* & [DATA TYPES AND CLASSIFICATION] ,
& ,

*Users Affected* & [NUMBER AND TYPE OF USERS] ,

)

\section*{Business Justification}

\subsection*{Business Need}

Explain why this exception is necessary:

#v(4cm)

\subsection*{Alternatives Considered}

What alternatives were considered and why were they rejected?

#v(3cm)

\section*{Duration}

#table(
  columns: auto,
  stroke: 0.5pt,

*Exception Type* & $\square$ Temporary - Until: [DATE] ,
& $\square$ Permanent (requires strong justification) ,

*Maximum Duration* & [TIMEFRAME - e.g., 90 days] ,

)

\section*{Risk Assessment}

#table(
  columns: auto,
  stroke: 0.5pt,

*Risk Level* & $\square$ High \quad $\square$ Medium \quad $\square$ Low ,

*Potential Impact* & [DESCRIBE SECURITY IMPACT] ,
& ,
& ,

)

\section*{Compensating Controls}

List all compensating controls that will be implemented:


- [Compensating control 1]
#v(1cm)
- [Compensating control 2]
#v(1cm)
- [Compensating control 3]
#v(1cm)


\section*{Security Review}

*Security Team Assessment:*

#v(3cm)

#table(
  columns: auto,
  stroke: 0.5pt,

*Recommendation* & $\square$ Approve \quad $\square$ Approve with conditions ,
& $\square$ Deny ,

*Conditions (if any)* & ,
& ,
& ,

*Security Reviewer* & [NAME] - [DATE] ,

)

\section*{Approval}

*Approval Authority:*

- *High Risk:* CISO + CIO/CTO
- *Medium Risk:* CISO
- *Low Risk:* Security Manager


#v(1cm)

#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Decision & Date* ,

Security Manager & & $\square$ Approve $\square$ Deny ,
& & ,

CISO & & $\square$ Approve $\square$ Deny ,
& & ,

CIO/CTO (if req'd) & & $\square$ Approve $\square$ Deny ,
& & ,

)

\section*{Conditions and Monitoring}

#table(
  columns: auto,
  stroke: 0.5pt,

*Review Date* & [DATE] ,

*Monitoring Required* & $\square$ Enhanced logging ,
& $\square$ Weekly status reports ,
& $\square$ Monthly reviews ,
& $\square$ Other: \underline{\hspace{5cm}} ,

*Renewal Process* & $\square$ Automatic (if criteria met) ,
& $\square$ Requires new request ,

)

#v(1cm)

\hrule
#v(0.3cm)

\footnotesize
*Exception Registry:* Log all approved exceptions in Exception Registry

*Audit Trail:* Maintain complete documentation for audit purposes



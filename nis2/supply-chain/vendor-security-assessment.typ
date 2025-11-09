#set document(title: "Vendor Security Assessment", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Vendor Security Assessment]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Vendor Security Assessment*]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Vendor Security Assessment]\par}
    #v(0.5cm)
    {\Large NIS2 Supply Chain Security\par}
    #v(2cm)
    {\Large*Vendor:* [VENDOR NAME]\par}
    #v(0.5cm)
    {\Large*Assessment Date:* \today\par}
    #v(0.5cm)
    {\Large*Assessor:* [NAME]\par}
    \vfill
    {\small NIS2 Article 21 - Supply Chain Security\par}
\end{titlepage}

#outline()
#pagebreak()

= Vendor Information
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Vendor Name* & [NAME] ,

*Service Provided* & [DESCRIPTION] ,

*Risk Classification* & High / Medium / Low ,

*Contract Value* & [AMOUNT] ,

*Data Access* & Yes / No ,

)
\end{table}

= Security Assessment

== Information Security Management
#table(
  columns: auto,
  stroke: 0.5pt,

*Control* & *Status* & *Comments* ,

\endfirsthead

*Control* & *Status* & *Comments* ,

\endhead
ISO 27001 certification & Yes/No & ,

Security policies documented & Yes/No & ,

Risk assessment conducted & Yes/No & ,

Incident response plan & Yes/No & ,

\caption{Information Security Management Assessment}
)

== Access Control
#table(
  columns: auto,
  stroke: 0.5pt,

*Control* & *Status* & *Comments* ,

Multi-factor authentication & Yes/No & ,

Least privilege principle & Yes/No & ,

Access reviews conducted & Yes/No & ,

\caption{Access Control Assessment}
)

== Data Protection
#table(
  columns: auto,
  stroke: 0.5pt,

*Control* & *Status* & *Comments* ,

Data encryption at rest & Yes/No & ,

Data encryption in transit & Yes/No & ,

GDPR compliance & Yes/No & ,

Data backup procedures & Yes/No & ,

\caption{Data Protection Assessment}
)

= Risk Assessment

== Identified Risks
#table(
  columns: auto,
  stroke: 0.5pt,

*Risk* & *Likelihood* & *Impact* & *Mitigation* ,

[Risk 1] & High/Med/Low & High/Med/Low & [Actions] ,

\caption{Risk Assessment}
)

= Recommendations

    - [Recommendation 1]
    - [Recommendation 2]
    - [Recommendation 3]


= Assessment Conclusion

*Overall Risk Rating:* [High / Medium / Low]

*Recommendation:* [Approve / Approve with conditions / Reject]

= Approval
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

Security Assessor & & ,

CISO & & ,

)
\end{table}



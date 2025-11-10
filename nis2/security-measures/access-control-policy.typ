#set document(title: "Access Control Policy", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Access Control Policy]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Access Control Policy*]}
\fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
\fancyfoot[L]{#text(fill: rgb("nis2gray"))[\small \jobname]}
\fancyfoot[C]{#text(fill: rgb("nis2gray"))[\small Internal Use Only]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Access Control Policy]\par}
    #v(0.5cm)
    {\Large NIS2 Directive Compliance\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    #v(0.5cm)
    {\Large*Effective Date:* \today\par}
    \vfill
    {\small NIS2 Article 21 - Access Control and Asset Management\par}
\end{titlepage}

#outline()
#pagebreak()

= Purpose
This Access Control Policy establishes requirements for managing access to information systems, networks, and data in compliance with NIS2 Directive requirements.

= Scope
Applies to all systems, applications, networks, and data assets, covering all employees, contractors, and third parties.

= Policy Statements

== Principle of Least Privilege
Users shall be granted minimum access rights necessary to perform their job functions.

== Multi-Factor Authentication (MFA)

    - MFA required for all user accounts
    - MFA required for remote access
    - MFA required for privileged accounts
    - MFA required for access to sensitive data


== User Account Management

    - Unique user IDs for all users
    - No shared accounts except where documented
    - Account approval process required
    - Regular account reviews (quarterly)
    - Immediate deactivation upon termination


== Password Requirements

    - Minimum 12 characters
    - Complexity requirements enforced
    - 90-day maximum age
    - Password history: 12 passwords
    - Account lockout after 5 failed attempts


== Privileged Access Management

    - Separate accounts for administrative functions
    - Just-in-time privileged access
    - All privileged actions logged
    - Monthly privileged account reviews


== Access Reviews

    - Quarterly access reviews for all users
    - Annual certification by data owners
    - Remove unnecessary access rights
    - Document review results


= Roles and Responsibilities

== Access Control Administrator

    - Provisioning and deprovisioning access
    - Maintaining access control systems
    - Conducting access reviews
    - Reporting access control metrics


== Data Owners

    - Approving access requests
    - Defining access requirements
    - Certifying user access annually
    - Reviewing access logs


== Users

    - Protecting credentials
    - Reporting suspicious access
    - Complying with access policies
    - Logging out when leaving workstations


= Approval
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

CISO & & ,

)
\end{table}



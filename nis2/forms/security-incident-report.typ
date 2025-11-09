#set document(title: "Security Incident Report", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Security Incident Report]
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
\definecolor{nis2red}{RGB}{204,0,0}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Security Incident Report Form*]}
\fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
\fancyfoot[L]{#text(fill: rgb("nis2gray"))[\small \jobname]}
\fancyfoot[C]{#text(fill: rgb("nis2red"))[\small*CONFIDENTIAL*]}
\fancyfoot[R]{#text(fill: rgb("nis2gray"))[\small Page \thepage\ of \pageref{LastPage]}}

\renewcommand{\headrulewidth}{2pt}
\renewcommand{\footrulewidth}{1pt}

\hypersetup{
    colorlinks=true,
    linkcolor=nis2blue,
    filecolor=nis2blue,
    urlcolor=nis2blue,
}



\begin{center}
{\Huge\bfseries#text(fill: rgb("nis2blue"))[Security Incident Report]},
#v(0.3cm)
{\Large NIS2 Directive Compliance},
#v(0.5cm)
#text(fill: rgb("nis2red"))[*CONFIDENTIAL - INCIDENT RESPONSE USE ONLY*]
\end{center}

#v(0.5cm)

\section*{Report Information}

#table(
  columns: auto,
  stroke: 0.5pt,

*Incident ID* & INC-[YEAR]-[NUMBER] ,

*Report Date/Time* & [DATE] at [TIME] ,

*Reported By* & [NAME, ROLE] ,

*Contact Info* & Phone: [NUMBER] | Email: [EMAIL] ,

)

#v(1cm)

\section*{Incident Overview}

\subsection*{Discovery Information}

#table(
  columns: auto,
  stroke: 0.5pt,

*Discovery Date/Time* & [DATE] at [TIME] ,

*Discovery Method* & $\square$ Automated Alert \quad $\square$ User Report \quad $\square$ Routine Check ,
& $\square$ External Notification \quad $\square$ Other: \underline{\hspace{4cm}} ,

*Discovered By* & [NAME/SYSTEM] ,

)

\subsection*{Incident Classification}

#table(
  columns: auto,
  stroke: 0.5pt,

*Incident Type* & $\square$ Malware/Ransomware \quad $\square$ Phishing/Social Engineering ,
& $\square$ Unauthorized Access \quad $\square$ Data Breach ,
& $\square$ DoS/DDoS Attack \quad $\square$ Insider Threat ,
& $\square$ System Compromise \quad $\square$ Data Loss ,
& $\square$ Policy Violation \quad $\square$ Other: \underline{\hspace{3cm}} ,

*Severity Level* & $\square$ #text(fill: rgb("nis2red"))[*CRITICAL (P1)*] - Immediate action required ,
& $\square$ *HIGH (P2)* - Urgent response needed ,
& $\square$ *MEDIUM (P3)* - Standard response ,
& $\square$ *LOW (P4)* - Informational ,

*NIS2 Significant?* & $\square$ YES - Report to competent authority required ,
& $\square$ NO - Internal handling only ,
& $\square$ TBD - Further assessment needed ,

)

\subsection*{Brief Description}

Provide a concise summary of the incident (2-3 sentences):

#v(3cm)

\section*{Affected Systems and Data}

\subsection*{Systems Affected}

#table(
  columns: auto,
  stroke: 0.5pt,

*System/Application* & *Hostname/IP* & *Criticality* & *Status* ,

\endfirsthead

*System/Application* & *Hostname/IP* & *Criticality* & *Status* ,

\endhead
& & $\square$ Critical & $\square$ Affected ,
& & $\square$ High & $\square$ Isolated ,
& & $\square$ Medium & $\square$ Recovered ,

& & $\square$ Critical & $\square$ Affected ,
& & $\square$ High & $\square$ Isolated ,
& & $\square$ Medium & $\square$ Recovered ,

& & $\square$ Critical & $\square$ Affected ,
& & $\square$ High & $\square$ Isolated ,
& & $\square$ Medium & $\square$ Recovered ,

\caption{Affected Systems}
)

\subsection*{Data Impact}

#table(
  columns: auto,
  stroke: 0.5pt,

*Data Affected?* & $\square$ YES \quad $\square$ NO \quad $\square$ Unknown ,

*Data Classification* & $\square$ CRITICAL \quad $\square$ CONFIDENTIAL ,
& $\square$ INTERNAL \quad $\square$ PUBLIC ,

*Data Types* & $\square$ Personal Data (GDPR) \quad $\square$ Payment Card Data (PCI) ,
& $\square$ Health Information \quad $\square$ Intellectual Property ,
& $\square$ Business Confidential \quad $\square$ Other: \underline{\hspace{3cm}} ,

*Records Affected* & Approximate Number: \underline{\hspace{5cm}} ,

*Data Exfiltration?* & $\square$ YES \quad $\square$ NO \quad $\square$ Suspected \quad $\square$ Unknown ,

)

\section*{Business Impact}

\subsection*{Service Impact}

#table(
  columns: auto,
  stroke: 0.5pt,

*Services Affected* & $\square$ Customer-Facing Services \quad $\square$ Internal Operations ,
& $\square$ None \quad $\square$ Other: \underline{\hspace{4cm}} ,

*Users Impacted* & $\square$ External Customers: [NUMBER] ,
& $\square$ Internal Users: [NUMBER] ,
& $\square$ Partners/Vendors: [NUMBER] ,

*Downtime* & Start: [DATE/TIME] ,
& End: [DATE/TIME] or $\square$ Ongoing ,
& Total Duration: \underline{\hspace{4cm}} ,

)

\subsection*{Financial Impact (Estimated)}

#table(
  columns: auto,
  stroke: 0.5pt,

*Direct Costs* & Investigation: €\underline{\hspace{3cm}} ,
& Remediation: €\underline{\hspace{3cm}} ,
& Recovery: €\underline{\hspace{3cm}} ,

*Revenue Loss* & €\underline{\hspace{5cm}} ,

*Total Estimated* & €\underline{\hspace{5cm}} ,

)

\section*{Incident Timeline}

#table(
  columns: auto,
  stroke: 0.5pt,

*Date/Time* & *Event* ,

\endfirsthead

*Date/Time* & *Event* ,

\endhead
[TIME] & Initial compromise / Incident start (estimated) ,

[TIME] & Incident detected ,

[TIME] & IR Team notified ,

[TIME] & Containment initiated ,

[TIME] & Containment completed ,

[TIME] & Eradication completed ,

[TIME] & Recovery initiated ,

[TIME] & Services restored ,

[TIME] & Incident closed ,

\caption{Incident Timeline}
)

\section*{Response Actions Taken}

\subsection*{Immediate Actions}

$\square$ Affected systems isolated from network ,
$\square$ User accounts disabled/reset ,
$\square$ Malicious IPs/domains blocked ,
$\square$ Forensic evidence preserved ,
$\square$ Backups verified ,
$\square$ Enhanced monitoring deployed ,
$\square$ Other: \underline{\hspace{8cm}}

\subsection*{Investigation}

#table(
  columns: auto,
  stroke: 0.5pt,

*Root Cause* & ,
& ,
& ,

*Attack Vector* & $\square$ Phishing Email \quad $\square$ Vulnerable Software ,
& $\square$ Weak Credentials \quad $\square$ Misconfiguration ,
& $\square$ Supply Chain \quad $\square$ Insider \quad $\square$ Unknown ,
& $\square$ Other: \underline{\hspace{6cm}} ,

*Threat Actor* & $\square$ External - Cybercriminal ,
& $\square$ External - Nation State ,
& $\square$ External - Hacktivist ,
& $\square$ Internal - Malicious ,
& $\square$ Internal - Accidental ,
& $\square$ Unknown ,

)

\subsection*{Indicators of Compromise (IoCs)}

#table(
  columns: auto,
  stroke: 0.5pt,

*IoC Type* & *Value* ,

\endfirsthead

*IoC Type* & *Value* ,

\endhead
IP Addresses & ,

Domains & ,

File Hashes & ,

URLs & ,

Email Addresses & ,

\caption{Indicators of Compromise}
)

\section*{Regulatory Reporting}

\subsection*{NIS2 Incident Reporting}

#table(
  columns: auto,
  stroke: 0.5pt,

*Significant Incident?* & $\square$ YES \quad $\square$ NO ,

*Early Warning (24h)* & Submitted: $\square$ YES on [DATE] at [TIME] ,
& $\square$ NO - Reason: \underline{\hspace{5cm}} ,
& $\square$ Not Required ,

*Incident Report (72h)* & Submitted: $\square$ YES on [DATE] at [TIME] ,
& $\square$ NO - Reason: \underline{\hspace{5cm}} ,
& $\square$ Not Required ,

*Final Report (1 month)* & Submitted: $\square$ YES on [DATE] at [TIME] ,
& $\square$ Pending - Due: [DATE] ,
& $\square$ Not Required ,

*Authority Notified* & [COMPETENT AUTHORITY NAME] ,
& Reference Number: \underline{\hspace{5cm}} ,

)

\subsection*{Other Regulatory Notifications}

#table(
  columns: auto,
  stroke: 0.5pt,

*GDPR Data Breach* & $\square$ YES - DPA notified on [DATE] ,
& $\square$ NO - Not applicable ,
& Data subjects notified: $\square$ YES on [DATE] $\square$ NO ,

*Other Regulations* & $\square$ PCI DSS - Card brands notified ,
& $\square$ Sector-specific regulations ,
& $\square$ Law enforcement notified ,
& $\square$ None applicable ,

)

\section*{Communications}

\subsection*{Internal Communications}

#table(
  columns: auto,
  stroke: 0.5pt,

*Management Briefed* & $\square$ YES on [DATE] at [TIME] ,
& Attendees: \underline{\hspace{7cm}} ,

*Employee Notification* & $\square$ YES - Method: \underline{\hspace{6cm}} ,
& $\square$ NO - Not required ,

)

\subsection*{External Communications}

#table(
  columns: auto,
  stroke: 0.5pt,

*Customer Notification* & $\square$ YES on [DATE] ,
& Method: $\square$ Email $\square$ Website $\square$ Direct Contact ,
& $\square$ NO - Not required ,

*Media Statement* & $\square$ YES - Released on [DATE] ,
& $\square$ NO - Not required ,

*Partner Notification* & $\square$ YES - Notified on [DATE] ,
& $\square$ NO - Not required ,

)

\section*{Lessons Learned}

\subsection*{What Worked Well}

#v(3cm)

\subsection*{What Could Be Improved}

#v(3cm)

\subsection*{Action Items}

#table(
  columns: auto,
  stroke: 0.5pt,

*Action \#* & *Description* & *Owner* & *Due Date* ,

\endfirsthead

*Action \#* & *Description* & *Owner* & *Due Date* ,

\endhead
1 & & & ,

2 & & & ,

3 & & & ,

\caption{Action Items}
)

\section*{Closure and Sign-Off}

#table(
  columns: auto,
  stroke: 0.5pt,

*Incident Status* & $\square$ Closed - Resolved ,
& $\square$ Closed - Unresolved (explain): \underline{\hspace{3cm}} ,
& $\square$ Open - In Progress ,

*Closure Date* & [DATE] ,

)

#v(1cm)

#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Signature & Date* ,

IR Team Leader & & ,
& & ,

CISO & & ,
& & ,

Incident Owner & & ,
& & ,

)

#v(1cm)

*Final Report Location:* \underline{\hspace{10cm}}

*Evidence Location:* \underline{\hspace{10cm}}

#v(0.5cm)

\hrule

#v(0.3cm)

\footnotesize
*Document Classification:* CONFIDENTIAL - INCIDENT RESPONSE ONLY ,
*Retention Period:* 3 years minimum per NIS2 requirements ,
*Access:* IR Team, CISO, Legal Counsel, Authorized Personnel Only ,
*Form Version:* 1.0 | *Last Updated:* \today



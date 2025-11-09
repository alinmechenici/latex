#set document(title: "Nis2 Incident Notification 72H", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Nis2 Incident Notification 72H]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*NIS2 Incident Notification (72h)*]}
\fancyhead[R]{\includegraphics[height=0.8cm]{logo.png}}
\fancyfoot[L]{#text(fill: rgb("nis2gray"))[\small \jobname]}
\fancyfoot[C]{#text(fill: rgb("nis2gray"))[\small Regulatory Notification]}
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
{\Huge\bfseries#text(fill: rgb("nis2blue"))[NIS2 INCIDENT NOTIFICATION]},
#v(0.3cm)
{\Large 72-Hour Detailed Notification},
#v(0.5cm)
{\large Directive (EU) 2022/2555 - Article 23(2)}
\end{center}

#v(0.5cm)

\section*{Notification Reference}

#table(
  columns: auto,
  stroke: 0.5pt,

*Early Warning Ref* & [REF NUMBER from 24h notification] ,

*Incident ID* & INC-[YEAR]-[NUMBER] ,

*Notification Date/Time* & [DATE] at [TIME] [TIMEZONE] ,

*Hours Since Detection* & [HOURS] hours ,

)

\section*{Entity Information}

#table(
  columns: auto,
  stroke: 0.5pt,

*Entity Name* & [ORGANIZATION] ,

*NIS2 Registration* & [NUMBER] ,

*Contact Person* & [NAME] - [TITLE] ,

*Email / Phone* & [EMAIL] / [PHONE] ,

)

#v(1cm)

\section*{1. Incident Classification}

\subsection*{Incident Type}

#table(
  columns: auto,
  stroke: 0.5pt,

*Primary Type* & [SELECT: Cyber Attack, System Failure, Human Error, etc.] ,

*Specific Category* & [e.g., Ransomware, DDoS, Data Breach, Misconfiguration] ,

*Attack Vector* & [e.g., Phishing email, Unpatched vulnerability, Stolen credentials] ,

)

\subsection*{Severity Assessment}

#table(
  columns: auto,
  stroke: 0.5pt,

*Severity Level* & $\square$ Critical \quad $\square$ High \quad $\square$ Medium ,

*Significance* & $\square$ Significant incident (reporting required) ,
& $\square$ Major incident (substantial impact) ,

)

#v(1cm)

\section*{2. Detailed Impact Assessment}

\subsection*{Services Affected}

#table(
  columns: auto,
  stroke: 0.5pt,

*Service/System* & *Impact Level* & *Status* ,

\endfirsthead

*Service/System* & *Impact Level* & *Status* ,

\endhead
[Service 1] & Complete/Partial/None & Offline/Degraded/Operational ,

[Service 2] & Complete/Partial/None & Offline/Degraded/Operational ,

[Service 3] & Complete/Partial/None & Offline/Degraded/Operational ,

\caption{Affected Services}
)

\subsection*{User/Customer Impact}

#table(
  columns: auto,
  stroke: 0.5pt,

*Total Users Affected* & [NUMBER] (approximate) ,

*Customer Categories* & $\square$ Individual consumers: [NUMBER] ,
& $\square$ Business customers: [NUMBER] ,
& $\square$ Public sector: [NUMBER] ,

*Geographic Distribution* & $\square$ Single location ,
& $\square$ Multiple locations in [COUNTRY] ,
& $\square$ Multiple Member States: [LIST] ,

*Service Downtime* & Start: [DATE/TIME] ,
& Duration: [HOURS/DAYS] or Ongoing ,

)

\subsection*{Data Impact}

#table(
  columns: auto,
  stroke: 0.5pt,

*Data Compromised* & $\square$ YES \quad $\square$ NO \quad $\square$ Under Investigation ,

*Data Types* & $\square$ Personal data (GDPR) ,
& $\square$ Financial information ,
& $\square$ Business confidential ,
& $\square$ Operational/technical data ,
& $\square$ Other: \underline{\hspace{5cm}} ,

*Records Affected* & [NUMBER] records (estimated) ,

*Data Exfiltration* & $\square$ Confirmed \quad $\square$ Suspected \quad $\square$ No evidence ,

)

\subsection*{Financial Impact (Estimated)}

#table(
  columns: auto,
  stroke: 0.5pt,

*Direct Costs* & €[AMOUNT] ,

*Revenue Loss* & €[AMOUNT] ,

*Recovery Costs* & €[AMOUNT] (estimated) ,

*Total Estimated* & €[AMOUNT] ,

)

#v(1cm)

\section*{3. Technical Analysis}

\subsection*{Indicators of Compromise (IoCs)}

#table(
  columns: auto,
  stroke: 0.5pt,

*IoC Type* & *Values* ,

\endfirsthead

*IoC Type* & *Values* ,

\endhead
IP Addresses & [List malicious IPs] ,

Domain Names & [List malicious domains] ,

File Hashes & [MD5/SHA-256 hashes] ,

Malware Family & [Name if identified] ,

URLs & [Malicious URLs] ,

Email Addresses & [Attacker emails] ,

\caption{Indicators of Compromise}
)

\subsection*{Attack Timeline}

#table(
  columns: auto,
  stroke: 0.5pt,

*Date/Time* & *Event* ,

\endfirsthead

*Date/Time* & *Event* ,

\endhead
[DATE/TIME] & Initial compromise (estimated) ,

[DATE/TIME] & First malicious activity detected ,

[DATE/TIME] & Incident discovered/reported ,

[DATE/TIME] & IR team notified ,

[DATE/TIME] & Containment initiated ,

[DATE/TIME] & Early warning submitted (24h) ,

[DATE/TIME] & Current status ,

\caption{Incident Timeline}
)

\subsection*{Root Cause Analysis}

*How did the incident occur?*

#v(3cm)

*Vulnerabilities Exploited:*

#v(2cm)

*Security Control Failures:*

#v(2cm)

#v(1cm)

\section*{4. Response Measures}

\subsection*{Containment Actions}


    - $\square$ Affected systems isolated from network
    - $\square$ Compromised accounts disabled
    - $\square$ Malicious IP addresses blocked
    - $\square$ Network traffic filtered
    - $\square$ Enhanced monitoring deployed
    - $\square$ Backup systems protected
    - $\square$ Other: \underline{\hspace{8cm}}


\subsection*{Eradication Measures}


    - $\square$ Malware removed from affected systems
    - $\square$ Vulnerabilities patched
    - $\square$ Compromised systems rebuilt
    - $\square$ Security configurations hardened
    - $\square$ Unauthorized access points closed
    - $\square$ Other: \underline{\hspace{8cm}}


\subsection*{Recovery Status}

#table(
  columns: auto,
  stroke: 0.5pt,

*Recovery Progress* & $\square$ Not started ,
& $\square$ In progress ([X]% complete) ,
& $\square$ Completed ,

*Services Restored* & [NUMBER/TOTAL] services operational ,

*Estimated Full Recovery* & [DATE/TIME] or $\square$ Unknown ,

)

#v(1cm)

\section*{5. Cross-Border and Sectoral Impact}

\subsection*{Cross-Border Implications}

#table(
  columns: auto,
  stroke: 0.5pt,

*Cross-Border Impact* & $\square$ YES \quad $\square$ NO ,

*Affected Member States* & [LIST COUNTRIES] ,

*Notifications Sent* & $\square$ Relevant authorities notified ,
& $\square$ In progress ,
& $\square$ Not applicable ,

)

\subsection*{Other Sectors Affected}

#table(
  columns: auto,
  stroke: 0.5pt,

*Impact on Other Sectors* & $\square$ YES \quad $\square$ NO \quad $\square$ Potential ,

*Sectors* & [LIST - e.g., Energy, Transport, Finance] ,

*Coordination* & $\square$ Coordinating with sector authorities ,

)

#v(1cm)

\section*{6. Communication}

\subsection*{Stakeholder Notifications}

#table(
  columns: auto,
  stroke: 0.5pt,

*Customers Notified* & $\square$ YES on [DATE] ,
& $\square$ NO - Reason: \underline{\hspace{5cm}} ,
& $\square$ Planned for [DATE] ,

*Partners Notified* & $\square$ YES \quad $\square$ NO \quad $\square$ N/A ,

*Media Statement* & $\square$ Issued \quad $\square$ Planned \quad $\square$ Not planned ,

*Law Enforcement* & $\square$ Notified \quad $\square$ Not notified ,

)

\subsection*{Other Regulatory Notifications}


    - $\square$ GDPR breach notification to DPA
    - $\square$ Sector-specific regulator
    - $\square$ Other: \underline{\hspace{8cm}}


#v(1cm)

\section*{7. Preventive Measures}

\subsection*{Immediate Actions Taken}

#v(3cm)

\subsection*{Planned Improvements}

Short-term (0-30 days):

#v(2cm)

Medium-term (30-90 days):

#v(2cm)

Long-term (90+ days):

#v(2cm)

#v(1cm)

\section*{8. Additional Information}

Provide any other relevant information for the competent authority:

#v(4cm)

#v(1cm)

\section*{Next Steps}

#table(
  columns: auto,
  stroke: 0.5pt,

*Final Report* & Will be submitted by: [DATE] (within 1 month of initial notification) ,

*Interim Updates* & $\square$ As significant developments occur ,
& $\square$ [FREQUENCY - e.g., Daily, Weekly] ,

)

#v(1cm)

\section*{Declaration}

I, the undersigned, declare that the information provided in this incident notification is accurate and complete to the best of my knowledge.

#v(1cm)

#table(
  columns: auto,
  stroke: 0.5pt,

*Name* & [FULL NAME] ,

*Position* & [TITLE] ,

*Date & Time* & [DATE] at [TIME] ,

*Signature* & ,
& ,

)

#v(1cm)

\hrule
#v(0.3cm)

\footnotesize
*Submission Information:*

    - Competent Authority: [AUTHORITY NAME]
    - Submission Method: [Email/Portal/Phone]
    - Contact: [AUTHORITY CONTACT]


*Legal Basis:* NIS2 Directive (EU) 2022/2555, Article 23(2) - Notification within 72 hours with initial assessment

*Attachments:*

    - $\square$ Technical analysis report
    - $\square$ IoC list
    - $\square$ Impact assessment
    - $\square$ Other: \underline{\hspace{5cm}}




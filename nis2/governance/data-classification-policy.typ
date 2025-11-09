#set document(title: "Data Classification Policy", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Data Classification Policy]
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
\definecolor{critical}{RGB}{204,0,0}
\definecolor{confidential}{RGB}{255,102,0}
\definecolor{internal}{RGB}{255,204,0}
\definecolor{public}{RGB}{0,153,51}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Data Classification Policy*]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Data Classification Policy]\par}
    #v(0.5cm)
    {\Large NIS2 Directive Compliance\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    #v(0.5cm)
    {\Large*Effective Date:* \today\par}
    \vfill
    {\small NIS2 Article 21 - Data Protection\par}
\end{titlepage}

#outline()
#pagebreak()

= Purpose
This Data Classification Policy establishes a framework for classifying and protecting organizational data based on its sensitivity, value, and criticality to support NIS2 compliance and data protection requirements.

= Scope
This policy applies to all data created, received, maintained, or transmitted by [ORGANIZATION] regardless of format:

    - Electronic data (databases, files, emails)
    - Physical documents (paper, printed materials)
    - Verbal communications (meetings, calls)
    - Visual data (presentations, diagrams, videos)


= Data Classification Levels

== Classification Scheme

#table(
  columns: auto,
  stroke: 0.5pt,

\rowcolor{critical} #text(fill: rgb("white"))[*CRITICAL*] &
#text(fill: rgb("white"))[*Highly sensitive data requiring maximum protection*] ,

\multicolumn{2}{|p{13.5cm}|}{
*Definition:* Data whose unauthorized disclosure, modification, or destruction would cause catastrophic impact to the organization, customers, or legal/regulatory standing.

*Examples:*

    - Customer payment card data (PCI DSS)
    - Personal health information (PHI)
    - Trade secrets and proprietary algorithms
    - Encryption keys and credentials
    - Merger and acquisition information


*Impact of Breach:*

    - Severe financial loss (>€1M)
    - Existential threat to organization
    - Major regulatory fines and sanctions
    - Irreparable reputational damage
    - Legal liability and lawsuits

} ,

\rowcolor{confidential} *CONFIDENTIAL* &
*Sensitive data requiring strong protection* ,

\multicolumn{2}{|p{13.5cm}|}{
*Definition:* Data whose unauthorized disclosure would cause serious harm to the organization, employees, or stakeholders.

*Examples:*

    - Employee personal data (GDPR covered)
    - Customer contact information and accounts
    - Financial statements and budgets
    - Business strategies and plans
    - Unpublished research and development
    - Internal audit reports
    - Vendor contracts (non-public terms)


*Impact of Breach:*

    - Significant financial loss (€100K-€1M)
    - Competitive disadvantage
    - Regulatory investigations
    - Customer trust erosion
    - Legal obligations (breach notifications)

} ,

\rowcolor{internal} *INTERNAL* &
*Internal use only - moderate protection required* ,

\multicolumn{2}{|p{13.5cm}|}{
*Definition:* Data intended for internal use that should not be publicly disclosed but would cause limited harm if exposed.

*Examples:*

    - Internal policies and procedures
    - Organizational charts
    - Meeting minutes (non-sensitive)
    - Internal communications and memos
    - Training materials
    - IT documentation (non-security)


*Impact of Breach:*

    - Minor financial impact (<€100K)
    - Operational inconvenience
    - Potential embarrassment
    - Limited competitive impact

} ,

\rowcolor{public} #text(fill: rgb("white"))[*PUBLIC*] &
#text(fill: rgb("white"))[*Publicly available information*] ,

\multicolumn{2}{|p{13.5cm}|}{
*Definition:* Information approved for public release with no confidentiality restrictions.

*Examples:*

    - Marketing materials and brochures
    - Press releases
    - Public website content
    - Job postings
    - Published annual reports
    - Product documentation (public)


*Impact of Breach:*

    - No negative impact
    - Information is publicly available

} ,

\caption{Data Classification Levels}
)

= Handling Requirements by Classification

== CRITICAL Data

=== Storage

    - *Encryption:* AES-256 encryption mandatory (at rest and in transit)
    - *Location:* Approved secure storage only (no personal devices)
    - *Access:* Minimum necessary personnel only
    - *Audit:* All access logged and monitored


=== Transmission

    - Encrypted channels only (TLS 1.3, S/MIME, PGP)
    - Encrypted file containers for attachments
    - Secure file sharing platforms only
    - Recipients verified before transmission
    - Transmission logged


=== Disposal

    - Secure deletion (multiple overwrites)
    - Physical destruction for media
    - Certificate of destruction required
    - Documented disposal with approval


=== Labeling

    - *Electronic:* Header/footer: "CRITICAL - HANDLE WITH EXTREME CARE"
    - *Physical:* Red stamp/label on all pages
    - *Email:* Subject line must include [CRITICAL]


== CONFIDENTIAL Data

=== Storage

    - *Encryption:* AES-256 strongly recommended
    - *Location:* Corporate systems or approved cloud services
    - *Access:* Role-based access control
    - *Audit:* Access logging enabled


=== Transmission

    - Encrypted transmission required
    - Secure email or file sharing platforms
    - Password-protected documents
    - Recipients must have business need


=== Disposal

    - Secure deletion or shredding
    - Not to be placed in regular trash
    - Electronic deletion with overwrite


=== Labeling

    - *Electronic:* Header/footer: "CONFIDENTIAL"
    - *Physical:* Orange stamp/label
    - *Email:* Subject line should include [CONFIDENTIAL]


== INTERNAL Data

=== Storage

    - Corporate systems preferred
    - Encryption recommended but not required
    - Standard access controls


=== Transmission

    - Standard email acceptable
    - File sharing via corporate tools
    - External transmission requires approval


=== Disposal

    - Standard deletion acceptable
    - Shredding recommended for physical documents


=== Labeling

    - *Electronic:* Footer: "Internal Use Only"
    - *Physical:* Yellow label (optional)


== PUBLIC Data

=== Storage

    - No special requirements
    - Version control recommended


=== Transmission

    - No restrictions
    - Standard communication channels


=== Disposal

    - Standard deletion
    - Recycling acceptable


=== Labeling

    - Optional: "Public" or "Approved for Release"


= Classification Process

== Initial Classification

    - *Data Creator:* Classifies data at creation
    - *Assessment:* Evaluates potential impact of disclosure
    - *Application:* Applies appropriate marking
    - *Review:* Data owner reviews classification (if needed)
    - *Protection:* Applies required controls


== Classification Criteria

Consider the following when classifying data:

    - *Regulatory requirements:* GDPR, PCI DSS, industry regulations
    - *Contractual obligations:* Customer agreements, NDAs
    - *Business impact:* Financial, operational, reputational
    - *Competitive sensitivity:* Strategic value
    - *Privacy implications:* Personal data protection


== Reclassification
Data classification may change when:

    - Information becomes public (downgrade to PUBLIC)
    - Sensitivity increases (upgrade classification)
    - Retention period expires
    - Regulatory requirements change


*Process:*

    - Data owner approves reclassification
    - Update classification markings
    - Apply new handling requirements
    - Notify relevant stakeholders
    - Document reclassification decision


= Special Data Categories

== Personal Data (GDPR)
All personal data must be classified at minimum CONFIDENTIAL:

    - Names, addresses, email addresses
    - Identification numbers (SSN, passport)
    - Financial information
    - Health information
    - Biometric data
    - IP addresses and online identifiers


*Additional Requirements:*

    - Data Processing Agreement (DPA) for processors
    - Privacy by design principles
    - Data minimization
    - Retention limits enforced
    - Subject rights honored (access, deletion, portability)


== Payment Card Data (PCI DSS)
All payment card data classified as CRITICAL:

    - Cardholder name
    - Card number (PAN)
    - Expiration date
    - CVV/CVC codes (storage prohibited)


*Requirements:*

    - PCI DSS compliance mandatory
    - Tokenization or encryption required
    - Minimal retention periods
    - Secure disposal procedures
    - Annual PCI audit


== Intellectual Property

    - *Patents (filed):* CONFIDENTIAL
    - *Patents (pending):* CRITICAL
    - *Trade Secrets:* CRITICAL
    - *Copyright Material:* CONFIDENTIAL or INTERNAL
    - *Trademarks:* PUBLIC or INTERNAL


= Responsibilities

== Data Owners

    - Define classification for data in their domain
    - Approve access to classified data
    - Review classification annually
    - Ensure compliance with handling requirements
    - Authorize reclassification or disposal


== Data Custodians

    - Implement technical controls per classification
    - Monitor access and usage
    - Report security incidents
    - Maintain data according to requirements


== Data Users (All Employees)

    - Classify data created
    - Handle data according to classification
    - Apply proper markings
    - Report misclassification or breaches
    - Complete annual training


== Information Security Team

    - Provide classification guidance
    - Monitor compliance
    - Conduct audits
    - Investigate violations
    - Update policy as needed


= Compliance and Enforcement

== Training

    - Mandatory annual data classification training
    - Training completion required for all employees
    - Role-specific training for data owners
    - New hire onboarding includes classification training


== Audits

    - Quarterly sampling of classified data
    - Annual comprehensive audit
    - Random access log reviews
    - Incident-driven investigations


== Violations
Violations of this policy may result in:

    - First offense: Written warning and re-training
    - Second offense: Formal reprimand
    - Serious violations: Suspension or termination
    - Legal action if criminal activity suspected


= Metrics

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Metric* & *Target* ,

Data classification training completion & 100% ,

Critical data with proper controls & 100% ,

Classification audit compliance & >95% ,

Misclassification incidents & <5 per year ,

Data classification at creation & >90% ,

)
\caption{Data Classification KPIs}
\end{table}

= Related Documents

    - Cybersecurity Policy
    - Encryption Policy
    - Access Control Policy
    - Data Retention Policy
    - GDPR Privacy Policy
    - Acceptable Use Policy
    - Clean Desk Policy


= Review
Annual review or when:

    - Regulatory requirements change
    - New data types emerge
    - Significant breaches occur
    - Business operations change substantially


= Approval
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

CISO & & ,

Chief Privacy Officer & & ,

Legal Counsel & & ,

)
\end{table}



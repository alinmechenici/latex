#set document(title: "Asset Management Policy", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Asset Management Policy]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Asset Management Policy*]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Asset Management Policy]\par}
    #v(0.5cm)
    {\Large NIS2 Directive Compliance\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    #v(0.5cm)
    {\Large*Effective Date:* \today\par}
    \vfill
    {\small NIS2 Article 21(2)(i) - Asset Management\par}
\end{titlepage}

#outline()
#pagebreak()

= Purpose
This Asset Management Policy establishes requirements for identifying, tracking, and managing information assets to support NIS2 compliance and cybersecurity risk management.

= Scope
This policy applies to all information assets including:

    - Hardware (servers, workstations, network devices, mobile devices)
    - Software (applications, operating systems, licenses)
    - Data and information
    - Cloud services and SaaS applications
    - Network infrastructure
    - Documentation and procedures


= Policy Statements

== Asset Inventory

=== Inventory Requirements

    - Complete inventory of all IT assets maintained
    - Automated discovery tools deployed
    - Manual verification quarterly
    - Asset information updated within 48 hours of changes
    - Centralized asset management database (CMDB)


=== Asset Information
Each asset record must include:

    - Asset ID (unique identifier)
    - Asset type and category
    - Owner and custodian
    - Location (physical or virtual)
    - Status (active, inactive, retired)
    - Criticality rating
    - Purchase date and cost
    - Warranty and support information
    - Configuration details
    - Dependencies


== Asset Classification

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Criticality* & *Description* ,

*Critical* & Essential for business operations; failure causes immediate severe impact ,

*High* & Important for operations; failure causes significant impact within hours ,

*Medium* & Supports business operations; failure causes moderate impact within days ,

*Low* & Non-essential; failure causes minimal impact ,

)
\caption{Asset Criticality Classification}
\end{table}

== Asset Lifecycle Management

=== Acquisition

    - Business justification and approval
    - Security requirements defined
    - Procurement through approved vendors
    - Security assessment completed
    - Asset registered in CMDB
    - Security baseline configuration applied
    - Ownership and responsibility assigned


=== Deployment

    - Hardening according to security standards
    - Installation of security agents (antivirus, EDR)
    - Network access controls applied
    - Monitoring and logging configured
    - Documentation updated
    - User training provided (if applicable)


=== Operations and Maintenance

    - Regular patching and updates
    - Performance monitoring
    - Configuration management
    - Quarterly asset verification
    - License compliance tracking
    - Documentation maintenance


=== Retirement and Disposal

    - Decommissioning approval obtained
    - Data backup (if needed)
    - Secure data sanitization/destruction
    - Physical destruction (if required)
    - Certificate of destruction obtained
    - Asset record updated to "Retired"
    - Removal from monitoring systems
    - License reclamation


== Data Sanitization Standards

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Asset Type* & *Data Classification* & *Method* ,

Hard Drives & Confidential/Critical & Degaussing + Physical destruction ,

Hard Drives & Internal/Public & Secure wipe (3+ passes) ,

SSDs & Any & Crypto erase + Physical destruction ,

Mobile Devices & Any & Factory reset + Encryption key destruction ,

Removable Media & Confidential & Physical destruction ,

)
\caption{Data Sanitization Standards}
\end{table}

== Hardware Assets

=== Servers

    - Asset tagging with unique ID
    - Configuration documentation
    - Network diagram updates
    - Backup verification
    - Quarterly inventory audit


=== Workstations and Laptops

    - Full disk encryption mandatory
    - Asset tag affixed
    - User assignment tracked
    - Annual physical verification
    - Immediate reporting of loss/theft


=== Mobile Devices

    - MDM enrollment required
    - Asset register maintained
    - Remote wipe capability
    - IMEI/serial number tracked
    - Monthly access review


=== Network Equipment

    - Configuration backups automated
    - Network topology maintained
    - Firmware version tracked
    - Support contract status monitored
    - Change management process required


== Software Assets

=== Licensed Software

    - License inventory maintained
    - Usage monitored vs. licenses purchased
    - Annual license compliance audit
    - Unauthorized software prohibited
    - License harvesting from retired assets


=== Software Versioning

    - Approved software list maintained
    - Version control for internally developed software
    - End-of-life software identification
    - Upgrade planning for deprecated versions


== Cloud Services

    - SaaS application inventory
    - Shadow IT discovery and management
    - Cloud resource tagging standards
    - Cost tracking and optimization
    - Security posture monitoring
    - Data location tracking


== Asset Ownership

=== Asset Owner Responsibilities

    - Define security requirements
    - Approve access requests
    - Ensure proper usage
    - Participate in risk assessments
    - Approve changes
    - Budget for maintenance and replacement


=== Asset Custodian Responsibilities

    - Day-to-day management
    - Apply security controls
    - Perform maintenance
    - Monitor performance
    - Report issues
    - Maintain documentation


= Asset Inventory Procedures

== Automated Discovery

    - Network scanning tools (daily)
    - Agent-based inventory collection
    - Cloud resource enumeration
    - Active Directory integration
    - SIEM log correlation


== Manual Verification

    - Quarterly physical asset verification
    - Reconciliation with purchase records
    - User attestation for assigned assets
    - Location verification
    - Status confirmation


== Reporting

    - Monthly asset status report to management
    - Quarterly compliance report
    - Annual comprehensive audit
    - Ad-hoc reports as requested


= Metrics and KPIs

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Metric* & *Target* ,

Asset inventory accuracy & >98% ,

Assets with owners assigned & 100% ,

Critical assets identified & 100% ,

Unauthorized devices detected & <1% ,

Asset verification completion & >95% quarterly ,

Retired asset data destruction & 100% ,

Software license compliance & 100% ,

)
\caption{Asset Management KPIs}
\end{table}

= Roles and Responsibilities

== Chief Information Officer (CIO)

    - Policy oversight and approval
    - Budget allocation
    - Strategic asset planning


== IT Asset Manager

    - Asset inventory maintenance
    - Lifecycle management
    - Reporting and compliance
    - Tool administration


== IT Operations

    - Asset deployment and configuration
    - Maintenance and updates
    - Decommissioning execution


== Security Team

    - Security baseline definition
    - Vulnerability tracking
    - Security compliance verification


== Asset Owners

    - Classification and ownership
    - Access approval
    - Risk acceptance


= Compliance

    - Quarterly asset inventory audits
    - Annual independent assessment
    - Non-compliance investigation and remediation
    - Disciplinary action for policy violations


= Related Documents

    - Cybersecurity Policy
    - Access Control Policy
    - Change Management Procedure
    - Data Classification Policy
    - Procurement Policy
    - Hardware Disposal Procedure


= Review
This policy shall be reviewed annually or when:

    - Major organizational changes
    - New asset types introduced
    - Regulatory requirements change
    - Significant compliance issues identified


= Approval
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

CIO & & ,

CISO & & ,

CFO & & ,

)
\end{table}



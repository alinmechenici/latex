#set document(title: "Backup Retention Policy", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Backup Retention Policy]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Backup & Retention Policy*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Backup & Data Retention Policy},
{\Large NIS2 Business Continuity Compliance}
\end{center}

= Purpose
Establish requirements for data backup, recovery, and retention to ensure business continuity and regulatory compliance.

= Backup Strategy

== 3-2-1 Backup Rule

- *3* copies of data
- *2* different media types
- *1* copy off-site


== Backup Schedule

#table(
  columns: auto,
  stroke: 0.5pt,

*Data Type* & *Frequency* & *Retention* & *Method* ,

Critical Databases & Hourly inc. & 30 days & Snapshots ,
& Daily full & 90 days & ,

File Servers & Daily & 60 days & Full backup ,

Email & Daily & 90 days & Cloud backup ,

Virtual Machines & Daily & 14 days & Snapshots ,

Configurations & Weekly & 365 days & Version control ,

)

== Recovery Objectives

#table(
  columns: auto,
  stroke: 0.5pt,

*System* & *RTO* & *RPO* ,

Critical Systems & 4 hours & 1 hour ,

Important Systems & 24 hours & 4 hours ,

Standard Systems & 72 hours & 24 hours ,

)

= Backup Types

== Full Backup
Complete copy of all data

== Incremental
Changes since last backup (any type)

== Differential
Changes since last full backup

= Backup Locations


- *Primary:* On-site NAS (7-day retention)
- *Secondary:* Off-site datacenter (30-day retention)
- *Tertiary:* Cloud storage (90-day retention)
- *Archive:* Tape/cold storage (7-year retention)


= Backup Testing

== Verification

- Daily: Automated backup success verification
- Weekly: Random file restoration test
- Monthly: Full system restoration test
- Quarterly: Complete DR test


== Documentation

- Test results logged
- Failures investigated immediately
- Success rate target: 99%


= Data Retention

== Retention Periods

#table(
  columns: auto,
  stroke: 0.5pt,

*Data Category* & *Retention* & *Regulatory Requirement* ,

Financial Records & 7 years & Tax law ,

Customer Data & 5 years & GDPR + business need ,

Employee Records & 10 years & Labor law ,

Security Logs & 2 years & NIS2 ,

Email & 3 years & Business + legal ,

Contracts & 7 years after expiry & Legal ,

)

== Secure Disposal

- Automated deletion after retention period
- Secure wipe (3+ passes) or physical destruction
- Certificate of destruction for sensitive data
- Documentation of disposal


= Ransomware Protection

== Immutable Backups

- 30-day immutable backup retention
- Air-gapped or write-once storage
- Protected from ransomware encryption


== Backup Security

- Encrypted backups (AES-256)
- Separate credentials from production
- MFA for backup administrator access
- Regular security audits


= Roles & Responsibilities

*Backup Administrator:*

- Daily backup monitoring
- Test execution
- Issue resolution


*Data Owners:*

- Define retention requirements
- Approve restoration requests


*IT Operations:*

- Execute backups
- Perform restorations
- Maintain backup infrastructure


= Monitoring & Metrics


- Backup success rate (target: 99%)
- Failed backups (investigate within 4h)
- Restoration success rate
- Storage capacity utilization
- RTO/RPO compliance




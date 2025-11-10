#set document(title: "Encryption Policy", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Encryption Policy]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Encryption & Cryptography Policy*]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Encryption & Cryptography Policy]\par}
    #v(0.5cm)
    {\Large NIS2 Directive Compliance\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    #v(0.5cm)
    {\Large*Effective Date:* \today\par}
    \vfill
    {\small NIS2 Article 21(2)(h) - Cryptography and Encryption\par}
\end{titlepage}

#outline()
#pagebreak()

= Purpose
This policy establishes requirements for the use of cryptography and encryption to protect [ORGANIZATION]'s sensitive data and communications in compliance with NIS2 Directive requirements.

= Scope
This policy applies to all data storage, processing, and transmission involving sensitive or confidential information.

= Policy Statements

== Data at Rest Encryption

=== Mandatory Encryption
The following data must be encrypted when stored:

    - Customer personal data
    - Payment card information
    - Authentication credentials
    - Cryptographic keys
    - Confidential business information
    - Backup data
    - Mobile devices and laptops


=== Encryption Standards
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Use Case* & *Standard* ,

Database encryption & AES-256 (TDE) ,

File/Folder encryption & AES-256 ,

Full disk encryption & AES-256 (BitLocker, FileVault, LUKS) ,

Backup encryption & AES-256 ,

Cloud storage & AES-256 (provider managed or customer managed keys) ,

)
\caption{Encryption Standards for Data at Rest}
\end{table}

== Data in Transit Encryption

=== Network Communications

    - External communications: TLS 1.3 (minimum)
    - Internal communications: TLS 1.2 minimum, TLS 1.3 preferred
    - Legacy systems: TLS 1.2 with strong cipher suites only
    - VPN: IPsec or SSL VPN with AES-256


=== Prohibited Protocols
The following are prohibited:

    - SSL v2, SSL v3, TLS 1.0, TLS 1.1
    - Weak cipher suites (RC4, DES, 3DES, MD5)
    - Unencrypted protocols (HTTP, FTP, Telnet) for sensitive data


== Email Security

    - S/MIME or PGP required for confidential emails
    - TLS enforced for email transmission
    - Email gateway encryption for sensitive attachments


== Key Management

=== Key Generation

    - Use cryptographically secure random number generators
    - Minimum key lengths:
    
        - RSA: 2048 bits (4096 bits preferred)
        - ECC: 256 bits (384 bits preferred)
        - AES: 256 bits
    


=== Key Storage

    - Keys stored in Hardware Security Modules (HSM) when available
    - Key encryption keys (KEK) separate from data encryption keys (DEK)
    - Keys never stored in plain text
    - Access to keys restricted to authorized personnel only


=== Key Rotation
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Key Type* & *Rotation Frequency* ,

Data encryption keys & Annually ,

TLS/SSL certificates & Before expiration (recommended: annually) ,

API keys & Every 6 months ,

Database encryption keys & Every 2 years ,

Compromised keys & Immediately ,

)
\caption{Key Rotation Schedule}
\end{table}

=== Key Destruction

    - Secure deletion of keys when no longer needed
    - Cryptographic erasure for decommissioned systems
    - Documentation of key destruction


== Certificate Management

    - Use trusted Certificate Authorities (CA)
    - Monitor certificate expiration (alerts 90, 60, 30 days before)
    - Automated renewal where possible
    - Revoke compromised certificates immediately
    - Maintain certificate inventory


== Algorithm Approval

=== Approved Algorithms
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Purpose* & *Approved Algorithms* ,

Symmetric encryption & AES-256, AES-192, AES-128 ,

Asymmetric encryption & RSA (2048+), ECC (256+) ,

Hashing & SHA-256, SHA-384, SHA-512 ,

Digital signatures & RSA-SHA256, ECDSA ,

Key exchange & ECDHE, DHE ,

)
\caption{Approved Cryptographic Algorithms}
\end{table}

=== Deprecated/Prohibited

    - MD5, SHA-1 (for security purposes)
    - DES, 3DES, RC4
    - RSA < 2048 bits
    - Custom/proprietary encryption


== Mobile Devices

    - Full device encryption mandatory
    - Encrypted communication apps for business use
    - Remote wipe capability enabled
    - Encrypted backup to cloud services


== Cloud Services

    - Encryption at rest and in transit
    - Customer-managed encryption keys preferred
    - Verify provider encryption practices
    - Contractual encryption requirements


= Roles and Responsibilities

== CISO

    - Policy oversight and approval
    - Encryption standard selection
    - Annual policy review


== Security Team

    - Implementation guidance
    - Key management oversight
    - Compliance monitoring
    - Encryption technology evaluation


== IT Operations

    - Encryption implementation
    - Key rotation execution
    - Certificate management
    - Technical support


== Data Owners

    - Classification of data
    - Encryption requirements determination
    - Access authorization


= Exceptions
Exceptions to this policy require:

    - Written justification
    - Risk assessment
    - Compensating controls
    - CISO approval
    - Annual review


= Compliance

    - Quarterly encryption compliance audits
    - Annual external assessment
    - Violations subject to disciplinary action


= Review
This policy shall be reviewed annually or when:

    - Cryptographic vulnerabilities discovered
    - New standards published (NIST, ENISA)
    - Regulatory requirements change
    - Technology changes warrant update


= Related Documents

    - Cybersecurity Policy
    - Data Classification Policy
    - Access Control Policy
    - Mobile Device Management Policy
    - Cloud Security Policy


= Approval
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

CISO & & ,

CTO & & ,

)
\end{table}



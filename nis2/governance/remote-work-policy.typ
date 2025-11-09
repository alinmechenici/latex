#set document(title: "Remote Work Policy", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Remote Work Policy]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Remote Work Policy*]}
\fancyfoot[C]{\small Page \thepage}

\begin{center}
{\Huge\bfseries Remote Work & BYOD Policy},
{\Large NIS2 Compliance}
\end{center}

= Purpose
Establish security requirements for remote work and bring-your-own-device (BYOD) to protect organizational data and systems.

= Scope
Applies to all employees working remotely and using personal devices for work purposes.

= Remote Work Requirements

== Network Security

- VPN mandatory for all remote access
- Multi-factor authentication (MFA) required
- No public WiFi without VPN
- Home network WPA3 encryption recommended


== Device Security
*Company-Provided Devices:*

- Full disk encryption mandatory
- Endpoint protection (EDR) required
- Automatic updates enabled
- Screen lock after 10 min inactivity
- Remote wipe capability enabled


*Personal Devices (BYOD):*

- MDM enrollment required
- Minimum OS version enforced
- Passcode/biometric required
- Work/personal data separation
- Organization can wipe work data


== Data Protection

- No downloading to personal devices (except via MDM)
- Use approved cloud services only
- Encrypt sensitive data
- Secure document disposal
- Clean desk policy at home


== Physical Security

- Dedicated workspace preferred
- Lock devices when away
- Privacy during video calls
- Secure storage of devices
- Immediate reporting of loss/theft


= BYOD Requirements

== Eligibility

- Management approval required
- Sign BYOD agreement
- Device security assessment
- MDM enrollment


== Supported Devices

- iOS: Version [X] or higher
- Android: Version [X] or higher
- Windows: Windows 10/11
- macOS: Version [X] or higher


== Prohibited

- Jailbroken/rooted devices
- Outdated operating systems
- Devices without encryption
- Shared devices


= Incident Reporting
Report immediately:

- Lost or stolen device
- Security incidents
- Suspected compromise
- Policy violations


= Compliance

- Quarterly device compliance checks
- Random security audits
- Violations may result in:
  
  - Warning and re-training
  - BYOD privilege revocation
  - Disciplinary action
  




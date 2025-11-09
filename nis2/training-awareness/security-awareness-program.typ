#set document(title: "Security Awareness Program", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Security Awareness Program]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Security Awareness Program*]}
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
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Security Awareness Program]\par}
    #v(0.5cm)
    {\Large NIS2 Directive Compliance\par}
    #v(2cm)
    {\Large*Organization:* [ORGANIZATION]\par}
    #v(0.5cm)
    {\Large*Version:* 1.0\par}
    #v(0.5cm)
    {\Large*Date:* \today\par}
    \vfill
    {\small NIS2 Article 21 - Cybersecurity Training and Cyber Hygiene\par}
\end{titlepage}

#outline()
#pagebreak()

= Program Overview

== Purpose
Establish a comprehensive security awareness and training program to ensure all personnel understand their cybersecurity responsibilities in compliance with NIS2 requirements.

== Objectives

    - Build a security-conscious culture
    - Reduce human-related security incidents
    - Ensure NIS2 compliance
    - Protect organizational assets
    - Empower employees as the first line of defense


= Training Requirements

== General Security Awareness (All Employees)
*Frequency:* Annual (mandatory)

*Topics:*

    - Basic cyber hygiene practices
    - Password security
    - Phishing and social engineering
    - Physical security
    - Mobile device security
    - Clean desk policy
    - Acceptable use of IT resources
    - Incident reporting procedures


*Duration:* 60 minutes

*Delivery:* Online learning platform

== Role-Based Training

=== IT Staff
*Topics:*

    - Secure system administration
    - Vulnerability management
    - Log monitoring and analysis
    - Secure coding practices
    - Incident response procedures


=== Management
*Topics:*

    - Cybersecurity governance
    - Risk management
    - NIS2 compliance obligations
    - Crisis management
    - Decision-making during incidents


=== Developers
*Topics:*

    - Secure coding practices
    - OWASP Top 10
    - Security testing
    - DevSecOps principles


== Specialized Training

=== Incident Response Team
*Frequency:* Quarterly

*Topics:*

    - Incident handling procedures
    - Forensics fundamentals
    - Evidence collection
    - NIS2 reporting requirements
    - Crisis communication


=== Data Protection Officers
*Topics:*

    - GDPR and NIS2 compliance
    - Data protection by design
    - Privacy impact assessments
    - Breach notification procedures


= Basic Cyber Hygiene Practices

== Password Management

    - Use strong, unique passwords (minimum 12 characters)
    - Enable multi-factor authentication (MFA)
    - Use password manager
    - Never share passwords
    - Change default passwords immediately


== Email Security

    - Verify sender before opening attachments
    - Be cautious of unexpected emails
    - Look for phishing indicators
    - Report suspicious emails
    - Never click unknown links


== Device Security

    - Lock screen when away (mandatory)
    - Keep software updated
    - Enable device encryption
    - Report lost/stolen devices immediately
    - Use only approved devices and software


== Data Handling

    - Classify data appropriately
    - Encrypt sensitive data
    - Use secure file sharing methods
    - Follow clean desk policy
    - Proper disposal of documents (shredding)


== Remote Work Security

    - Use VPN for remote access
    - Secure home Wi-Fi networks
    - Privacy when working in public
    - Physical security of work devices
    - Separate personal and work activities


= Phishing Awareness

== Phishing Indicators

    - Urgent or threatening language
    - Requests for credentials or sensitive data
    - Suspicious sender addresses
    - Poor grammar or spelling
    - Unexpected attachments
    - Mismatched URLs


== Phishing Simulation Program
*Frequency:* Monthly

*Process:*

    - Send simulated phishing emails
    - Track click rates and reporting
    - Provide immediate education for clickers
    - Analyze results and trends
    - Adjust difficulty based on performance


*Metrics:*

    - Click rate (target: <5%)
    - Reporting rate (target: >50%)
    - Time to report (target: <1 hour)


= Communication and Awareness Campaigns

== Monthly Security Tips

    - Email newsletters
    - Intranet articles
    - Posters in common areas
    - Screensaver messages


== Annual Events

    - *Cybersecurity Awareness Month (October)*
    - Lunch and learn sessions
    - Security challenges and contests
    - Executive security briefings


== Communication Channels

    - Email notifications
    - Intranet portal
    - Team meetings
    - Digital signage
    - Mobile app notifications


= New Employee Onboarding

== Day 1 Security Briefing

    - Security policies overview
    - Acceptable use policy acknowledgment
    - Account setup and MFA enrollment
    - Device security requirements
    - Incident reporting procedures


== First Week

    - Complete general security awareness training
    - Role-specific security training assignment
    - Meeting with security team (for IT roles)


= Continuous Education

== Quarterly Security Updates

    - Emerging threats briefing
    - Recent incident lessons learned
    - Policy updates
    - Regulatory changes


== Microlearning

    - 5-minute security tips
    - Short videos
    - Interactive quizzes
    - Just-in-time training


= Measurement and Metrics

== Training Metrics

    - Completion rates (target: 100%)
    - Assessment scores (target: >80%)
    - Time to complete
    - Overdue training


== Awareness Metrics

    - Phishing simulation click rates
    - Incident reporting rates
    - Security incidents by cause
    - Employee feedback scores


== Program Effectiveness

    - Reduction in security incidents
    - Improved reporting rates
    - Faster incident detection
    - Culture assessment surveys


= Roles and Responsibilities

== Security Awareness Manager

    - Program development and management
    - Content creation and delivery
    - Tracking and reporting metrics
    - Continuous improvement


== HR Department

    - Onboarding integration
    - Training record maintenance
    - Compliance tracking
    - Policy acknowledgments


== Managers

    - Ensure team compliance
    - Reinforce security messages
    - Report training gaps
    - Lead by example


== All Employees

    - Complete required training
    - Apply learned practices
    - Report security concerns
    - Participate in awareness activities


= Program Maintenance

== Annual Review

    - Assess program effectiveness
    - Update content for current threats
    - Review and update metrics
    - Budget planning


== Content Updates

    - Quarterly content review
    - Incorporate lessons learned
    - Address emerging threats
    - Update for regulatory changes


= Budget and Resources

== Required Resources

    - Learning management system (LMS)
    - Phishing simulation platform
    - Content creation tools
    - Communication platforms


== Annual Budget
\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Item* & *Cost* ,

LMS subscription & [AMOUNT] ,

Phishing platform & [AMOUNT] ,

Training content & [AMOUNT] ,

Events and materials & [AMOUNT] ,

*Total* & *[TOTAL]* ,

)
\caption{Annual Program Budget}
\end{table}

= Compliance

== NIS2 Requirements
This program addresses NIS2 Article 21 requirements for:

    - Basic cyber hygiene practices
    - Cybersecurity training
    - Policies and procedures for employees with access to sensitive data


== Documentation

    - Training records maintained for 3 years
    - Completion certificates issued
    - Annual compliance reporting
    - Audit trail of all activities


= Approval

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Date* ,

CISO & & ,

HR Director & & ,

CEO & & ,

)
\end{table}



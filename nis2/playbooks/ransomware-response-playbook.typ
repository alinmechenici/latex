#set document(title: "Ransomware Response Playbook", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Ransomware Response Playbook]
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
\definecolor{warning}{RGB}{255,102,0}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*Ransomware Response Playbook*]}
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



\begin{titlepage}
    \centering
    \vspace*{2cm}
    {\Huge\bfseries#text(fill: rgb("nis2blue"))[Ransomware Response Playbook]\par}
    #v(0.5cm)
    {\Large Incident Response - NIS2 Compliance\par}
    #v(1cm)
    {\Large*CRITICAL INCIDENT - PRIORITY 1*\par}
    #v(2cm)
    #text(fill: rgb("nis2red"))[\Large*DO NOT DELAY - EVERY MINUTE COUNTS*]
    \vfill
    {\large Organization: [ORGANIZATION]\par}
    {\large Version: 1.0\par}
    {\large Last Updated: \today\par}
\end{titlepage}

#outline()
#pagebreak()

= Quick Reference Card

\begin{center}
\fbox{\begin{minipage}{0.9\textwidth}
*\large RANSOMWARE DETECTION - IMMEDIATE ACTIONS (First 15 Minutes)*

*Indicators:*
[nosep]
    - Files with unusual extensions (.encrypted, .locked, .crypto)
    - Ransom notes appearing (README.txt, HOW\_TO\_DECRYPT.html)
    - Mass file modifications
    - Disabled antivirus/security tools
    - Desktop wallpaper changed to ransom demand


*CRITICAL - DO NOT:*
[nosep]
    - ❌ Power off affected systems (preserves evidence in RAM)
    - ❌ Pay ransom immediately
    - ❌ Delete ransom notes
    - ❌ Attempt data recovery without forensic copies


*DO IMMEDIATELY:*
[nosep]
    - *ISOLATE:* Disconnect affected systems from network
    - *CALL:* IR Hotline: [PHONE NUMBER]
    - *PROTECT:* Isolate backup systems
    - *DOCUMENT:* Take photos of ransom notes
    - *PRESERVE:* Do not reboot or shut down


*Emergency Contacts:*
[nosep]
    - IR Team Leader: [NAME] - [PHONE]
    - CISO: [NAME] - [PHONE]
    - CIO: [NAME] - [PHONE]

\end{minipage}}
\end{center}

#pagebreak()

= Ransomware Response Timeline

#table(
  columns: auto,
  stroke: 0.5pt,

*Phase* & *Timeline* & *Key Actions* ,

\endfirsthead

*Phase* & *Timeline* & *Key Actions* ,

\endhead
\rowcolor{nis2red!30}
*Detection* & 0-15 min & Identify ransomware, call IR team ,

\rowcolor{warning!30}
*Containment* & 15-60 min & Isolate systems, protect backups ,

*Assessment* & 1-4 hours & Determine scope, variant, impact ,

*Eradication* & 4-24 hours & Remove malware, rebuild systems ,

*Recovery* & 1-3 days & Restore from backups, verify ,

*Post-Incident* & 1-2 weeks & Lessons learned, improvements ,

\caption{Ransomware Response Timeline}
)

= Phase 1: Detection and Initiation (0-15 Minutes)

== Detection Methods

*Automated Alerts:*

    - EDR/antivirus ransomware detection
    - File integrity monitoring (mass file changes)
    - Network traffic anomalies
    - Backup system alerts


*User Reports:*

    - Cannot open files
    - Files with strange extensions
    - Ransom note appearing
    - Performance degradation


== Immediate Response Checklist

*First Responder Actions (0-5 minutes):*

    - ✅ Document current time and date
    - ✅ Photograph ransom note (DO NOT CLOSE IT)
    - ✅ Note file extension of encrypted files
    - ✅ Identify first user/system reporting issue
    - ✅ Call IR Hotline immediately: *[PHONE NUMBER]*


*IR Team Notification (5-10 minutes):*

    - ✅ IR Team Leader notified
    - ✅ CISO notified
    - ✅ CIO notified
    - ✅ War room activated
    - ✅ Incident ID created: INC-[DATE]-[NUMBER]


*Initial Assessment (10-15 minutes):*

    - ✅ How many systems affected?
    - ✅ Are backups accessible and clean?
    - ✅ Is ransomware still spreading?
    - ✅ Critical systems impacted?
    - ✅ Activate containment procedures


= Phase 2: Containment (15-60 Minutes)

== Network Isolation

*CRITICAL - Perform in this order:*

*Step 1: Isolate Infected Systems (15-20 min)*

    - *DO NOT POWER OFF* - Disconnect network cables
    - For wireless: Disable Wi-Fi adapter (don't shut down)
    - For VMs: Disconnect network adapter in hypervisor
    - Document MAC addresses and IP addresses
    - Tag systems with incident stickers


*Step 2: Protect Backup Infrastructure (20-25 min)*

    - *PRIORITY 1:* Isolate backup servers immediately
    - Disconnect backup storage from network
    - Verify backup integrity (scan for ransomware)
    - Make forensic copies of recent backups
    - Enable immutable/air-gapped backups


*Step 3: Network Segmentation (25-40 min)*

    - Block affected network segments at firewall
    - Disable VPN access (temporary)
    - Block identified malicious IPs/domains
    - Enable enhanced IDS/IPS rules
    - Isolate critical systems (even if not infected)


*Step 4: Account Security (40-60 min)*

    - Disable compromised accounts
    - Force password reset for privileged accounts
    - Enable MFA if not already active
    - Review recent account activity
    - Disable service accounts if compromised


== Evidence Preservation

*Critical Evidence Collection:*

    - Memory dumps from affected systems (before reboot)
    - Copy of ransom note (text + screenshot)
    - Sample encrypted files (original + encrypted versions)
    - Network traffic captures
    - System and security logs
    - Email phishing lure (if applicable)


*Chain of Custody:*

    - Label all evidence with incident ID
    - Document who collected, when, and from where
    - Store in secure, access-controlled location
    - Maintain chain of custody log


= Phase 3: Assessment and Analysis (1-4 Hours)

== Scope Determination

*Systems Inventory:*

    - Identify all affected systems
    - Classify by criticality (P1/P2/P3)
    - Determine encryption status (partial/full)
    - Map dependencies
    - Prioritize recovery order


*Data Impact Assessment:*

    - What data was encrypted?
    - Was data exfiltrated? (Check for data theft indicators)
    - Can we recover from backups?
    - Last good backup timestamp?
    - Data loss window (RPO gap)?


== Ransomware Identification

*Variant Identification:*

    - File extension analysis (.lock, .crypt, specific variant)
    - Ransom note analysis (language, payment method)
    - Check ID Ransomware: https://id-ransomware.malwarehunterteam.com/
    - Search for decryption tools (No More Ransom Project)
    - Identify ransomware family (BlackCat, Lockbit, Ryuk, etc.)


*Attack Vector Analysis:*

    - Initial access method (phishing, RDP, exploit, supply chain)
    - Lateral movement techniques
    - Privilege escalation methods
    - Persistence mechanisms
    - Dwell time (how long attacker had access)


== Business Impact Assessment

\begin{table}[h]
\centering
#table(
  columns: auto,
  stroke: 0.5pt,

*Impact Area* & *Assessment* ,

Service Availability & Which services are down? How long? ,

Customer Impact & How many customers affected? Revenue impact? ,

Regulatory Impact & Is this a NIS2 significant incident? GDPR breach? ,

Financial Impact & Direct costs + revenue loss + ransom amount ,

Reputational & Media coverage potential? Customer trust impact? ,

)
\caption{Business Impact Assessment}
\end{table}

= Phase 4: Decision Point - To Pay or Not to Pay

== Ransom Payment Decision Matrix

*Organization Policy:* \underline{\hspace{10cm}}

*DO NOT PAY if:*

    - Clean, verified backups available
    - Free decryption tool exists
    - Legal/regulatory prohibition
    - Critical data not impacted


*CONSIDER PAYMENT (with extreme caution) if:*

    - No viable backup or recovery option
    - Existential threat to organization
    - Data exfiltration and threat of publication
    - All other options exhausted


*Decision Authority:*

    - CEO approval required
    - Legal counsel consulted
    - Law enforcement notified
    - Insurance company involved
    - Board of Directors informed


*⚠️ WARNING: Paying Ransom:*

    - Does not guarantee decryption
    - Funds criminal enterprises
    - May violate sanctions (OFAC)
    - Marks organization as willing to pay
    - No recourse if attackers don't provide decryption key


== Alternative: Negotiation Considerations

If payment being considered:

    - Engage professional ransomware negotiators
    - Request proof of decryption capability
    - Negotiate down from initial demand (often 50-70% reduction)
    - Request assurance of data deletion
    - Request IOCs and attack details
    - Document all communications


= Phase 5: Eradication (4-24 Hours)

== Malware Removal

*DO NOT attempt recovery until eradication complete!*

*Eradication Steps:*

    - Identify all compromised systems (use IOCs)
    - Remove persistence mechanisms
        
            - Scheduled tasks
            - Registry keys
            - Startup folders
            - Services
        
    - Delete malware executables and scripts
    - Remove unauthorized accounts
    - Close exploited vulnerabilities
    - Apply security patches
    - Rebuild critical systems from clean images (preferred)


== System Rebuilding

*Recommended Approach: Complete Rebuild*

*Rebuild Process:*

    - Backup encrypted data (for future decryption attempts)
    - Wipe affected systems completely
    - Reinstall OS from clean, verified images
    - Apply all security patches
    - Install and configure security agents
    - Harden configurations
    - Join to domain (with new machine account)
    - Verify no malware present before data restoration


= Phase 6: Recovery (1-3 Days)

== Recovery Priority

*Tier 1 - Critical Systems (0-24 hours):*

    - Active Directory / Authentication
    - Email systems
    - Core business applications
    - Customer-facing services


*Tier 2 - Important Systems (24-48 hours):*

    - Internal business systems
    - Collaboration tools
    - Monitoring and management


*Tier 3 - Standard Systems (48-72 hours):*

    - Development environments
    - Non-critical applications


== Data Restoration

*Restoration Procedure:*

    - Identify last known good backup
    - Verify backup integrity
    - Scan backup for malware
    - Restore to clean, rebuilt systems
    - Verify data completeness
    - Test functionality
    - Document any data loss


*Validation Checklist:*

    - ✅ All business-critical data restored
    - ✅ Applications functioning properly
    - ✅ Integrations working
    - ✅ No malware detected
    - ✅ Performance acceptable
    - ✅ Users can access required resources


= Phase 7: NIS2 Reporting

== Reporting Timeline

*Early Warning (24 hours):*

    - Notify competent authority
    - Basic information: ransomware incident detected
    - Systems affected (general description)
    - Containment actions taken


*Incident Notification (72 hours):*

    - Ransomware variant identified
    - Number of systems affected
    - Services impacted
    - User/customer impact
    - IOCs (file hashes, IPs, domains)
    - Attack vector
    - Current status


*Final Report (1 month):*

    - Complete incident timeline
    - Root cause analysis
    - Total impact assessment
    - Recovery actions
    - Lessons learned
    - Preventive measures implemented


= Post-Incident Activities

== Lessons Learned Session

*Conduct within 2 weeks of incident closure*

*Participants:*

    - IR Team
    - IT Operations
    - Security Team
    - Management
    - Affected business units


*Discussion Points:*

    - What worked well?
    - What could be improved?
    - Were procedures followed?
    - Communication effectiveness
    - Tools and capabilities gaps
    - Training needs identified


== Preventive Measures

*Immediate Actions (0-30 days):*

    - Block identified IOCs
    - Patch exploited vulnerabilities
    - Enforce MFA organization-wide
    - Implement application whitelisting
    - Enhanced email filtering
    - Disable unnecessary services/ports


*Short-term Actions (30-90 days):*

    - Network segmentation improvements
    - Privileged access management
    - Enhanced monitoring and alerting
    - Backup strategy improvement
    - Security awareness training


*Long-term Actions (90+ days):*

    - Zero Trust architecture implementation
    - EDR expansion to all endpoints
    - Regular penetration testing
    - Incident response plan update
    - Disaster recovery plan testing


= Contact Information

== Internal Contacts

#table(
  columns: auto,
  stroke: 0.5pt,

*Role* & *Name* & *Contact* ,

\endfirsthead

*Role* & *Name* & *Contact* ,

\endhead
IR Team Leader & [NAME] & [PHONE] | [EMAIL] ,

CISO & [NAME] & [PHONE] | [EMAIL] ,

CIO & [NAME] & [PHONE] | [EMAIL] ,

Legal Counsel & [NAME] & [PHONE] | [EMAIL] ,

Communications Lead & [NAME] & [PHONE] | [EMAIL] ,

\caption{Internal Emergency Contacts}
)

== External Resources


    - *Law Enforcement:* [LOCAL CYBERCRIME UNIT]
    - *Cyber Insurance:* [INSURANCE COMPANY] - Policy \#: [NUMBER]
    - *Forensics Firm:* [COMPANY] - [24/7 HOTLINE]
    - *Ransomware Negotiators:* [COMPANY] - [CONTACT]
    - *NIS2 Authority:* [COMPETENT AUTHORITY] - [CONTACT]


== Useful Resources


    - No More Ransom Project: https://www.nomoreransom.org/
    - ID Ransomware: https://id-ransomware.malwarehunterteam.com/
    - CISA Ransomware Guide: https://www.cisa.gov/stopransomware
    - Have I Been Pwned: https://haveibeenpwned.com/


= Appendices

== Appendix A: Common Ransomware Families

#table(
  columns: auto,
  stroke: 0.5pt,

*Ransomware* & *Characteristics* ,

BlackCat (ALPHV) & Rust-based, double extortion, RaaS, targets enterprises ,

LockBit & Fast encryption, RaaS, affiliates, data exfiltration ,

Ryuk & Targeted attacks, high ransom demands, often follows TrickBot ,

Conti & RaaS, targeted attacks, double extortion, associated with Russia ,

REvil (Sodinokibi) & RaaS, supply chain attacks, high-profile victims ,

\caption{Common Ransomware Families}
)

== Appendix B: Ransomware Prevention Checklist


    - ✅ Regular, tested backups (3-2-1 rule)
    - ✅ MFA enforced organization-wide
    - ✅ Email filtering and link protection
    - ✅ Security awareness training
    - ✅ Patch management (critical patches within 72h)
    - ✅ Application whitelisting
    - ✅ Network segmentation
    - ✅ Privileged access management
    - ✅ EDR on all endpoints
    - ✅ Disable RDP from internet
    - ✅ Regular vulnerability scanning
    - ✅ Incident response plan tested




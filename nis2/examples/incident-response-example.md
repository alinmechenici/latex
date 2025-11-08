# Incident Response Plan - Example Content

## Organization: FinTech Solutions AG

### Emergency Contacts

**Incident Response Hotline**: +49-800-SECURITY (24/7)
**Email**: incidents@fintechsolutions.de
**Emergency SMS**: +49-172-INCIDENT

### Incident Response Team

| Role | Name | Primary Contact | Secondary Contact | Availability |
|------|------|----------------|-------------------|--------------|
| IR Team Leader | Dr. Klaus Mueller | +49-172-1234567 | klaus.mueller@company.com | 24/7 |
| CISO | Maria Schmidt | +49-172-2345678 | maria.schmidt@company.com | 24/7 |
| IT Manager | Thomas Weber | +49-172-3456789 | thomas.weber@company.com | Business hours + on-call |
| Security Analyst | Anna Hoffmann | +49-172-4567890 | anna.hoffmann@company.com | Business hours + on-call |
| Legal Counsel | Dr. Hans Fischer | +49-172-5678901 | hans.fischer@company.com | Business hours + emergency |
| Communications Lead | Sophie Bauer | +49-172-6789012 | sophie.bauer@company.com | Business hours + emergency |
| External Forensics | CyberForensics GmbH | +49-30-FORENSIC | emergency@cyberforensics.de | 24/7 contract |

## Example Incident Scenarios

### Scenario 1: Ransomware Attack

**Incident ID**: INC-2025-015
**Date Detected**: November 1, 2025, 03:45 CET
**Severity**: CRITICAL
**Type**: Ransomware

#### Timeline

**03:45** - Automated alert: Multiple files with .encrypted extension detected on file server
**03:47** - Night shift security analyst confirms ransomware activity
**03:50** - IR Team Leader notified via emergency call
**03:55** - Critical systems isolated from network
**04:00** - CISO and IT Manager on emergency call
**04:15** - Management Board Chair notified
**04:30** - Assessment complete: 3 file servers affected, production database isolated successfully
**06:00** - Early warning sent to BaFin (German competent authority) - within 24h requirement ✓
**09:00** - Full IR Team assembled, war room activated
**12:00** - Forensic analysis ongoing, no data exfiltration detected
**18:00** - Recovery from clean backups initiated

#### Actions Taken

1. **Immediate Containment** (03:55)
   - Isolated affected servers from network
   - Disabled VPN access temporarily
   - Preserved forensic evidence (memory dumps, disk images)
   - Blocked malicious IPs at firewall

2. **Investigation** (04:00-12:00)
   - Identified ransomware variant: BlackCat/ALPHV
   - Entry vector: Phishing email with malicious attachment opened by employee
   - Compromised accounts: 1 user account, 1 admin account
   - Affected systems: 3 file servers (200GB encrypted)
   - No evidence of data exfiltration
   - Ransomware note demanding 50 BTC (~€1.5M)

3. **Communication** (06:00)
   - Early warning to BaFin sent within 24 hours
   - Internal communication: Essential staff notified
   - Decision: Do NOT pay ransom, recover from backups
   - External communication: Customers informed of temporary service limitations

4. **Eradication** (12:00-24:00)
   - Rebuilt affected servers from clean images
   - Reset all credentials organization-wide
   - Applied security patches
   - Enhanced email filtering rules
   - Deployed additional EDR capabilities

5. **Recovery** (Day 2-3)
   - Restored data from clean backups (last backup: 6 hours before attack)
   - Verified data integrity
   - Gradually restored services
   - Enhanced monitoring implemented
   - All services fully operational by Day 3, 18:00

#### NIS2 Reporting

**Early Warning (24 hours)** - COMPLIANT ✓
- Sent: November 1, 2025, 06:00 (2h 15min after detection)
- To: BaFin (German competent authority)
- Content: Ransomware attack detected, critical file servers affected, containment in progress

**Incident Notification (72 hours)** - COMPLIANT ✓
- Sent: November 3, 2025, 14:00 (58 hours after detection)
- Content:
  - Type: Ransomware (BlackCat/ALPHV)
  - Severity: Significant incident
  - Impact: 3 file servers encrypted, temporary service degradation
  - Users affected: ~500 internal users, no customer data compromised
  - Root cause: Phishing email
  - IoCs: Malicious file hashes, IP addresses, domains shared
  - Response: Isolated systems, recovered from backups, no ransom paid
  - Current status: Services restored, enhanced monitoring active

**Final Report (1 month)** - Due: December 1, 2025
- Detailed forensic analysis
- Complete timeline
- Financial impact: €45,000 (incident response costs, no data loss)
- Preventive measures: MFA enforcement, enhanced email security, additional EDR
- Lessons learned

#### Lessons Learned

**What Worked Well:**
- Rapid detection (automated alerts)
- Quick containment prevented spread
- Recent backups enabled fast recovery
- IR Team responded effectively
- No ransom payment necessary

**Areas for Improvement:**
- Initial phishing email was not blocked by email security
- One admin account lacked MFA (policy violation)
- Network segmentation could have limited spread
- Customer communication could have been faster

**Action Items:**
1. Enforce MFA for all accounts (no exceptions) - Owner: IT Manager - Due: Nov 15
2. Enhanced email security with AI-based detection - Owner: Security Team - Due: Nov 30
3. Implement network micro-segmentation - Owner: Network Team - Due: Jan 31
4. Quarterly phishing simulations mandatory - Owner: CISO - Due: Ongoing
5. Update IR plan with communication templates - Owner: IR Leader - Due: Nov 30

**Cost Impact:**
- Incident response: €25,000
- Forensics: €10,000
- Enhanced security tools: €10,000
- Lost productivity: ~€15,000
- **Total**: €60,000
- **No ransom paid**, **No data loss**

---

### Scenario 2: Data Breach - Misconfigured Database

**Incident ID**: INC-2025-008
**Date Detected**: October 15, 2025, 11:30 CET
**Severity**: HIGH
**Type**: Data Breach / Unauthorized Access

#### Timeline

**11:30** - External security researcher reports publicly accessible database
**11:35** - Security team verifies: Customer database exposed without authentication
**11:40** - CISO notified
**11:45** - Database taken offline immediately
**12:00** - Investigation begins: Database misconfigured during migration 7 days ago
**13:00** - Preliminary assessment: 12,000 customer records potentially exposed
**14:00** - Management and Legal counsel briefed
**16:30** - Database secured and restored with proper authentication
**23:00** - Early warning sent to BaFin (within 24h requirement) ✓

#### Data Exposure Analysis

**Exposed Data:**
- Customer names
- Email addresses
- Phone numbers
- Account numbers (partially masked)
- No passwords or payment card data

**Duration of Exposure**: 7 days (October 8-15, 2025)

**Evidence of Access:**
- Log analysis shows 47 external IP connections during exposure period
- Security researcher accessed data 1 time
- Unknown actors: Investigation ongoing
- No evidence of mass data scraping
- No evidence of data appearing on dark web (monitoring ongoing)

#### Response Actions

1. **Immediate** (Day 1)
   - Database taken offline
   - Access logs secured for analysis
   - Breach investigation team assembled
   - External forensics firm engaged

2. **Investigation** (Day 1-5)
   - Root cause: Human error during cloud migration, authentication disabled for testing and not re-enabled
   - Responsible team identified and interviews conducted
   - All other databases audited for similar misconfigurations
   - No other exposures found

3. **Remediation** (Day 1-7)
   - Database reconfigured with proper authentication
   - Additional monitoring and alerting implemented
   - Configuration management process enhanced
   - All cloud resources audited

4. **Customer Notification** (Day 10)
   - 12,000 customers notified by email
   - Dedicated hotline established
   - Credit monitoring services offered (no cost to customers)
   - Public statement released

#### NIS2 and GDPR Reporting

**NIS2 Early Warning** ✓
- Sent: October 15, 2025, 23:00 (11.5h after detection)
- Assessment: Significant incident (data exposure)

**NIS2 Incident Notification** ✓
- Sent: October 17, 2025, 10:00 (70.5h after detection)
- Detailed assessment of impact and response

**GDPR Breach Notification** ✓
- Reported to Data Protection Authority: October 16, 2025
- Customer notifications: October 25, 2025

**NIS2 Final Report** - Sent: November 12, 2025 (28 days after detection)

#### Lessons Learned

**Root Cause**: Lack of secure configuration management process for cloud infrastructure

**Preventive Measures Implemented:**
1. Infrastructure-as-Code (IaC) with automated security scanning
2. Mandatory peer review for all cloud configuration changes
3. Automated security baseline verification
4. Daily external vulnerability scanning
5. Security Champions program for development teams

**Cost Impact:**
- Forensic investigation: €35,000
- Customer credit monitoring: €48,000
- Legal counsel: €15,000
- Process improvements: €30,000
- Potential regulatory fines: €50,000 (pending)
- **Total**: €178,000 + reputational impact

---

## Incident Response Playbooks

### Ransomware Response Playbook

#### Detection Indicators
- Files with unusual extensions (.encrypted, .locked, .crypto)
- Ransom notes (README.txt, HOW_TO_DECRYPT.html)
- Mass file modifications in short time period
- Disabled security tools
- Encrypted file server shares

#### Immediate Actions (First 15 minutes)
1. **DO NOT** shut down affected systems (preserve evidence in RAM)
2. Isolate affected systems from network (disconnect, don't power off)
3. Identify and protect backup systems
4. Block identified malicious IPs/domains
5. Disable remote access (VPN, RDP)
6. Notify IR Team Leader

#### Investigation (1-4 hours)
1. Identify ransomware variant
2. Determine entry vector
3. Assess scope of encryption
4. Check for data exfiltration
5. Preserve forensic evidence
6. Document timeline

#### Key Decisions
- Pay ransom? **Default: NO** (Management approval required)
- Involve law enforcement? **Default: YES**
- Notify customers? **If data exfiltrated: YES**

---

### Phishing Campaign Response Playbook

#### Detection Indicators
- Multiple users reporting similar suspicious emails
- Email with malicious links/attachments
- Credential harvesting websites
- Increase in spam/phishing reports

#### Immediate Actions (First 30 minutes)
1. Obtain copy of phishing email
2. Block sender domain/address
3. Quarantine similar emails
4. Reset credentials for users who clicked
5. Scan endpoints of users who clicked
6. Check for unauthorized access

#### Communication
- Alert all users about the phishing campaign
- Provide indicators (subject line, sender)
- Remind users how to report phishing

---

## Testing Schedule

### Completed Tests (2025)

| Date | Type | Scenario | Participants | Result |
|------|------|----------|--------------|--------|
| Feb 15 | Tabletop | Ransomware | IR Team + Management | Successful |
| May 20 | Technical Drill | Data breach response | Security Team | Identified gaps |
| Aug 10 | Full Simulation | DDoS attack | All stakeholders | Successful |

### Planned Tests (2026)

- **January 2026**: Phishing campaign response (Tabletop)
- **April 2026**: Insider threat scenario (Technical drill)
- **July 2026**: Multi-event crisis (Full simulation)
- **October 2026**: Supply chain compromise (Tabletop)

---

## Competent Authority Information

**Germany (BaFin) - Financial Sector**

**Contact Information:**
- Email: nis2-meldestelle@bafin.de
- Phone: +49 (0) 228 4108-0
- Portal: https://www.bafin.de/nis2-reporting
- Emergency 24/7: +49 (0) 228 4108-1234

**Reporting Requirements:**
- Early Warning: 24 hours
- Incident Notification: 72 hours
- Final Report: 1 month
- Language: German or English accepted
- Format: Online portal or encrypted email

---

This example demonstrates a comprehensive incident response capability in compliance with NIS2 requirements, including real-world scenarios, timelines, and reporting procedures.

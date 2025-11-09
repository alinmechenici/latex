#set document(title: "Ddos Response Playbook", author: "[ORGANIZATION]")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: [
    #set text(size: 9pt, fill: rgb("#003366"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*[ORGANIZATION]*],
      align(right)[Ddos Response Playbook]
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
\fancyhead[L]{#text(fill: rgb("nis2blue"))[*DDoS Response Playbook*]}
\fancyfoot[C]{\small Page \thepage}



\begin{center}
{\Huge\bfseries DDoS Attack Response Playbook},
#v(0.3cm)
{\Large Denial of Service Incident Response}
\end{center}

\section*{Quick Reference}

*INDICATORS:*

    - Sudden spike in traffic (10x-100x normal)
    - Service degradation or unavailability
    - Specific endpoint or service targeted
    - Unusual geographic traffic sources
    - Network bandwidth saturation


*IMMEDIATE ACTIONS:*

    - Verify it's DDoS (not legitimate traffic spike)
    - Activate DDoS mitigation service
    - Contact ISP/hosting provider
    - Enable rate limiting
    - Notify stakeholders


= DDoS Types

*Volume-Based:* Saturate bandwidth (UDP floods, ICMP floods, spoofed packets)

*Protocol Attacks:* Exploit protocol weaknesses (SYN floods, fragmented packets, Ping of Death)

*Application Layer:* HTTP floods, DNS query floods, targeting web applications

= Response Phases

== Phase 1: Detection & Assessment (0-15 min)

*Validate Attack:*

    - Check traffic volume vs baseline
    - Analyze traffic sources and patterns
    - Identify targeted service/endpoint
    - Determine attack type


*Impact Assessment:*

    - Which services affected?
    - User impact (number, geography)
    - Business criticality


== Phase 2: Mitigation (15-60 min)

*Immediate Actions:*

    - *Activate DDoS Protection:* Enable cloud-based scrubbing (Cloudflare, Akamai, AWS Shield)
    - *Contact ISP:* Request upstream filtering
    - *Rate Limiting:* Implement aggressive rate limits
    - *Geo-blocking:* Block traffic from attack sources if appropriate
    - *WAF Rules:* Deploy web application firewall rules
    - *Traffic Routing:* Redirect traffic through scrubbing center


*Technical Measures:*

    - Block malicious IP ranges
    - Implement SYN cookies (for SYN floods)
    - Increase server capacity (scale up/out)
    - Enable CDN caching
    - Reduce attack surface (disable non-essential services)


== Phase 3: Monitoring & Optimization

*Continuous Monitoring:*

    - Traffic patterns and volume
    - Mitigation effectiveness
    - Legitimate traffic impact (false positives)
    - Attack evolution/changes


*Adjust Mitigation:*

    - Fine-tune filtering rules
    - Whitelist legitimate sources
    - Optimize rate limits


== Phase 4: Recovery & Analysis

*When Attack Subsides:*

    - Gradually restore normal operations
    - Keep mitigation active for 24-48h
    - Verify service restoration
    - Document attack characteristics


*Post-Incident Analysis:*

    - Attack type and vectors
    - Peak traffic volume
    - Duration and patterns
    - Mitigation effectiveness
    - Financial impact
    - Lessons learned


= Communication

*Internal:* Notify executives, customer service, IT operations

*External:* 

    - Customers (if service impact)
    - ISP/Hosting provider
    - DDoS mitigation service
    - Law enforcement (if severe/prolonged)


*NIS2 Reporting:* If significant service disruption

= Prevention


    - DDoS mitigation service (always-on or on-demand)
    - CDN for static content
    - Auto-scaling infrastructure
    - Rate limiting and traffic shaping
    - Network redundancy
    - Incident response drills


= Key Contacts

#table(
  columns: auto,
  stroke: 0.5pt,

*DDoS Mitigation Service* & [PROVIDER] - [HOTLINE] ,

*ISP* & [PROVIDER] - [NOC PHONE] ,

*Hosting Provider* & [PROVIDER] - [SUPPORT] ,

*Network Team* & [CONTACT] ,

)



<div align="center">

<br/>

<img src="./report/assets/images/chapter-2/competitors/logo-nexa.svg" alt="Nexa Logo" width="250"/>

<br/><br/>

# nexa-ecosystem-report

**Academic report, requirements engineering, product backlog, software architecture design, and evidence logs for the Nexa B2B cold-chain distribution platform**

<br/>

![Markdown](https://img.shields.io/badge/Markdown-Documentation-0F172A?style=for-the-badge&logo=markdown&logoColor=white)
![Jira](https://img.shields.io/badge/Jira-Software-0052CC?style=for-the-badge&logo=jira&logoColor=white)
![GitFlow](https://img.shields.io/badge/GitFlow-Academic-2a67d9?style=for-the-badge&logo=git&logoColor=white)

<br/>

![Course](https://img.shields.io/badge/Course-1ASI0730%20Aplicaciones%20Web-0a2540?style=flat-square)
![Cycle](https://img.shields.io/badge/Cycle-2026--10-0a2540?style=flat-square)
![University](https://img.shields.io/badge/University-UPC-0a2540?style=flat-square)
![Team](https://img.shields.io/badge/Team-King-2a67d9?style=flat-square)
![Status](https://img.shields.io/badge/Status-Release%20v4.0.1-22c55e?style=flat-square)

<br/>

**[Start Project Flow](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/)** ·
**[Open Live WebApp](https://nexa-webapp.onrender.com/#/auth/login)** ·
**[Open Platform Swagger](https://nexa-platform-20wt.onrender.com/swagger/index.html)** ·
**[View Project Wiki](./wiki/Home.md)**

<br/>

</div>

---

## Project Entry Flow

Start the Nexa review from the public Website and continue through the operational products:

1. **Website:** https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/
2. **WebApp:** https://nexa-webapp.onrender.com/#/auth/login
3. **Platform API:** https://nexa-platform-20wt.onrender.com
4. **Swagger UI:** https://nexa-platform-20wt.onrender.com/swagger/index.html
5. **Report Repository:** https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report

---

## Overview

The `nexa-ecosystem-report` repository centralizes the academic research, requirements elicitation, design mockups, software architecture definitions, sprint logs, and validation evidence for the Nexa project. Following the **Docs-as-Code** philosophy, the report is maintained as modular markdown files alongside assets, enabling version control, collaboration tracing, and alignment with the software products.

---

## Repository Map

<table>
  <tr>
    <td width="50%">
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website">nexa-website</a></p>
      <p>Public landing website and central product entry point.</p>
      <p><a href="https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/">Open Live Website</a></p>
      <p>
        <img alt="HTML5" src="https://img.shields.io/badge/HTML5-static-E34F26?style=flat-square&logo=html5&logoColor=white" />
        <img alt="CSS3" src="https://img.shields.io/badge/CSS3-responsive-1572B6?style=flat-square&logo=css3&logoColor=white" />
        <img alt="JavaScript" src="https://img.shields.io/badge/JavaScript-vanilla-F7DF1E?style=flat-square&logo=javascript&logoColor=black" />
      </p>
    </td>
    <td width="50%">
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp">nexa-webapp</a></p>
      <p>Main web application for B2B buyer portal, operator workflows, and cold-chain logs.</p>
      <p><a href="https://nexa-webapp.onrender.com/#/auth/login">Open Live WebApp</a></p>
      <p>
        <img alt="Vue 3" src="https://img.shields.io/badge/Vue%203-35495E?style=flat-square&logo=vue.js&logoColor=4FC08D" />
        <img alt="Vite" src="https://img.shields.io/badge/Vite-0F172A?style=flat-square&logo=vite&logoColor=FFD62E" />
        <img alt="PrimeVue" src="https://img.shields.io/badge/PrimeVue-0EA5E9?style=flat-square" />
      </p>
    </td>
  </tr>
  <tr>
    <td width="50%">
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform">nexa-platform</a></p>
      <p>Backend platform and API service layer for domain, persistence, security, and deployment concerns.</p>
      <p><a href="https://nexa-platform-20wt.onrender.com/swagger/index.html">Open Swagger UI</a></p>
      <p>
        <img alt="Platform" src="https://img.shields.io/badge/Platform-backend%20workspace-512BD4?style=flat-square" />
        <img alt="API" src="https://img.shields.io/badge/API-domain%20services-0EA5E9?style=flat-square" />
        <img alt="EF Core" src="https://img.shields.io/badge/EF%20Core-PostgreSQL-512BD4?style=flat-square" />
      </p>
    </td>
    <td width="50%">
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report">nexa-ecosystem-report</a> (This Repository)</p>
      <p>Academic report, product backlog, architectural research documentation, and evidence logs.</p>
      <p><a href="./wiki/Home.md">Open Report Wiki</a></p>
      <p>
        <img alt="Version" src="https://img.shields.io/badge/v4.0.1-TB2-22c55e?style=flat-square" />
        <img alt="Documentation" src="https://img.shields.io/badge/Documentation-report-0F172A?style=flat-square" />
        <img alt="UPC" src="https://img.shields.io/badge/UPC-course%20evidence-0EA5E9?style=flat-square" />
      </p>
    </td>
  </tr>
</table>

---

## Report Structure Areas

| Chapter | Description / Scope | Structural Files | Key Evidence & Deliverables |
|---|---|---|---|
| **Front Matter** | Version log, cover page, and outcome indices. | `01-cover.md`, `02-version-history.md`, `05-student-outcome.md` | Version history logs, student outcomes matrix. |
| **Chapter 1: Introduction** | Startup Profile & Solution Overview. | `1-1-startup-profile.md` to `1-3-target-segments.md` | Lean UX hypotheses, target customer personas. |
| **Chapter 2: Elicitation** | Customer Research & Elicitation. | `2-2-interviews.md`, `2-4-big-picture-event-storming.md` | Competitor analysis, EventStorming models, Ubiquitous Language. |
| **Chapter 3: Specification** | B2B Requirements Specification. | `3-1-user-stories.md` to `3-3-product-backlog.md` | User stories (Gherkin syntax), prioritized backlog. |
| **Chapter 4: Product Design** | UX Prototyping & DD Tactical Architecture. | `4-4-web-applications-ux-ui-design.md`, `4-8-database-design.md` | Wireflows, C4 models, UML class and database schemas. |
| **Chapter 5: Implementation** | SCM, Deployments & Validation. | `5-1-software-configuration-management.md` to `5-4-video-about-the-product.md` | Render deployment notes, Jira sprint tracking, product demo. |

---

## Tools Stack

| Purpose | Technology / Tool | Usage in Project |
|---|---|---|
| **Docs-as-Code** | Markdown | Version-controlled document modularity |
| **Styling & Layout** | CSS stylesheet rules | Styling layout of html outputs |
| **UX Prototyping** | Figma & Lucidchart | Wireframes, user flows, and wireflows |
| **Architecture Design** | Visual Paradigm & Draw.io | UML diagrams, database design, C4 models |
| **Project Management** | Jira Software | Sprint boards, backlog planning, and tasks |
| **SCM** | Git & GitHub | GitFlow academic branches and logs tracking |

---

## Getting Started

### Local Browsing & Contribution

1.  **Clone the Repository**:
    ```bash
    git clone https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report.git
    ```
2.  **Navigation**:
    - Central text files are located in `/report/` separated by chapter directories.
    - All image assets are stored inside `/report/assets/images/` categorized by chapter context.
3.  **Local Wiki Reference**:
    - The repository includes a offline-browsable Wiki located in the `wiki/` directory. Simply open [wiki/Home.md](./wiki/Home.md) in any markdown reader to start.

---

## Project Structure

```text
nexa-ecosystem-report/
├── .github/              # Standard workflows and community security policies
├── releases/             # Cumulative SemVer release notes and patch logs
├── report/               # Document body directories
│   ├── front-matter/     # Version logs, cover layout, student outcome files
│   ├── 10-chapter-1-introduction/
│   ├── 20-chapter-2-requirements-elicitation/
│   ├── 30-chapter-3-requirements-specification/
│   ├── 40-chapter-4-product-design/
│   ├── 50-chapter-5-implementation-validation-deployment/
│   ├── annexes/          # Additional documentation and reference checklists
│   └── assets/           # Internal graphic and image assets
├── scripts/              # Helper scripts for build processes
└── wiki/                 # Local offline copy of the technical wiki
```

---

## Team & Domain Ownership

Specific report areas and B2B sub-domain contexts are assigned to primary owners:

| Area / B2B Sub-Domain | Primary Writer | Secondary Support |
|---|---|---|
| **Ecosystem Coordination & Deploy** | DiegoS284 | Cmarin2802 |
| **Report Formatting & Chapter 1/5** | Cmarin2802 | R0obxdnt-bit |
| **Needfinding & UML/DB Design** | JoaquinVerde115 | Cmarin2802 |
| **Releases, Citations & Assets** | R0obxdnt-bit | JoaquinVerde115 |
| **Jira Management & Sprint 3** | GerardRojasMancilla | DiegoS284 |

---

## Documentation

Full report references and guidelines are maintained in:
- **[Nexa Ecosystem Report Wiki Index (wiki/Home.md)](./wiki/Home.md)** (Local offline copy)
- [Ecosystem Release Logs (releases/README.md)](./releases/README.md)
- [Security Guidelines (SECURITY.md)](./.github/SECURITY.md)
- [Contribution Policy (CONTRIBUTING.md)](./.github/CONTRIBUTING.md)
- [Code of Conduct (CODE_OF_CONDUCT.md)](./.github/CODE_OF_CONDUCT.md)

---

<p align="center">
  <strong>Nexa Ecosystem Report</strong> · Universidad Peruana de Ciencias Aplicadas · 2026-10
</p>

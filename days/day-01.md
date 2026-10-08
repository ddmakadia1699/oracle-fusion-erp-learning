# Day 1 — 2026-10-08

**Topic:** Introduction to Oracle Fusion Cloud Applications and Financial Modules

**Time spent:** 

## What I learned

### 1. What is an application?
An application is made of three parts:
- **Pages**: the screens the user works on
- **Reports**: output and analysis of the data
- **Database**: where all the data is stored

### 2. What is Oracle Fusion Cloud Financials?
Financials is a set of modules, and each one supports a business department:

| Module | Short name | Department | What it handles |
|--------|-----------|------------|-----------------|
| Payables | **AP** | Payables department | Supplier invoices, payments |
| Receivables | **AR** | Receivables department | Customer billing, receipts |
| Cash Management | **CM** | Cash department | Bank accounts, bank statement reconciliation |
| Fixed Assets | **FA** | Assets department | Fixed assets, depreciation |

> The core of Financials is **General Ledger (GL)**. AP, AR, CM and FA all send their accounting entries to GL.

### 3. Other Oracle Fusion Cloud product families
| Family | What it contains |
|--------|------------------|
| **ERP / Financials** | GL, AP, AR, CM, FA, and more |
| **HCM** (Human Capital Management) | Core HR, Payroll, Talent, and more |
| **SCM** (Supply Chain Management) | Inventory, Purchasing, Order Management (sales), and more |
| **PPM** (Project Portfolio Management) | Project costing, billing, and management |
| **Procurement** | Purchasing, suppliers, requisitions (closely linked to SCM) |
| **CX** (Customer Experience) | Sales, service, marketing (CRM) |
| **EPM** (Enterprise Performance Management) | Planning, budgeting, consolidation, financial reporting (this is what **Hyperion** became) |

### Other Oracle products
| Product | Category | What it is |
|---------|----------|------------|
| **Primavera** | PPM (Project Portfolio Management) | Project planning and scheduling for large projects such as construction and engineering (for example Primavera P6) |
| **Hyperion** | EPM (Enterprise Performance Management) | Budgeting, forecasting, consolidation and financial reporting. It is now offered as Oracle EPM Cloud |

> Fusion also has its own **PPM** module (Project Financial Management) for project costing and billing. Primavera is the separate, specialist tool for scheduling large projects.

### 4. What does "Fusion" mean?
**Oracle Fusion** is a collection of the best modules from various other ERP systems. 

**The Acquisition Strategy:** In the early 2000s, Oracle went on a massive acquisition spree to buy the best-in-class software companies in every domain (other than SAP) to build their next-generation "Fusion" platform.

**Important Note:** Fusion isn't just a "copy-paste" of these old systems. Oracle rewrote everything from scratch in a modern, cloud-native architecture (Oracle Fusion Middleware) but took the *best business processes and features* from all the companies they acquired.

Here is where the core modules of Fusion originated:

| Original Product / Company | Known for | Where it lives in Fusion |
|----------------------------|-----------|--------------------------|
| **Oracle E-Business Suite (EBS)** | Its strongest suite was Financials. | **Fusion Financials / ERP** |
| **PeopleSoft** | The gold standard for HR systems. | **Fusion HCM** |
| **JD Edwards (JDE)** | Unmatched capabilities in Manufacturing & Supply Chain. | **Fusion SCM** (and Procurement) |
| **Siebel** | The market leader in CRM before Salesforce. | **Fusion CX** (Customer Experience) |
| **Primavera** | Specialist tool for scheduling large projects. | **Fusion PPM** (Project Portfolio Management) |
| **Hyperion** | Budgeting, forecasting, and consolidation. | **Fusion EPM** (Enterprise Performance Management) |
### 5. Deployment Models: On-Premise vs. Cloud (SaaS)

To fully appreciate the architecture of Oracle Fusion Cloud, it is essential to understand the paradigm shift from traditional on-premise deployments to the Software as a Service (SaaS) model. Let us examine this through a comparative scenario.

#### The Traditional Approach (On-Premise)
Historically, if a company (let's call them **Company A**) wanted to implement an ERP system, they had to assume full responsibility for the entire technology stack. This approach requires:
- **Capital Expenditure (CapEx):** Heavy upfront investment to purchase physical **servers**, networking equipment, and data center space.
- **Software Licensing:** Purchasing perpetual software licenses upfront.
- **Implementation & Maintenance:** The company must **install** and configure the operating systems, databases, and the ERP application themselves.
- **Dedicated IT Personnel:** A substantial internal IT team is mandatory. This includes a dedicated **App DBA (Database Administrator)** to manage database tuning, backups, and disaster recovery, alongside system administrators for hardware maintenance.
- **Manual Upgrades:** When Oracle releases patches or upgrades, the internal technical team must plan months in advance, schedule significant downtime, and manually apply the updates.

In this model, the IT department spends a vast majority of its time simply "keeping the lights on."

#### The Modern Approach (Cloud / SaaS)
In contrast, if **Company B** decides to implement **Oracle Fusion Cloud**, they adopt the SaaS model. The burden of infrastructure shifts entirely to the vendor (Oracle). 
- **Operational Expenditure (OpEx):** Instead of buying servers and licenses, Company B purchases a flexible **subscription** (pay-as-you-go).
- **Zero Infrastructure:** There is no hardware to buy, no operating systems to install, and no databases to manually configure. Oracle hosts the application on Oracle Cloud Infrastructure (OCI).
- **Automated Maintenance:** Oracle handles all database management, server maintenance, performance tuning, and automated backups behind the scenes. 
- **Continuous Innovation:** Oracle automatically pushes quarterly updates and security patches. Company B always has access to the latest features (like built-in AI and machine learning) without the pain of manual upgrades.
- **Shift in IT Focus:** Since the need for a traditional Apps DBA and infrastructure team is eliminated, Company B's IT staff can focus on strategic tasks—such as business process optimization, data analytics, and system integrations.

**Summary Comparison:**

| Feature | On-Premise (Company A) | Cloud / SaaS (Company B) |
| :--- | :--- | :--- |
| **Infrastructure** | Managed internally (Corporate Data Center) | Managed by Oracle (Oracle Cloud) |
| **Cost Model** | High Upfront CapEx (Hardware + Licenses) | Predictable OpEx (Subscription) |
| **IT Team Focus** | Hardware maintenance, patching, backups | Business strategy, integrations, analytics |
| **Upgrades** | Manual, expensive, requires downtime | Automatic, seamless, continuous (Quarterly) |
| **Scalability** | Slow (requires buying new hardware) | Instant and elastic |

## Key terms
- **ERP**: Enterprise Resource Planning, software that runs a company's main business processes in one system.
- **Module**: one functional area of an application, for example AP.
- **SaaS**: Software as a Service. Oracle hosts and updates Fusion, and you use it through a browser.

## Questions / doubts
- How do AP, AR, CM and FA connect to the General Ledger?
- How do Primavera and Hyperion connect with Fusion ERP?

## Tomorrow
- Fusion architecture and how to navigate the application
- What the Setup and Maintenance work area is
- Key terms: ledger, legal entity, business unit

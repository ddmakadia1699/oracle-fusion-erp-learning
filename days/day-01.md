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
**Oracle Fusion** is a collection of the best modules from various other ERP systems. Essentially, Oracle bought nearly every major enterprise software company (other than SAP) and combined their best features into one modern platform, now delivered on the cloud.

So in Fusion, we have:

| Original Product / Company | Known for | Where it lives in Fusion |
|----------------------------|-----------|--------------------------|
| **Oracle E-Business Suite (EBS)** | Financials | Fusion Financials / ERP |
| **PeopleSoft** | HCM (HR) | Fusion HCM |
| **JD Edwards (JDE)** | Procurement / SCM | Fusion PRC / SCM |
| **Siebel** | CRM | Fusion CX |
| **Primavera** | PPM (Project Management) | Fusion PPM |
| **Hyperion** | Reporting / EPM | Fusion EPM |

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

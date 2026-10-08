# Day 2 — Oracle Cloud Subscription Options

**Topic:** Oracle Cloud Subscription Options (SaaS, PaaS, IaaS)

## 1. What is the Cloud?
In the context of Oracle, **Cloud** means a computing service that is completely managed, hosted, and maintained by Oracle. Instead of buying physical servers and installing software locally, a company purchases a subscription to access Oracle's resources over the internet.

## 2. Oracle Cloud Subscription Options
When a company moves to Oracle Cloud, they can choose from three main subscription models based on how much control they need.

### A. SaaS (Software as a Service)
This is the standard model for **Oracle Fusion Applications**. You rent the fully functional, finished software.
- **Application:** You get access to the standard Oracle Fusion Apps (Financials, HCM, SCM).
- **Page Customization:** **No.** You cannot change the core underlying code or database schema to build completely custom pages. You can only use safe *configuration* tools (like hiding a field or changing a logo).
- **Custom Reports:** **Yes.** You can build custom reports using tools like OTBI and BI Publisher.
- **Integration:** **Yes.** You can integrate Fusion SaaS with third-party systems using standard APIs.
- **Auto Upgrade:** **Yes.** Oracle automatically pushes updates every quarter. Because you aren't allowed to edit the core code, these upgrades are seamless and won't break your system.

### B. PaaS (Platform as a Service)
If a business has a highly unique requirement that SaaS cannot handle, they buy PaaS. Oracle provides the development platform (tools, databases, middleware), and the customer builds custom solutions on top of it.
- **Application:** You build custom extensions or entirely new applications that connect to Fusion.
- **Page Customization:** **Yes.** You have the tools (like Oracle Visual Builder) to design completely custom screens, pages, and workflows.
- **Custom Reports:** **Yes.** Full capability to build advanced custom analytics.
- **Integration:** **Yes.** You can build custom integration flows (using Oracle Integration Cloud) to connect your custom PaaS apps to Fusion SaaS.
- **Auto Upgrade:** **No.** While Oracle upgrades the platform tools, *you* are responsible for maintaining and upgrading the custom code/pages you built. Oracle will not fix your custom code.

### C. IaaS (Infrastructure as a Service)
This is the foundational layer.
- Oracle provides only the bare hardware: **Servers, Storage, and Networking** (known as Oracle Cloud Infrastructure or OCI).
- You are responsible for installing the Operating System, the Database, and the Applications. 
- You have total control, but also total responsibility for maintenance and upgrades.

---
### Quick Summary
- **SaaS:** You *consume* the software. (Oracle manages everything).
- **PaaS:** You *build* on the platform. (Oracle manages the platform, you manage the custom code).
- **IaaS:** You *host* on the infrastructure. (Oracle manages the hardware, you manage the OS and above).

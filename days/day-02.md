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

## 3. What is an "Instance" (or Environment)?
When a company buys an Oracle Fusion Cloud subscription, Oracle provisions what is called an **"Instance"** (often referred to as an Environment or Pod).

An Instance is a completely self-contained, isolated setup of the Oracle software. Every single instance comes fully loaded with:
- **All the Modules:** Accounts Payable (AP), Accounts Receivable (AR), General Ledger (GL), etc.
- **Its own Database:** A dedicated database holding all the data, transactions, and configurations for that specific environment.
- **Its own Reports & Pages:** The user interface, dashboards, and reporting tools.

### Test vs. Production Instances
Typically, a standard Oracle SaaS subscription provides a company with at least **two instances**:

1. **Test Instance (or DEV/UAT):**
   - This is the playground. Consultants and the IT team use the Test instance to do all the system configuration, build reports, map out business processes, and allow end-users to practice and test the system. If you make a mistake here, it doesn't impact the real business.

2. **Prod Instance (Production):**
   - This is the **live** environment. Once everything is perfectly configured and tested in the Test instance, the final setup is migrated to Production. This is where the company conducts its actual day-to-day business (real invoices, real payments, real financial closing).

*Note: While 2 instances (Test and Prod) are standard, a company can request more than 2 instances from Oracle (for example, a dedicated DEV instance, a separate UAT instance, or a Training instance). However, **extra instances cost extra money** as they require Oracle to allocate more computing resources.*

### The "Vision" Instance (Demo Environment)
In addition to standard empty environments, Oracle also provides access to a **Vision Instance**. 
- A Vision instance is a special demo environment that comes pre-configured with thousands of rows of "dummy" data (imaginary companies, employees, invoices, and setups). 
- Consultants heavily use the Vision instance to explore features, run standard processes out-of-the-box, troubleshoot issues by comparing setups, or show product demos to clients without having to configure a brand-new system from scratch.

## 4. Managing Instances: Cloning and Patching

Because you are operating in a SaaS cloud environment, managing these instances follows strict Oracle protocols. Two critical concepts you must know are **P2T Clones** and **Patching Cadence**.

### A. P2T (Production to Test) Clones
Over time, the data in your Test instance becomes stale or messy because consultants are constantly experimenting in it. To fix this, Oracle provides a **P2T (Production to Test) clone** feature. 
- A P2T clone takes a complete copy of the live Production database (from a backup) and overwrites the Test instance with it. 
- This allows consultants to test new features or troubleshoot errors using real, up-to-date business data. 
- *Note:* The target environment (Test) is wiped and unavailable during the refresh, while the source environment (Production) remains completely untouched and live.

### B. Oracle Patching Cadence
Oracle automatically pushes updates and patches to the cloud software. However, they do not update all your instances on the same day. This is done to protect the business.
- **The Staggered Approach:** Oracle typically updates the **Test instance first**. 
- Approximately **two weeks later**, they update the **Production instance**. 
- This two-week window allows the IT team and business users to log into the Test instance, explore the new update, and ensure none of their custom reports or configurations broke before the update hits the live business.

**The "Blackout" Catch:** 
Because of this staggered update cycle, there is a two-week period where Test and Prod are on *different software versions*. During this blackout window, you **cannot perform a P2T clone**, because a clone requires both environments to be on the exact same patch level. This is a major reason why large companies pay for a 3rd or 4th instance—so they always have an environment available for testing and cloning, even during blackout periods.

## 5. First Steps: Creating the Implementation User

When a brand-new Oracle Fusion instance is handed over to the consulting team, it is essentially a blank slate. The very first action the team takes is creating an **Implementation User**.

An Implementation User is a "dummy" or system user account created specifically for the project team (it does not correspond to a real company employee). This user account is used to perform all the initial system configurations without tying the setup history to a specific person's name.

To actually configure the system, this Implementation User must be assigned two highly privileged, foundational roles:

1. **Application Implementation Consultant:**
   - This is the master role for configuration. It grants access to the "Setup and Maintenance" work area, allowing the consultant to configure, set up, and implement almost all modules across the system (Financials, SCM, HCM).
   
2. **IT Security Manager:**
   - This role grants access to the **Security Console**. It allows the user to create new user accounts, build custom security roles, reset passwords, and assign roles to other users. Without this role, the consultant would be unable to grant system access to anyone else on the project.

### How to Create the Implementation User
To actually create this user in a brand-new system, you must follow these exact steps:
1. **Initial Login:** Log in using the main `fusionuser` (the initial super-user credentials provided directly by Oracle when they hand over the instance).
2. **Navigate to Security Console:** Click the Hamburger Menu (Navigator icon in the top left).
3. **Go to:** `Navigator` ➔ `Tools` ➔ `Security Console`
4. **Create User:** Click on the `Users` tab and click the **`Add User Account`** button.
5. **Fill in the User Information:** Enter the details for your dummy user. For example:
   - **User Category:** Default
   - **First Name:** fusion
   - **Last Name:** user 1
   - **User Name:** fusion user 1
   - **Password:** Abcd@1233
   - **Confirm Password:** Abcd@1233
6. **Add Roles:** Scroll down to the Roles section and click the **`Add Role`** button. Search for and add the following roles one by one:
   - `Application Implementation Consultant`
   - `IT Security Manager`
   - *(Optional but recommended)* `Employee` - This abstract role is often added so the dummy user can run scheduled processes (ESS jobs) and access standard self-service pages.

   *(Note: When you search for these roles, you will notice they have "Role Codes" starting with `ORA_`, `FND_`, etc. See the breakdown below on which one to select).*

7. **Save:** Click **Save and Close**.

### Understanding Role Codes (ORA vs. Custom)
When you search for a role in the Security Console, you will see a **Role Code** attached to it (e.g., `ORA_ASM_APPLICATION_IMPLEMENTATION_CONSULTANT_JOB` or `ORA_FND_IT_SECURITY_MANAGER_JOB`). 

Here is what these prefixes mean and which ones to select:

- **The `ORA_` Prefix:** Any role code starting with `ORA_` is a **Seeded Role**. This means it is a standard, out-of-the-box role created and locked by Oracle.
  - *Module Prefixes:* The letters after `ORA_` tell you what module the role belongs to. For example, `FND_` means Foundation (core system/security tools), `ASM_` means Application Setup Manager (implementation), `FIN_` means Financials, and `PER_` means Personnel (HCM).
- **The Custom Prefix (e.g., `XX_`):** When you copy an Oracle seeded role to create a custom version for your company, the system automatically strips the `ORA_` prefix. Companies usually add their own prefix, like `XX_` or `CUS_`.

**Which one should you select?**
1. **For the Implementation User (Day 1):** You **MUST** select the `ORA_` roles. Since the system is brand new, no custom roles exist yet! You need the out-of-the-box `ORA_` roles to get started.
2. **For Actual Business Users (Later on):** Best practice dictates that you should **rarely** assign `ORA_` roles to actual employees. Seeded roles often grant too much access. Instead, you will copy the `ORA_` role, remove the privileges the employee doesn't need (creating a custom `XX_` role), and assign the custom role to the employee.

### 🏆 Expert Best Practices for Implementation Users
If you want to manage security like a pro (and write a great book), keep these industry-standard best practices in mind:
- **Do Not Link to an HCM Person Record:** Implementation users should **never** be linked to a real worker/employee record in the HCM (HR) module. Creating them directly in the Security Console (as shown above) ensures they remain separate system accounts and don't pollute your HR data.
- **The "God Mode" Audit Risk:** The `Application Implementation Consultant` role has unrestricted access to almost all company data. During a project, this is necessary. However, after the system goes "Live", IT Auditors will flag anyone who still has this role. It should be removed from all users once the project is finished.
- **Segregation of Duties (SoD):** Eventually, you should separate these powers. One user (or team) should have the Setup/Configuration roles, while a completely different user (or team) has the `IT Security Manager` role to assign access. This prevents a single person from both configuring the financial system and secretly granting themselves access to approve their own fake invoices!

## 6. How to Check Your Oracle Fusion Version
Because Oracle pushes mandatory auto-upgrades every quarter, it is crucial to know exactly which version your instance is currently running. This helps when reading Oracle's "What's New" release notes or when logging support tickets with Oracle.

### Decoding the Version Format
Oracle uses a very simple naming convention for its quarterly releases. It combines the **Year** with a **Quarter Letter**:
- **A** = Quarter 1 (Jan / Feb / Mar)
- **B** = Quarter 2 (Apr / May / Jun)
- **C** = Quarter 3 (Jul / Aug / Sep)
- **D** = Quarter 4 (Oct / Nov / Dec)

**Examples:**
- `23D` means the update released in the 4th Quarter of 2023.
- `24A` means the update released in the 1st Quarter of 2024.
- `24B` means the update released in the 2nd Quarter of 2024.

*(Note: As of late 2026, the latest major quarterly releases are **26C** and **26D**. These recent releases focus heavily on "Fusion Agentic Applications"—embedding AI directly into business processes so the system can autonomously reason over data and complete tasks!)*

### Where to Find It in the System
Checking your version takes just two clicks:
1. **Click your User Profile Image/Name** in the top-right corner of the global header.
2. From the drop-down menu (Settings and Actions), click on **`About This Application`**.
3. A small pop-up window will appear displaying the exact version (e.g., *Oracle Fusion Cloud Applications 24B (11.13.24.04.0)*).

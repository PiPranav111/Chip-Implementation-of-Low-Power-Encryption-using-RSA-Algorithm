
## **Chip Implementation of Low Power Encryption using RSA Algorithm**  

### **Objective**  
To achieve low power consumption along with high performance and reliability in RSA-based encryption - decryption hardware.  

### **Tools Used**  
- **FPGA Flow:** Vivado, Spartan-7 FPGA, Boolean Board  
- **ASIC Flow:** Cadence Tools (Genus, Innovus, Virtuoso, SimVision)  

---

## **Project Workflow**  

### **1. Research & Algorithm Understanding**  
- Studied RSA algorithm, it's physical implementation and its impact on **power, performance, and reliability**.  
- Explored **hardware acceleration techniques** for RSA.  

### **2. RTL Design & Functional Verification**  
- Designed **7-bit RSA** encryption in **Verilog**.  
- Simulated the RTL in **SimVision** to verify correctness.  

### **3. FPGA Implementation (Vivado Flow)**  
- Synthesized, implemented, and programmed the design on **Spartan-7 FPGA** using **Vivado**.  
- Generated **PPA (Power, Performance, Area) reports** and verified functionality.  

### **4. ASIC Synthesis (Cadence Genus)**  
- **Initial Synthesis (Without Constraints):**  
  - Used **45nm bulk CMOS library**.  
  - Analyzed area, timing, and power.  
- **Multi-Corner Timing Analysis:**  
  - Performed synthesis using **slow, typical, and fast libraries**.  
  - Compared power, performance, and area across corners.  
  - Selected the **netlist from the typical library** for Physical Design.  

### **5. Physical Design (Cadence Innovus)**
- **Prepared Required Files:**  
  - **MMMC file** (Multi-Mode Multi-Corner Timing Setup)  
  - **IO File** (Pin Assignments)  
  - **Constraints File (SDC)** (Timing constraints)  
  - **Netlist File** (Optimized synthesized netlist)  
  - **LEF Files** (Technology files for layout)  
- **Performed RTL-to-GDSII Flow:**  
  - **Floorplanning:** Defined core area, placed macros.  
  - **Placement:** Standard cell placement and legalization.  
  - **Clock Tree Synthesis (CTS):** Balanced clock distribution.  
  - **Routing:** Signal and power routing.  
  - **Optimization:** Achieved low power and high performance.  
- **Generated Final GDS-II File.**  

### **6. Layout Verification (Cadence Virtuoso)**
- Loaded the **final GDS file** in **Virtuoso** for final verification.  

---

## **Challenges Faced & Solutions**  
(*To be added later*)  

---

## **Final Results**  

**Area : 0.4 mm square.**
**Power : 1.35 mW**

---

## **Future Scope**  
🔹 Explore **FinFET libraries** for further power reduction.  
🔹 Perform **DFT (Design for Testability)** for improved fault detection.  
🔹 Optimize RSA **hardware architecture** for further speedup.  

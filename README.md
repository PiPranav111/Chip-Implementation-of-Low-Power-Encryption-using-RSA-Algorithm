🔐 Chip Implementation of Low Power RSA Encryption (RTL to GDSII)

> End-to-end RSA Encryption-Decryption hardware system implemented on FPGA and ASIC design flows using Verilog, Vivado, and Cadence tools. Achieved 74% power reduction using clock & power gating techniques.




---

📌 Overview

This project demonstrates the complete hardware design of an RSA encryption-decryption engine using a 7-bit datapath. Implemented across both FPGA (Xilinx Vivado) and ASIC semi-custom flows (Cadence Genus, Innovus, SimVision, Virtuoso), the project validates simulation-to-silicon consistency and optimizes for power and timing.


---

🛠 Tools & Technologies

Languages: Verilog HDL

FPGA Toolchain: Vivado 2022.1 (Xilinx Spartan-7 xc7s50csga324)

ASIC Tools: Cadence Genus, Innovus, SimVision, Virtuoso

PDK: 45nm CMOS

Others: TCL scripting, SDC constraints, MMMC (slow/typ/fast), GDSII export



---

🔧 Design Flow

🔹 1. RTL Design

Modules: mod_exp, encrypt, decrypt, top, testbench

Input: Plaintext message, primes p, q

Output: Ciphertext and decrypted message


🔹 2. FPGA Implementation (Vivado)

Datapath size: Tested 4-8 bits, finalized on 7-bit

XDC constraints: 10 ns clock, 12 mA output drive

Timing optimized by increasing clock period to 3500 ns

Results:

LUT Utilization: 70.10%

Total Power: 73 mW (1 mW dynamic)

Simulation matched FPGA output



🔹 3. ASIC Implementation (Cadence)

Simulated RTL in SimVision

Synthesized using Genus across MMMC PVT corners

Power gating and clock gating applied using Genus commands

Frequency results:

1.5 MHz (typ), 2.5 MHz (fast)


PnR in Innovus, GDS-II exported and visualized in Virtuoso



---

📊 Results & Impact

Functional RSA pipeline with both encryption and decryption

Achieved ~74% power reduction (5 mW → 1.3 mW)

Validated timing and logic across both FPGA and ASIC

Benchmarked against research paper data for validation

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

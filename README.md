# 🔐 Chip Implementation of Low Power Encryption using RSA Algorithm

## 🎯 Objective
To achieve low power consumption along with high performance and reliability in RSA-based encryption - decryption hardware.

---

## 🛠 Tools Used

| Flow         | Tools Used                                     | Purpose                               |
|--------------|------------------------------------------------|----------------------------------------|
| RTL Design   | Verilog HDL                                     | Design of RSA encryption module        |
| Simulation   | Cadence SimVision                               | Functional simulation                  |
| FPGA Flow    | Vivado, Spartan-7 FPGA                          | Synthesis, Implementation, PPA Reports |
| ASIC Synthesis | Cadence Genus                                | RTL to gate-level netlist              |
| Physical Design | Cadence Innovus                             | Floorplanning to GDS-II                |
| Layout Verification | Cadence Virtuoso                        | Final layout visualization             |


---

## 🔄 Project Workflow

### 1. 📚 Research & Algorithm Understanding
- Studied RSA and various other algorithms and compare its impact on power, performance, and area.
- Explored modular exponentiation and acceleration techniques.

### 📊 Algorithmic Survey

| Algorithm | Type        | Key Size       | Security Level | Power Consumption | Suitable for Low Power? |
|-----------|-------------|----------------|----------------|--------------------|--------------------------|
| RSA       | Asymmetric  | 1024–4096 bits | High           | Medium             | ✅ Yes                   |
| ECC       | Asymmetric  | 160–512 bits   | Very High      | Low                | ✅ Yes                   |
| AES       | Symmetric   | 128/192/256    | Very High      | Medium             | ✅ Yes                   |
| DES       | Symmetric   | 56 bits        | Low            | Low                | ❌ No                    |
| Blowfish  | Symmetric   | 32–448 bits    | Medium         | Medium             | ⚠️ Partially             |

📎 *RSA Functional Block Diagram*  
![RSA Block Diagram](docs/Images/rsa_block_diagram.png)

---

### 2. 🧠 RTL Design & Verification
- Design Style : FPGA-Based Design
- Designed 4-bit to 8-bit RSA mod_exp, encryption, decryption module using Verilog.
- Simulated and verified using **Cadence SimVision**.
  
  📎 *Sample RTL Waveform in Vivado*  
![RTL Simulation](docs/Images/vivado_waveform.png)

📎 *Sample RTL Waveform in Cadence*  
![RTL Simulation](docs/Images/simvision_waveform.png)

---

### 3. 💡 FPGA Implementation (Vivado)
- Synthesized and implemented on Spartan-7 FPGA using Vivado.
- Verified functionality and generated **PPA reports**.

📎 *FPGA Output Snapshot*  
![Vivado Output](docs/Images/fpga_output.png)

📄 [Vivado PPA Report (PDF)](docs/Images/vivado_results.png)

---

### 4. 🧮 ASIC Synthesis (Cadence Genus)
- Used 45nm bulk CMOS library.
- Performed synthesis with and without constraints.
- Compared timing across slow, typical, fast corners.

📄 [Genus Power Report](docs/reports/power.rpt)
📄 [Genus Timing Report](docs/reports/timing.rpt)
📄 [Genus Area Report](docs/reports/area.png)

### 📊 PPA Comparison Across Corners (ASIC Synthesis)

| Corner  | Area (mm²) | Power (mW) | Max Frequency (MHz) |
|---------|------------|------------|----------------------|
| Slow    | 0.41       | 1.52       | 0.5                  |
| Typical | 0.40       | 1.35       | 1.25                  |
| Fast    | 0.39       | 1.28       | 2.5                  |


---

### 5. 🧱 Physical Design (Cadence Innovus)
- Floorplanning, Placement, CTS, Routing, and Optimization.
- Generated the final **GDS-II layout**.

📎 *Floorplan*  
![Floorplan](docs/Images/floorplan_snapshot.png)
📎 *Placement*  
![Placement](docs/Images/Placement_snapshot.png)
📎 *Clock Distribution Network*  
![Clock Distribution Network](docs/Images/CTS_snapshot.png)
📎 *Routing*  
![Routing](docs/Images/Routing_snapshot.png)

---

### 6. 🔍 Layout Verification (Cadence Virtuoso)
- Loaded final GDS in **Virtuoso** for layout visualization and confirmation.

📎 *Virtuoso Layout View*  
![Virtuoso Layout](docs/Images/virtuoso_view.png)

---

## 📊 Final Results

| Metric             | Value     |
|--------------------|-----------|
| Area               | 0.4 mm²   |
| Power              | 1.34 mW   |
| Max Clock Frequency| 2.5 MHz   |

---

## 🔭 Future Scope
- Evaluate FinFET libraries for leakage reduction.
- Add DFT (Design for Testability) for test pattern generation.
- Improve RSA speed via pipelining or Montgomery Multiplication.

## 📄 Publications & Presentations

- 📘 **Paper Title:** *Chip Implementation of Low Power Encryption using RSA Algorithm*
- 🏛️ **Presented at:** SMARTCOM 2025 – International Conference on Smart Communication and Imaging Systems, Pune
- 🔗 [View Presentation details on SMARTCOM 2025](https://ninthsmartcom2025.sched.com/event/1u1OM/chip-implementation-of-low-power-encryption-using-rsa-algorithm)
- 📰 **To be published in:** Springer Lecture Notes in Networks and Systems (LNNS), 2025  
- 🔗 [Link will be updated once available]

> 📌 *This paper presents the FPGA design flow, RTL simulation results, and PPA analysis using Vivado and Spartan-7 FPGA.*

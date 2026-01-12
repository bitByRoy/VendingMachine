# 🥤 Vending Machine Design using Verilog HDL

## 📌 Project Overview
This project implements a **Vending Machine** using **Verilog HDL** based on **Finite State Machine (FSM)** principles.  
The vending machine accepts coin inputs, keeps track of the total amount, and dispenses a product when the required amount is reached.

This project was developed and simulated using **EDA Playground** and verified with a testbench.

---

## 🎯 Objectives
- To design a vending machine using Verilog HDL  
- To understand and implement FSM-based sequential logic  
- To verify the design using a testbench  
- To simulate and analyze the output behavior  

---

## 🧠 Design Description
The vending machine works by transitioning through different states depending on the coin inserted.

### Key Features:
- Accepts coin inputs  
- Tracks accumulated amount  
- Dispenses product after sufficient amount  
- Reset functionality included  

---

## 🔁 FSM States Description

| State Name | Amount Collected | Description |
|-----------|------------------|-------------|
| IDLE | 0 | Waiting for coin input |
| STATE_5 | 5 | 5-unit coin inserted |
| STATE_10 | 10 | 10 units collected |
| STATE_15 | 15 | Ready to dispense |
| DISPENSE | ≥15 | Product is dispensed |

---

## 🧪 Testbench & Simulation
A Verilog testbench is used to:
- Apply different coin input combinations  
- Verify correct state transitions  
- Check product dispense signal  
- Validate reset behavior  

The simulation ensures that the vending machine behaves correctly for all test cases.

---

## 📂 Project Structure
```
VendingMachine/
├── vending_machine.v        # RTL Design
├── vending_machine_tb.v     # Testbench
└── README.md                # Documentation
```

---

## 🛠 Tools Used
- Verilog HDL  
- EDA Playground  
- Digital Logic Design Concepts  

---

## 🚀 Future Enhancements
- Multiple product selection  
- Refund mechanism  
- Display interface (LCD / 7-segment)  
- Inventory management  

---

## 👩‍💻 Author
**Swarnali Roy**  
B.Tech in Electronics and Communication Engineering  
GitHub: https://github.com/bitByRoy  

---

⭐ If you find this project useful, feel free to star the repository!

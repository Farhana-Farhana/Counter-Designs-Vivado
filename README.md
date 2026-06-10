# Counter Designs Using Verilog HDL

## Overview

This repository contains the implementation and simulation of three fundamental sequential circuits using Verilog HDL:

1. 4-bit Up Counter
2. 4-bit Down Counter
3. 4-bit Up/Down Counter

All designs were developed and verified using Xilinx Vivado through behavioral simulation.

---

## Objectives

- Learn sequential circuit design using Verilog HDL
- Understand clock-driven operations
- Implement counter circuits with reset functionality
- Verify counter operation using simulation waveforms

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Behavioral Simulation

---

## Repository Structure

```text
Counter-Designs-Verilog/
│
├── Up_Counter/
│   ├── up_counter.v
│   ├── up_counter_tb.v
│   └── waveform.png
│
├── Down_Counter/
│   ├── down_counter.v
│   ├── down_counter_tb.v
│   └── waveform.png
│
├── Up_Down_Counter/
│   ├── up_down_counter.v
│   ├── up_down_counter_tb.v
│   └── waveform.png
│
└── README.md
```

---

# 1. 4-bit Up Counter

## Description

A 4-bit synchronous up counter increments its count value by one on every positive edge of the clock.

### Counting Sequence

```text
0 → 1 → 2 → 3 → 4 → 5 → 6 → 7
→ 8 → 9 → A → B → C → D → E → F → 0
```

### Features

- Positive edge triggered
- Asynchronous reset
- Counts from 0 to 15
- Automatically wraps back to 0

### Simulation Result

The waveform verifies that the counter increments correctly from 0 to 15 and then returns to 0.

---

# 2. 4-bit Down Counter

## Description

A 4-bit synchronous down counter decrements its count value by one on every positive edge of the clock.

### Counting Sequence

```text
F → E → D → C → B → A → 9 → 8
→ 7 → 6 → 5 → 4 → 3 → 2 → 1 → 0 → F
```

### Features

- Positive edge triggered
- Asynchronous reset
- Counts from 15 down to 0
- Automatically wraps back to 15

### Simulation Result

The waveform verifies that the counter decrements correctly from 15 to 0 and then returns to 15.

---

# 3. 4-bit Up/Down Counter

## Description

The Up/Down Counter combines the functionality of both up and down counters using a control signal.

### Control Signal

| up_down | Operation |
|----------|-----------|
| 1 | Count Up |
| 0 | Count Down |

### Up Counting Mode

```text
0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8
```

### Down Counting Mode

```text
8 → 7 → 6 → 5 → 4 → 3 → 2 → 1 → 0
```

### Features

- Positive edge triggered
- Asynchronous reset
- Direction control input
- Supports both incrementing and decrementing operations

### Simulation Result

The waveform confirms that the counter successfully changes direction based on the control signal and performs both up-counting and down-counting operations correctly.

---

# Common Features

All counter designs include:

- Sequential logic design
- Positive edge clock triggering
- Asynchronous reset
- Behavioral modeling in Verilog
- Functional verification using testbenches
- Waveform analysis using Vivado

---

# Applications

Counter circuits are widely used in:

- Digital clocks
- Timers
- Frequency counters
- Event counters
- Embedded systems
- Communication systems
- FPGA and VLSI designs

---

# Conclusion

This repository demonstrates the implementation and verification of three essential counter circuits using Verilog HDL. These projects provide a strong foundation in sequential logic design and are fundamental building blocks for more advanced digital systems.

---

## Author

Farhana N S
Electronics Engineering Student

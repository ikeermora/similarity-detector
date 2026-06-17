# Similarity Detector

8-bit similarity detector designed as an ASIC-style digital circuit in Electric VLSI.

The circuit compares an input vector against a reference vector using XNOR logic, counts the number of matching bits, and checks whether the similarity score meets a programmable threshold.

## Overview

This project was developed for an Integrated Circuits class project. The design follows a modular CMOS methodology, moving from logic-level design to schematic implementation and layout in Electric VLSI.

## Architecture

Main blocks:

- XNOR array
- Match counter
- 4-bit comparator
- Output decision logic

## Function

Given:

- `x[7:0]`: input vector
- `w[7:0]`: reference vector
- `b`: threshold

The detector outputs `1` when:

```text
number of matching bits between x and w >= b

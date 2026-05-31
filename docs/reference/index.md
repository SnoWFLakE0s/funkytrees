---
title: Reference
layout: default
parent: Documentation
nav_order: 1
---
# Reference
#### The complete technical documentation for the Funky Trees language.
---

This reference guide provides the technical specifications for the Funky Trees language, the mathematical expression system used to create advanced logic, automation, and custom behaviors within the simulation.

## Core Documentation

### [Data Types](./datatypes/)
Documentation on the core data types supported in Funky Trees.

### [Functions](./functions/)
Documentation on all mathematical and logical functions available, including trigonometric functions, logic functions, and real-time control tools.

### [Interfaces](./interfaces/)
Documentation on interfaces through which Funky Trees can be used. See this section if you need to find what fields support FT inputs.

### [Operators](./operators/)
Documentation on the core math and logic operators supported in Funky Trees.

### [Variables](./variables/)
Documentation on the various information sources available. These include both built-in telemetry and custom defined variables.

## Misc Notes

* Standard arithmetic operators and Boolean logic are supported to create complex conditional statements.
* Unless otherwise specified, the system utilizes SI units (Meters, Seconds, Newtons) and degrees for angular measurements.
* Both function names and variable names are strictly case-sensitive.
* All expressions are evaluated per-frame. The update frequency is directly tied to the game's physics quality setting.
---
title: Reference
layout: default
parent: Documentation
---
# Reference
#### The complete technical documentation for the Funky Trees language.
---

This reference guide provides the technical specifications for the Funky Trees language, the mathematical expression system used to create advanced logic, automation, and custom behaviors within the simulation.

## Core Documentation

### [Functions](./functions/)
Detailed listings of all mathematical and logical operators available, including trigonometric functions, PID controllers, and signal processing tools.

### [Variables](./variables/)
Technical data on the various information sources available to expressions.
* **Built-in Variables**: Standard flight telemetry and user input data provided by the simulation engine.
* **Custom Variables**: User-defined global variables and part-specific local data outputs.

## Language Fundamentals

* **Mathematical Logic**: Standard arithmetic operators and Boolean logic are supported to create complex conditional statements.
* **Unit Standards**: Unless otherwise specified, the system utilizes SI units (Meters, Seconds, Newtons) and degrees for angular measurements.
* **Case Sensitivity**: Both function names and variable names are strictly case-sensitive.
* **Performance**: All expressions are evaluated per-frame. The update frequency is directly tied to the game's physics quality setting.

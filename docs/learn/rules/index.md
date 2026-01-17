---
title: General Rules for Writing FT Code
layout: default
parent: Learn
nav_order: 3
---
# General Rules for Writing FT Code
#### Formatting, syntax, and execution standards.
---

To ensure expressions are parsed correctly, you must follow these syntax rules.

## Syntax Rules
* **Case Sensitivity**: All variables and functions are case-sensitive. `alt` is not the same as `Altitude`.
* **White Space**: Spaces are generally ignored. `Pitch * 0.5` is processed the same as `Pitch*0.5`.
* **Nesting**: Use parentheses `()` to group logic and define the order of operations.

## Execution
* **Update Frequency**: Expressions are evaluated every physics tick. High-quality physics settings increase the update frequency.
* **Circular Dependencies**: Avoid creating "feedback loops" where two variable setters rely on each other simultaneously, as this can lead to undefined behavior or crashes.
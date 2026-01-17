---
title: Data in Funky Trees
layout: default
parent: Learn
nav_order: 4
---
# Data in Funky Trees
#### Understanding how the language handles different types of information.
---

Funky Trees primarily operates using two types of data.

## Numbers
Almost all flight data and control inputs are represented as floating-point numbers.
* **Continuous**: Variables like `IAS` or `Altitude` provide smooth, decimal-based data.
* **Ranges**: Most control inputs range from `-1.0` to `1.0`.

## Booleans
Booleans represent "true" or "false" states. In Funky Trees, these are often treated as `1` (true) and `0` (false), though some logical operators specifically look for non-zero values. Activation Groups and triggers like `FireGuns` are the most common sources of Boolean data.
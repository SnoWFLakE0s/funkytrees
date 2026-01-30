---
title: Expressions
layout: default
parent: Reference
---
# Expressions
#### Reference overview of the structural components and evaluation rules of Funky Trees expressions.
---

Expressions are strings of code used to define the behavior of aircraft parts. An expression consists of variables, operators, and functions that are evaluated by the game engine to produce a single output value.

## Data Types
Defines the three categories of values supported by the system: Numbers, Booleans, and Strings. Understanding data types is critical for ensuring compatible operations and predictable evaluation results.

See [Data Types](/funkytrees/docs/reference/expressions/datatypes/) for details.

## Operators
Defines the symbols used to perform computations and logic within an expression. This includes arithmetic calculations, numerical comparisons, boolean logic, and conditional selection.

See [Operators](/funky-docs/docs/reference/expressions/operators/) for details.

## Evaluation Rules
Expressions follow a specific set of rules to ensure consistent outputs:
* Case Sensitivity: Character capitalization is strictly enforced for all variables and functions.
* Order of Operations: Mathematical calculations follow standard algebraic precedence.
* Formatting: While spacing is generally flexible, specific operators may require spacing for consistent evaluation.
* Error Handling: Invalid syntax or unrecognized symbols prevent the entire expression from evaluating correctly.
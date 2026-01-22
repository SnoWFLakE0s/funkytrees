---
title: Rules of Funky Trees
layout: default
parent: Learn
nav_order: 3
---
# Rules of Funky Trees
#### Formatting, syntax, and execution standards.
---

On a general level, Funky Trees is essentially a way to choose what you want to use as inputs, run those inputs through varying amounts of math, and then figure out what to do with the result. Details on how to do this may be found in the following sections, but there are several key rules to be aware of before continuing.

## Syntax
* **Spelling matters**: `Altitude` is not the same as `Atlitude`.
* **Capitalization matters**: `Altitude` and `altitude` are different things.
* **Order of Operations**: Mathematical operations follow standard order of operations conventions. See [Operators](../operators/) for details.
* **White space**: Spaces are ignored. `Pitch * 0.5` is processed the same as `Pitch*0.5`. However, spaces are *not* removed automatically, and can be useful for formatting and readability.

## Execution
* **Update frequency**: Expressions are evaluated every physics tick. High-quality physics settings increase the update frequency.
* **Error handling**: If an expression is invalid or produces an invalid output, the game eiher assumes the output to be `0` or (in the case of invalid variables) refuses to allow them to be saved.

## Expression Types
Funky Trees uses **three primary expression types**. Every element and expression in any Funky Trees formula can be categorized as one of these three types:
* [Variables](../../reference/expressions/variables/)
* [Functions](../../reference/expressions/functions/)
* [Operators](../../reference/expressions/operators/)
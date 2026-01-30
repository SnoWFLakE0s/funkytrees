---
title: Operators
layout: default
parent: Learn
nav_order: 7
---
# Operators
#### The basic tools for mathematical and logical operations.
---

Operators allow you to combine variables and numbers into functional logic, using standard mathematical and logical operations.

## Arithmetic Operators
Arithmetic operators allow you to perform basic algebraic calculations using Funky Trees, including addition, subtraction, multiplication, and division. These may use both number and boolean variables, and produce numbers as outputs.

* `1 + 1` returns `2`.
* `500 / 10` returns `50`.
* `(2 + 5) / 2` returns `3.5`.
* `var2 - var1` returns the difference between `var1` and `var2`.

## Comparison Operators

Comparison operators are used to compare two numerical values (or number-converted booleans), returning `True` if the comparison is true and `False` if the comparison is false.

* `2 + 2 = 4` returns `True`.
* `2 + 2 = 5` returns `False`.
* `var1 <= 5` returns `True` if the value of `var1` is less than or equal to 5.
* `var2 != 8` returns `False` if the value of `var2` is equal to 8, and returns `True` otherwise.

## Logical Operators

Logical operators are used to perform operations on boolean values, with different return values based on the purpose of each operator. They behave like logic gates, enabling logical comparisons (AND, OR, NOT, NOR, and so on) between booleans and other variables.
* **AND operator**: `boo1 & boo2` returns `True` if both `boo1` and `boo2` are `True`, and returns `False` otherwise.
* **OR operator**: `boo1 | boo2` returns `True` if either `boo1` or `boo2` is `True`, and returns `False` otherwise.
* **NOT operator (comparison)**: `boo1 ! boo2` returns `True` if the operands are not the same, and returns `False` other.
* **NOT operator (inverter)**: `!boo1` returns the inverse of `boo1` (e.g. `!True` becomes `False`).

## Selection/Ternary Operator

The selection (or ternary) operator behaves similarly to an "If-Then-Else" statement, like what one might find in a more traditional programming language, and is formatted as follows:
```
Condition ? ValueIfTrue : ValueIfFalse
```
 If `Condition` is `True`, it executes the first expression; if `Condition` is `False`, it executes the second expression. For example:
 * `GearDown ? "Yeah" : "Nope"` outputs the string `"Yeah"` if `GearDown` is `True`, and outputs `"Nope"` if `GearDown` is `False`

## Combining Operators

The real power of Funky Trees comes from combining different operators to produce complex logical expressions. This will be covered in more detail in the [Tutorials](../tutorials) section, but a few basic examples are shown below:

* `(var1 > 100) & (var2 < 50)` outputs `True` if both conditions are met, and outputs `False` otherwise.
* `(boo1 | (var3 !< 100) ? 1 : 0` outputs `1` if either the expression `var3 !< 100` or the boolean `boo1` are `True`, and outputs `0` otherwise.

---
A full list of available Funky Trees operators can be found in the [Reference](../../reference/operators/) section.
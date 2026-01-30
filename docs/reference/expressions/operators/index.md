---
title: Operators
layout: default
parent: Expressions
nav_order: 2
---
# Operators
#### Technical reference for mathematical and logical operators used in Funky Trees expressions.
---

## Arithmetic Operators
Arithmetic operators perform standard algebraic calculations. Mathematical operations in Funky Trees follow the standard order of operations.

| Symbol | Operation | Description |
| :--- | :--- | :--- |
| `+` | Addition | Adds numerical values or concatenates two strings (e.g., `"He" + "llo"` results in `"Hello"`). |
| `-` | Subtraction | Subtracts numerical values or denotes a negative sign. |
| `*` | Multiplication | Multiplies two numerical values. |
| `/` | Division | Divides the first numerical value by the second. |
| `( )` | Grouping | Groups statements to define the order of evaluation; operations inside parentheses are performed first. |

> **Note**: Implied multiplication, such as `(a)(b)`, is not supported; the `*` operator must be used explicitly.

## Comparison Operators
Comparison operators evaluate the relationship between two numerical values (or number-converted booleans) and return a boolean result (`true` or `false`).

| Symbol | Definition | Description |
| :--- | :--- | :--- |
| `=` | Equality | Returns `true` if the left value is equal to the right value. |
| `!=` | Inequality | Returns `true` if the left value is not equal to the right value. |
| `>` | Greater Than | Returns `true` if the left value is strictly greater than the right value. |
| `<` | Less Than | Returns `true` if the left value is strictly less than the right value. |
| `>=` | Greater or Equal | Returns `true` if the left value is greater than or equal to the right value. |
| `<=` | Less or Equal | Returns `true` if the left value is less than or equal to the right value. |

## Logical Operators
Logical operators perform operations on boolean operands and return a boolean result.

| Symbol | Operation | Description |
| :--- | :--- | :--- |
| `&` | Boolean AND | Returns `true` only if both operands are `true`. |
| `|` | Boolean OR | Returns `true` if at least one of the operands is `true`. |
| `!` | Boolean NOT | Inverts the boolean value (e.g., `!true` evaluates to `false`). |

**Evaluation Behavior**: Logical operators utilize "short-circuit" evaluation. If the first argument of an `&` or `|` operator dictates the final outcome (terminal), the second argument is not checked or updated. This can impact time-based functions like `sum()` or `rate()` if they are placed in the second argument.

## Selection Operator
The selection operator allows for inline conditional logic based on a boolean condition.

| Symbol | Operation | Syntax | Description |
| :--- | :--- | :--- | :--- |
| `? :` | Ternary Selection | `a ? b : c` | Evaluates condition `a`. If `a` is `true`, it returns value `b`. If `a` is `false`, it returns value `c`. |

> The selection operator behaves similarly to an "If-Then-Else" statement.
---
title: Functions
layout: default
parent: Learn
nav_order: 6
---
# Functions
#### Different methods to apply mathematical principles to variables.
---

Functions are special phrases that take variables as inputs and produce an output, based on what the specific function is designed to do.

Functions in Funky Trees are defined by their function name, and are followed by parentheses containing the variables that are to be processed by the function. A generic example of a Funky Trees function looks like this:
```
function(var1, var2)
```
In this example, `function` is the name of the function - in this case, a function requiring two input variables - while `var1` and `var2` are the input variables. Some functions take only a single input variable, while others can take up to three or more.

## Number-based Functions

The majority of Funky Trees functions are number-based functions, which means that they perform a mathematical function of some sort on the variable(s) that they are given.

Number-based functions can accept number and boolean variables, or expressions that produce number or boolean values. As discussed in the [Variables](../variables/) section, boolean values will resolve to either `1` or `-1` automatically depending on their state, which makes it easy to incorporate them into number-based functions.

Some common number-based Funky Trees functions include:
* `abs(x)`: Takes the absolute value of `x`.
* **`clamp01(x)`**: Limits the value of `x` to between 0 and 1. Equivalent to `clamp(x, 0, 1)`.
* **`sin(x)`**: Calculates the sine of `x`.

A full list of available Funky Trees functions can be found in the [Reference](../../reference/functions/) section.

## Time-based Functions

Unlike number-based functions, which are (mostly) things that can be done with a calculator, time-based functions operate with respect to time, and are therefore more complex but can also be extremely useful.

Time-based functions include:

| Name | Description |
|:---:|:---:|
| `rate(x)` | The rate of change of `x` over time |
| `sum(x)` | The integration of `x` over time<sup>*</sup> |
| `smooth(x, rate)` | Follows `x`, but only at a maximum speed of `rate` units per second |
| `PID(target, current, p, i, d)` | A PID controller with the parameters `p`, `i` and `d`. [Read more about PID controllers on Wikipedia.](https://en.wikipedia.org/wiki/PID_controller) [Read more about PID controllers in Funky Trees.](../../reference/functions/PID/)  |


## String-based Functions

The only string-based function that exists in Funky Trees is intended to work with the only string-based *variable*:  the `ammo("string")` function. This function returns the `ammo` property of the string variable that is passed to it. Some examples:

* **`ammo("SelectedWeapon")`** returns the current amount of ammunition for the currently selected weapon as determined by the `SelectedWeapon` string variable.
* **`ammo("Bob")`** returns the current amount of ammunition for all weapons on the craft with the name `Bob`.
* **`ammo(Bob)`** is invalid, because the string is missing quotation marks and cannot be read.
* **`ammo("LandingGear")`** is invalid, because `LandingGear` is not a string variable.

---
A full list of available Funky Trees functions can be found in the [Reference](../../reference/functions/) section.
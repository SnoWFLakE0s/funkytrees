---
title: Variables
layout: default
parent: Learn
nav_order: 6
---
# Variables
#### An introduction to the data sources available to your aircraft.
---

Variables are the "inputs" for your expressions. They come in several different types, each with their own use cases and characteristics.

Variables can be organized into three primary categories, regardless of type:

* **Flight Controls**: Based on control inputs. These variables are controlled directly by the player as they pilot the craft. Examples include `Throttle`, `Roll`, and `FireGuns`.
* **Craft State**: Based on what the craft is doing in the world. These variables are affected by player actions, but cannot be controlled directly. Examples include `PitchAngle` and `Fuel`.
* **Target State**: Based on the state of a selected target *relative to the player's craft*. Examples include `TargetHeading` and `TargetSelected`.

Within each of these categories, there are a maximum of four distinct types of variables: **number variables**, **booleans**, **strings**, and **custom variables**.

## Number Variables

Number variables are simply variables that produce a number based on their associated input condition, and are by far the most common variable type. Some number variables have inherent limits built into their output ranges, meaning that they will only ever output values within their assigned range. Other number variables are unrestricted, and can output any valid decimal value. Available number variables include `IAS`, `Altitude`, `Throttle`, `TargetHeading`, and others.

See [Built-in Variables](../../reference/variables/builtin/) for a list of all available variables, including number variables.

## Booleans
Booleans represent `True`/`False` states, and are essentially the logical equivalent of a light switch: either an input is On (`True`) or it is Off (`False`). In Funky Trees, boolean variables can be used in combination with number variables, functions, and operators without any special modifications. Booleans are automatically converted from `True`/`False` to `1`/`-1` when used in combination with number variables, functions, or operators, streamlining the process and removing the need for any manual conversions.

See [Built-in Variables](../../reference/variables/builtin/) for a list of all available variables, including booleans.

## Strings

A string variable is a line of text. Strings behave somewhat differently from other variable types: there is no defined range or list of output values, and the string variable instead outputs whatever text cooresponds to the value that it checks for.

The only built-in string variable is `SelectedWeapon`, which outputs the name of the currently selected weapon (e.g. `Boom 50`, `Rocket`, `Cannon`) as a string.
> Weapon names can be set or changed via the Part Name property in SimplePlanes 2.

> Weapon names can be set or changed in SimplePlanes 1 by changing the `name` property in Overload, or by manually editing the craft's XML file.

## Custom Variables

In addition to the pre-defined variables listed above, it is possible for players to create their own custom variables for use with Funky Trees. There are two types of custom variables: **Setter Variables** and **Part Variables**.

### Setter Variables

Setter variables are, logically, created using the Variable Setter menu in the Designer. These are typically used as a means of "chunking" more complex Funky Trees expressions by isolating sections of code that are used multiple times. Setter variables can be defined with any name that is valid (see [Rules of Funky Trees](../rules/) and not already in use.

See [Custom Variables](./customvariables/) for details and an explanation of how to create your own custom variables. 

### Part Variables

Part variables are variables that are linked to certain properties or functions of a part, but do not have a predefined variable (like `GearDown`) associated with them. These are useful for more advanced crafts, and include attributes such as engine RPM and torque outputs, rotator angle, camera look direction, and wing lift force.

See [Part Variables](./partvariables) for details.

---
Further documentation and a list of all available Funky Trees variables can be found in the can be found in the [Reference](../../reference/variables/) section.

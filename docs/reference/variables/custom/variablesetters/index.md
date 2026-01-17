---
title: Variable Setters
layout: default
parent: Custom Variables
grand_parent: Variables
nav_order: 1
---

# Variable Setters
#### Technical reference for user-defined global variables.
---

Variable Setters are used to create global custom variables within a craft. They allow for centralized logic and state management that can be accessed by any expression on the aircraft. Every variable setter in the list is evaluated once per physics tick.

## Configuration
In the aircraft's XML file, variable setters are defined within the `<Variables>` tags. Each setter follows a specific structural format:

`<Setter variable="Name" function="Expression" priority="0" activator="Condition" />`

The order in which setters appear in the XML file matches their order in the in-game Variable Setter GUI.

## Properties
* `variable`: The unique name of the variable.
* `function`: Any valid Funky Trees expression used to calculate the variable's value.
* `activator`: An optional Boolean expression that determines if the setter is active. If not specified, the setter is always active. When the expression evaluates to false, the setter is ignored.
* `priority`: A numerical value used to determine precedence. By default, this is `0`, but it can also take negative integers. If multiple setters target the same variable name, the active setter with the highest priority value controls the final output.

## Examples

### Priority Ranking
Demonstrating how multiple active setters are resolved based on their priority level.

* **Setter 1**: `variable="Mode" function="1" priority="-1"`
* **Setter 2**: `variable="Mode" function="2" priority="0"`
* **Setter 3**: `variable="Mode" function="3" priority="5"`

If all three setters are active, `Mode` will evaluate to `3` because Setter 3 has the highest priority. If Setter 3 is disabled via an activator, the value will fall back to `2`.

### Activator State Control
Demonstrating how the activator field determines whether a setter participates in the current tick's evaluation.

* **Setter 1**: `variable="Autopilot" function="TargetHeading" activator="Activate1"`
* **Setter 2**: `variable="Autopilot" function="0" priority="-1"`

In this setup, when `Activate1` is true, Setter 1 is active and provides the `TargetHeading`. When `Activate1` is false, Setter 1 is ignored entirely, and the variable falls back to the low-priority default of `0` provided by Setter 2.

## Technical Resolution
* **Global Access**: Variables defined here are global. They are called directly by their name in any part expression on the craft.
* **Evaluation**: The entire list of variable setters is evaluated every tick; the update frequency is determined by the game physics quality setting.
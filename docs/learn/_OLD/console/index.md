---
title: Using the Input Dialog or the Console Debugger
layout: default
parent: Learn
nav_order: 6
---
# Using the Console Debugger
#### How to enter, test, and debug expressions in-game.
---
`**[NOT YET REWRITTEN, TO BE REWORKED FOR CRAFT-BASED TUTORIAL]**`


Implementing Funky Trees requires using the internal tools provided by the simulation environment.

## The Input Dialog
Most interactive parts have an "Input" field in their properties menu. By default, these contain simple variable names like `Pitch`. You can replace these with any valid Funky Trees expression. For complex formulas, it is often easier to use the XML exterior view or the Variable Setter menu.

## The Console Debugger
The console is an essential tool for verifying that your expressions are working as intended.
* **Accessing the Console**: Open the console using the backtick (`) key.
* **Watch Command**: Use the command `watch [Expression]` to see the real-time output of a formula on your screen. This is critical for troubleshooting logic errors or verifying sensor data.
---
title: Variables
layout: default
parent: Reference
---
# Variables
#### Technical reference for variable data sources in the Funky Trees language.
---

Variables provide the real-time data used within expressions. They are categorized into built-in system variables and user-defined custom variables.

## Built-in Variables
Standard data points provided by the game engine.
* **Input Variables**: Values driven by direct user interaction. See [Input Variables](./builtin/input/) for details.
* **State Variables**: Read-only telemetry and sensor data from the simulation. See [State Variables](./builtin/state/) for details.

## Custom Variables
Extended data sources defined by the user.
* **Variable Setters**: Global variables with advanced logic and persistence. See [Variable Setters](./custom/variablesetters/) for details.
* **Part Variables**: Local outputs unique to specific aircraft parts. See [Part Variables](./custom/partvariables/) for details.

## Notes
* **Case Sensitivity**: All variable names are case-sensitive.
* **Update Rate**: Variables are updated per-tick; the frequency is determined by the game physics quality setting.
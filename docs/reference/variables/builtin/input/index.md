---
title: Input Variables
layout: default
parent: Built-in Variables
grand_parent: Variables
nav_order: 3
---
# Input Variables
#### Technical reference for variables driven by user control and cockpit interaction.
---

Input variables represent data modified directly by the user's actions within the simulation. These values allow aircraft parts to respond to pilot inputs from controllers, keyboards, or the cockpit interface.

## Analog Controls
Continuous variables mapped to primary flight controls and auxiliary sliders. These values typically represent a range of motion.

## Activation Groups
Binary toggle variables controlled via the aircraft's activation panel or assigned hotkeys. 

## Combat and System Controls
Inputs dedicated to weapons deployment, countermeasure release, and secondary aircraft systems.

## Technical Notes
* **Update Frequency**: Values are polled every frame; the rate is determined by the game physics quality setting.
* **Control Mapping**: The behavior and range of these variables are subject to the sensitivity and inversion settings defined in the game's input controller menu.
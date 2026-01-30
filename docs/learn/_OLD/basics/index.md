---
title: Input Controller Basics
layout: default
parent: Learn
nav_order: 5
---
# Input Controller Basics
#### How inputs are used to control parts.
---
`**[TO BE REWORKED FOR CRAFT-BASED TUTORIAL]**`

Every moving part of a craft in SimplePlanes relies on at least one *input controller* in order to tell it what to do.  By changing the value of the variable that is passed to a part's input controller while piloting the craft, the part can be controlled and operated. Parts with input controllers include (but are not limited to) engines, rotators, wheels, control surfaces, and gyroscopes.

## What is an Input Controller?

As the name implies, an input controller is a part property that controls the part's function based on an input. For example, a control surface with its input controller set to `Roll` will deflect when the `Roll` input variable is changed by the player (i.e. when the player moves the control stick to the side). Similarly, plane engines have their throttle input controller set to the `Throttle` variable by default, so that increasing the `Throttle` control makes the engine produce more power.

Input controllers have a list of pre-defined options that can be cycled between by clicking on the input parameter: `Throttle`, `Brake`, `Roll`, `Pitch`, `Yaw`, `Trim`, `Flaps`, `VTOL`, and `Disabled`. With the exception of the last option (which simply outputs `0` at all times), each of these corresponds to an input variable that the player can directly control via on-screen or keyboard controls.

Most input controllers also come with two additional options: "Activation Group" and "Invert." The former one essentially provides an option to toggle the input on and off - note that this is *not the same* as toggling it between 0 and the input value, but essentially toggles *whether the input controller is "listening" or not.* The latter option changes the "direction" that the input controller works in: control surfaces move the opposite direction, rotators spin the other way, et cetera.

These pre-defined options are adequate for basic crafts ("simple" planes, if you will), but they are not the only options. By holding `Ctrl` and clicking on the input parameter, you can open a window that you can type in, which allows you to write pretty much anything you want as long as it eventually produces a number. This is where Funky Trees comes in. With Funky Trees, you can write mathematical expressions and scripts that rely on more complex logic to control the part's functions, rather than relying exclusively on the predefined list of input variables.


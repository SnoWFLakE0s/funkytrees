---
title: LandingGear
layout: default
parent: Input Variables
grand_parent: Built-in Variables
---
# LandingGear
---
## Syntax
`LandingGear`

## Type
Number

## Description
Represents the state of the landing gear command. Returns `0` when the gear is commanded to the down position, and returns `1` when the gear is commanded to the up position.

Unlike most other number variables, these are the *only* possible values for `LandingGear`; it behaves as a binary on/off signal rather than a number range.

Note that `LandingGear` behaves opposite to [`GearDown`](../geardown/) and becomes `1` when the landing gear is *retracted*, whereas `GearDown` becomes `True`/`1` when the landing gear is *extended*.
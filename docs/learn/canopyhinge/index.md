---
title: Canopy Hinge
layout: default
parent: Learn
nav_order: 4
---
# Toggleable Canopy Hinge
#### Basic Funky Trees inputs and input clamping.
---

The canopy hinge is currently set to use the `VTOL` input, which is set by the player based on the position of the VTOL slider.  There's a few problems with this method:
* **Opening the canopy with a button would be much easier.**
* **The hinge can rotate "backwards" and break the canopy off.**

We'll be modifying the input control for the canopy's rotator to fix both of these issues.  First, locate the canopy rotator (it's on the rear wall of the cockpit, painted yellow).  Select it and open the **Part Properties** menu, then `Ctrl + left click` on the **Input** option (the gray box that says `VTOL`). This opens the *Funky Trees input window*, a text box where you can write Funky Trees expressions that will be used as the input for the part.  It currently displays the following text:
```
VTOL
```
## Activation Group Input
First, we will modify the rotator's input to use an activation group instead of the VTOL slider.  This has two advantages: the canopy can now be controlled with a cockpit button or a single click, and the VTOL slider can be used for other features that may require finer control.

Replace the existing text in the input window with the following expression:
```
Activate8
```

This expression tells the rotator to use **Activation Group 8** as its input.  Activation Group 8 (as well as the other activation groups) is a [*boolean variable*](../../reference/variables/builtin/input/activaten/), which means that it outputs `True` when on and `False` when off.  When used as an input, `True` is automatically converted to `1` (and `False` to `-1`), meaning that we now have a button that sets the rotator to either `1` or `-1` depending on whether Activation Group 8 is turned on or off.  In other words, Activation Group 8 now controls the canopy.
> If you want to use a different activation group, replace `Activate8` with [`ActivateN`](../../reference/variables/builtin/input/activaten/), where `N` corresponds to the activation group you would like to use.

## Input Clamping
If you test the craft now, you'll notice that the canopy opens automatically, because Activation Group 8 is turned on by default.  However, you may also notice that when you turn it off, the canopy closes too far and runs into the fuselage.  Not good!

This issue is caused by the fact that rotators can accept both positive and negative numbers, which means that they can move in both directions.  We also had this issue when using the VTOL slider, but there is a simple way to fix this: apply a clamp limiter.
> `VTOL` is a *ranged number control input*, which means that it produces a number within a certain range - in this case, `-1` to `1` - depending on where the VTOL slider is set.

To add a clamp limiter, we will use the [`clamp`](../../reference/functions/clamp/) function.  Since we want the rotator to still reach its maximum limit when Activation Group 8 is on, the upper end of the range is left at `1`, and the lower end of the range is clamped to `0` to prevent the rotator from pushing the canopy the wrong way.  Fortunately, since this is a common use case, there's a special version of the `clamp` function that already exists: [`clamp01`](../../reference/functions/clamp01/).
> `clamp01(x)` is functionally equivalent to `clamp(x, 0, 1)`.

Add the `clamp01` function to the input window as follows:
```
clamp01(Activate8)
```
Alternatively, you can use the regular `clamp` function with this code (the functionality is identical):
```
clamp(Activate8, 0, 1)
```

If you test the craft now, you'll see that the canopy returns to the closed position when Activation Group 8 is turned off.

---
In [the next part of the tutorial](../rpmgauge/), we will be modifying a gauge in the cockpit to display an output from the plane's engine.
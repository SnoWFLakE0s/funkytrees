---
title: Custom Landing Gear
layout: default
parent: Learn
nav_order: 6
---
# Custom Landing Gear
#### A popular application of Funky Trees that requires precise timing.
---

Now that we can see exactly what our engine is doing, it's time to get into the air.  You may have noticed that the plane's landing gear is controlled by the VTOL slider.  While this technically works, it obviously isn't ideal - there's a dedicated button for landing gear, after all.

Each landing gear bay contains two rotators: a standard rotator (painted blue) that operates the door, and a hinge rotator (painted light blue) that operates the gear leg itself.  On this craft, all three landing gear assemblies are functionally the same, so pick any of the three to start with.

## Landing Gear Variable Input
First, select the light blue hinge rotator.  Open the **Part Properties** menu, then `Ctrl + left click` on the **Input** option to open the Funky Trees input window like before.  Highlight the existing text and delete it, then enter the following expression:
```
GearDown ? 0 : 1
```
This expression tells the rotator to use **[GearDown](../../reference/variables/builtin/input/geardown/)** as its input.  On a functional level, this is essentially the same expression that was used for the cockpit canopy hinge [earlier in the guide](../canopyhinge/).

> The [`LandingGear`](../../reference/variables/builtin/input/landinggear/) variable can be used in place of `GearDown`, but note that `LandingGear = 1` indicates that the gear is *retracted*, whereas `GearDown = True` indicates that the gear is *extended*.

If you load the craft now, you should be able to observe the landing gear legs retract upwards into their bays when the landing gear button is pressed.  This is all you need for very simple landing gear, but there is still the problem of the doors.

## Door Delays and Timing
There are a variety of ways to force a delay on a rotator or door, some more complicated than others, but the most reliable way is to simply control the door based on the position of the landing gear itself.

Ideally, the door will close once the landing gear is retracted, and open immediately when it begins to extend.  Simply copying the input used for the landing gear leg won't work, since the door will close at the same time as the gear leg is retracting - the same problem as before.

Instead, a simple bit of "timing" is required by controlling the door based on the angle of the landing gear itself.

Select the light blue hinge rotator again, then open the **Part Variable Outputs** screen using the same method as before.  Unlike the engine, the hinge rotator has only a single possible variable output: `Current Angle`.  This, predictably, outputs a numerical value corresponding to the angle of the rotator in degrees.

In the field for the `Current Angle` output, type the following text:
```
Gear1
```

This creates a new variable, `Gear1`, for this specific rotator.

Next, select the blue rotator that controls the landing gear door.  In the rotator's **Input** box, type the following text:
```
((abs(Gear1) < 80) | GearDown) ? 0 : 1
```
This function reads as follows: *"If the absolute value of `Gear1` is less than 80 [degrees], OR if `GearDown` [equals `True`], then set the input value to `0`; otherwise, set it to `1`."*

The gear door will begin closing once the landing gear passes 80 degrees of retraction, and will begin opening as soon as the gear is commanded to extend.

Repeat the above steps for the other two landing gear assemblies (using `Gear2` and `Gear3` as your angle variables) to complete this stage of the tutorial.

This is only one (extremely simple) way out of many possible ways to create custom retractable landing gear, but many of the more complicated solutions still use some variation of this timing principle.

---
In [the next part of the tutorial](../autoflaps/), we will be exploring craft state variables and the debug console, applying real-time flight data to automatically operate the plane's flaps.
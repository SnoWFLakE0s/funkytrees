---
title: RPM Gauge
layout: default
parent: Learn
nav_order: 5
---
# Engine RPM Gauge
#### Using part outputs as Funky Trees variables.
---

Another common application of Funky Trees is the use of *part outputs*.  There are many different uses for part outputs, depending on the specific craft - and what part outputs are used - but for the purposes of this tutorial, we will be making a simple RPM gauge (tachometer) that reads an output from the plane's engine.
> Part outputs are number variables that are linked to specific parts on a build, such as engines and rotators.  Read more about part outputs in the [Reference](../../reference/variables/custom/partvariables/) section.

In this case, the specifics of how to access the part outputs menu is different depending on whether you are following this tutorial in SimplePlanes 1 or SimplePlanes 2.  Expand the appropriate section below to continue the tutorial.

---
<details>
<summary>

### SimplePlanes 1
</summary>

Move to the rear of the plane and select the propeller part.  In SimplePlanes 1, the propeller and engine are combined into a single part.  Open the **Rotate Part** menu by clicking the arrow on the right side of the screen (above the **Part Properties** option), then open the **Part Variable Outputs** screen by pressing the `(x)` button (at the top of the list).
</details>
<details>
<summary>

### SimplePlanes 2
</summary>

Move to the rear of the plane and select the propeller engine part.  In SimplePlanes 2, the engine is a separate part from the propeller itself.  Open the **Selected Part Options** menu by clicking the wrench icon on the right side of the screen (above the **Part Properties** option), then open the **Variable Outputs** screen by pressing the button with a gauge icon (at the top of the list).
</details>

---
Now that the menu is open, you can see that the engine has two possible variable outputs: `RPM` and `OutputTorque` (`Thrust` in SimplePlanes 1).  Entering a word into the `Variable Name` box will set that word as the variable name for this engine's specific output, allowing it to then be referenced in other Funky Trees expressions.

In the field for the `RPM` output, type the following text:
```
EngineRPM
```

This creates a new variable, `EngineRPM`, for this specific craft that will display the current RPM of the engine.

After creating this variable, move to the cockpit and select the RPM gauge (on the instrument panel, painted orange).  Open the **Part Properties** menu, then `Ctrl + left click` on the **Input** option to open the Funky Trees input window like before.  Highlight the existing text and delete it, then enter the following expression:
```
EngineRPM/6000
```

Dividing the RPM input by 6000 ensures that it will properly fit in the range of the gauge (instead of causing it to spin wildly), and it is then further "scaled" to the range of the gauge using the gauge's **Input Multiplier** property (currently set to `230`).  This and the other properties have already been set in preparation for this guide, so you can leave them alone for now.

If you test the craft now, you'll see that the RPM gauge now properly displays the engine's RPM when you increase the throttle.  You can observe it changing as you apply different loads to the propeller in flight, though it will always remain in the lower end of the gauge range because the propeller is designed to spin in the 1,000-2,000 RPM range.

---
In [the next part of the tutorial](../customgear/), we will be using both Funky Trees inputs and part outputs to program a simple custom landing gear mechanism.
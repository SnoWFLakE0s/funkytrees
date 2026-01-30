---
title: Example Craft
layout: default
parent: Learn
nav_order: 3
---
# Example Project
#### A plane that needs some Funky Trees, used as the example project for this guide.
---

Let's start with something simple: modifying an existing craft to include some Funky Trees features. **Copy the appropriate link below and press `Ctrl + L` in the Designer to download the project craft for this tutorial.**

If you want to follow this guide in **SimplePlanes 2**, please download this craft before continuing:
```
Link to download the SP2 version of the craft here.
```

If you want to follow this guide in **SimplePlanes 1**, please download this craft before continuing:
```
Link to download the SP1 version of the craft here.
```
---
This plane is already functional to the extent that it flies, and all of its features *technically* work.  Try it out and get a feel for how it handles; we'll be flying it more later on, but first there's some basic features to address...

You may have noticed that the canopy and flaps are operated at the same time by the VTOL slider.  This obviously isn't an ideal situation, since you need to open the canopy in order to raise the landing gear - not to mention the fact that the flaps don't work at all!

Fortunately, Funky Trees provides several ways of fixing this!  We'll start by programming the canopy hinge to operate on an activation group input, and then move on to more complex control solutions for the flaps, landing gear, and a few other features along the way.

The following sections will walk you through the process of adding several different Funky Trees features to this example plane, demonstrating how to apply the principles of Funky Trees logic to your own builds.

The following features will be covered in this tutorial, in order of increasing complexity:
* **Toggleable Canopy Hinge**
* **Engine RPM Gauge**
* **Automatic Flaps**
* **Custom Landing Gear**
* **Target Tracking Camera**

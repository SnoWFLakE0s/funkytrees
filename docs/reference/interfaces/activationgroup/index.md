---
title: Activation Group
layout: default
parent: Interfaces
grand_parent: Reference
nav_order: 2
---
# Activation Group
#### Technical reference for activation group elements.
---

## Description

Most controllable parts/components in SimplePlanes have some form of an activation group attribute. This includes every component that has an [`InputController`](/docs/reference/interfaces/inputcontroller/) element, along with some others that have a `group` or `activationGroup` attribute.

## Syntax

In craft XML files, activation groups are defined in a variety of attributes.[^1] See all types below.

### In InputController:

```xml
<InputController.State activationGroup="activator" ... />
```

### In Detacher:

```xml
<Detacher.State group="activator" ... />
 ```

### In Parachute:

```xml
<Parachute.State activationGroup="activator" ... />
```

## Arguments (Common)

`activator` (Number or Boolean): 

The Funky Trees expression used to control the activator. Any valid expression will work. Most commonly a [Boolean](/docs/reference/expressions/datatypes/#booleans) is used and is the recommended type to use when trying to control activator behavior. 

However, as booleans are dynamically typed in Funky Trees, it is possible to use a number input to control activation group interfaces. In this case, the activation group is considered *active* when the number is **larger than 0**.

## Examples

The following examples work for all instances.

```
... activationGroup="Activate1" ...
... group="Altitude>100" ...
```

The first example will allow for classic activation group binding, allowing operation of any InputController part to cease, or a parachute to deploy upon turning on AG1. In the case of the second example, a detacher is activated when the altitude exceeds 100m. An expression like `Altitude - 100` would achieve the same result through type conversion.

___

[^1]: The name designation within craft XML for activation group type interfaces throughout parts are inconsistent. While they appear the same within the designer GUI, they will read differently depending on the part.
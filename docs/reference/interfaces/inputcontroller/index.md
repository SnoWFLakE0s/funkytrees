---
title: InputController
layout: default
parent: Interfaces
grand_parent: Reference
nav_order: 1
---
# InputController
#### Technical reference for the InputController element.
---

The vast majority of Funky Trees use will be within the `InputController`. This interface allows for control of most SimplePlanes components, from engines to rotators and everything in between.

## Syntax
In craft XML files, Input Controllers are defined within the `<InputController.State>` element, and is a child of the particular `<Part>` element you are controlling. A part will have one input controller, and it follows this format:

```xml
<Part>
  ...
  <InputController.State activationGroup="Number" invert="Boolean" min="a" max="b" input="Number" />
  ...
</Part>
```

## Attributes

An InputController has the following attributes: 

| Attribute | Type | Description | Example |
| `activationGroup` | Number/Boolean | See the [page on activation groups](/docs/reference/interfaces/activationgroup/). | `Activate1` |
| `invert` | Boolean | This will determine the direction the value in the `input` is applied to the part. Either `true` or `false`. | `true` |
| `min` | Number | The lower input range mapping value. | `0` |
| `max` | Number | The upper input range mapping value. | `1` |
| `input` | Number | The Funky Trees expression used to control the part. Any valid expression will work.[^1] | `sum(Pitch)*2` |

It is important to note that while `min` and `max` may appear to be range clamping properties, they actually map the input of the controller. The controller will map the `input` value from `[-1, 1]` to `[min, max]`. For example, given a input of `1`, the actual output passed to the part is `1 * max`.[^2]

It is recommended that if you need to achieve a clamped input, you achieve that *within* the `input` by using the [`clamp()`](/docs/reference/functions/clamp/) or [`clamp01()`](/docs/reference/functions/clamp01/) functions.

___

[^1]: It is critical to remember that the actual behavior of a part is dependent on more than just the `input`. The `input` only controls how the part acts relative to its other physical parameters, like the rotation range on a rotator.
[^2]: This behavior exists due to being grandfathered in from before the addition of Funky Trees, and as a result, it is generally better practice to use the part defaults for `min`/`max`, or `[-1,1]` to ensure that your Funky Trees expression is directly passed to the part without any range mapping.
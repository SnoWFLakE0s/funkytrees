---
title: Buttons
layout: default
parent: Interfaces
grand_parent: Reference
nav_order: 4
---
# Buttons
#### Technical reference for buttons.
---

Buttons are an mouse-interactable component that has the ability to write to both [input variables](/docs/reference/variables/builtin/input/) and [custom variables](/docs/reference/variables/custom/). They are independent from the standard part variables system.

## Syntax
In craft XML files, buttons are defined by the attribute `PartType="Button-1"` in the `<Part>` element. It has 2 child elements, `<Button.State>` and `<Label.State>`. This article will only cover `<Button.State>`. For the label tag, see the [label section](/docs/reference/interfaces/label/).

```xml
<Button.State inputId="VariableName" style="StyleType" lightStrength="Number" interactionType="TypeName" outputValue="Output" />
```

## Attributes

| Attribute | Arguments | Description |
| `inputId` | `VariableName` | A valid *custom* variable or input variable needs to be entered in this field. The button, when active, writes to this variable. | 
| `style` | `StyleType` | The button appearance type. Either `Rectangular` or `Circular`. |
| `lightStrength` | `Number` | The strength of the button backlight, when active. `1` by default. A percentage. |
| `interactionType` | `TypeName` | The button's behavior type. Three options are available: `Once`, `Continuous`, and `Toggle`. |
| `outputValue` | `Output` | The output value of the button when active. `1` by default, can be set to any number. |

## Important Notes on Behavior

### inputId

This field must have a valid variable name in it. The variable can both be unique to the button (not in any other part of the craft) or a preexisting variable already created by a custom variable setter or part variable. 

### outputValue

When the button is active, this exact value will be written to the variable specified in `inputId`, with a priority level of 0.

### interactionType

* **Once**: When the button is pressed it writes `outputValue` to the `inputId` for 1 physics tick. Resets itself.
* **Continuous**: When the button is pressed it writes `outputValue` to the `inputId` as long as the button is held down.
* **Toggle**: When the button is pressed it writes `outputValue` to the `inputId` and remains on, unless the `inputId` value is overwritten by another variable setter.
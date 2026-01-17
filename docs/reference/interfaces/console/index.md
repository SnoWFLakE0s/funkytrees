---
title: Debug Console
layout: default
parent: Interfaces
grand_parent: Reference
nav_order: 3
---
# Debug Console
#### Technical reference for the Funky Trees debug console.
---

The console is accessed via the <code>`</code> key on PC platforms and three finger taps on mobile platforms. To read the value of a Funky Trees expression, use the following command:

## Syntax
`DebugExpression "Expression"`

## Arguments
`Expression`: The Funky Trees expression to read.

Expressions that contain quotation marks (`""`) (for string values) must be replaced with sharp characters (`##`).

## Examples

* `DebugExpression "Altitude"`: This expression will give you the current altitude reading.
* `DebugExpression "1+2"`: This expression evaluates 1 + 2.
* `DebugExpression "#SelectedWeapon#"`: This expression will give you the name of the currently selected weapon.
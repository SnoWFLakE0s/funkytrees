---
title: Introduction
layout: default
parent: Learn
nav_order: 1
---
# Introduction

If you're an avid SimplePlanes builder, eventually you find there exists some task you'd like to automate. For example, you may wish to have a sequence of rotators move in a programmed sequence, or activate certain parts of your craft for a set of precisely defined conditions. Perhaps you'd like to store some data for avionics and telemetry, or a specialized HUD for your cockpit, or even a simple game.

Funky Trees is just what you need.

You could use a complex mechanism like a group of rotators, linkages and pistons to perform some of these tasks, but physical mechanisms are best suited for interaction with the environment, and not well-suited for inter-craft control or precision operation. You could try and go through with such a design, but it can take a lot of development time to get even a working system. Funky Trees is simpler to use, available on all platforms, and will help you get the job done more quickly and accurately.

Funky Trees is simple in design, but it is a real programming language, offering much more structure and support for large programs than simple input controlling (v1.7-style technology) can offer. On the other hand, Funky Trees is very different from anything else in SimplePlanes, and will take some getting used to—but allows you to rapidly change and modify behaviors of parts however you wish with a couple extra words: a far more modular and scalable approach than physical mechanisms.

One could label Funky Trees as an expression-oriented programming language, in which every (or nearly every) construction is an expression and thus yields a value. The console debugger can be used without having any actual code built inside your craft, which makes it easy to experiment with features of the language, to test segments of a larger program, or to get quick telemetry for your craft's performance. It is also a handy calculator for in-sandbox usage.

Funky Trees is very portable: once you program a part with some Funky Trees code, that code stays within the part, and can easily be saved as a subassembly for repeated deployment across multiple builds. If you're looking to compress your long expressions, variables can make code modular and compact. Once you are really hooked, you can even use variable based logic to do recursive processing for higher-level data manipulation.

By the way, the language was primarily built by WNP78, one of SimplePlanes' developers, and named Funky Trees after lead developer Andrew Garrison decided so. He likely was referring to how FT was initially conceived, in the form of various connected nodes in the manner of a tree. What makes it “funky” we don't quite know yet, but you are free to make your Funky Trees as funky as needed.

Now that you are all excited about Funky Trees, you'll want to examine it in some more detail. Since the best way to learn a language is to use it, this tutorial invites you to play with the debugger/inputController as you read.

In the next chapter, the mechanics of using the console debugger and the inputController interface are explained. This is rather mundane information, but essential for trying out the examples shown later.

The rest of the tutorial introduces various features of the Funky Trees language and system through examples, beginning with simple expressions, statements and data types, through functions, and finally touching upon advanced concepts like hardware interfacing and dynamic control.
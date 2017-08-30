---
speaker: Emily Bache
title: Introduction to Approval Testing with TextTest
id: emily-bache
workshop: true
topic-category: craftsmanship
---
Most automated tests follow an overall structure 'Arrange, Act, Assert'. It's that assertion part that is different in approval testing. When you design a test with assertions, you have to carefully decide which things are important to check. The thing is, if you don't anticipate all the failure modes, tests can pass and bugs can slip through unnoticed.

In Approval testing, you generally take an opposite standpoint - by default everything is interesting, and everything will be checked. When a test designer automates an acceptance test scenario, they will ‘Approve’ the whole program output, or explicitly decide some parts to filter out first. Any future deviation from the approved output will be marked as a test failure. The test designer’s responsibility is therefore reversed - all output is interesting unless they say otherwise. This kind of a test can find bugs no-one anticipated when it was written, and in my experience, this happens reasonably often.

In this workshop, we'll try out the technique on some simple programs, using the open source tool TextTest. You'll need to bring a laptop with VirtualBox installed, since the exercises will be provided on a virtual machine image. We won't be doing any advanced coding in the workshop, but it helps if you are familiar navigating on the command line and can run shell scripts.

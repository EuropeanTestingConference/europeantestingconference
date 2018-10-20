---
speaker: Markus Tacker
title: It does not run on my machine - Integration testing a cloud-native application
id: markus-tacker
talk: true
topic-category: automation
---
In this talk I will take you through the challenge of testing a cloud-native application that uses MQTT (a pub/sub protocol), webhooks and REST to interact with IoT devices on top of AWS.
It uses services which cannot be run on a developers machine for testing, so I needed to develop a test setup which enables us to continuously test against real services.
On top of that I wanted to use a BDD approach to write the tests to make our progress in the project self-documenting and the test immune against effects of big refactorings, which provides an extra set of challenges since these tests are written in a serial manner, which does not fit the async execution of the real solution.
I’ll show how all this is done using JavaScript and that this is is not only an interesting challenge but uses tests that behave like real users, and that there is an Ops person in all of us.
---
speaker: Thomas Sundberg
title: How Deep Are Your Tests? - Utilizing different levels of automated tests
id: thomas-sundberg
talk: true
---
Manual testing is most often done end-to-end. Tests are performed through the user interface. When testing gets automated, this is where most organizations start. They start with automating the way they do things now. The new way is faster, but it isn’t fast enough. And not robust enough.

It is unnecessarily complicated to understand why an end-to-end test fails. There are usually many different possibilities when something doesn’t work.

The number of possible paths through a reasonably large application will very fast make it impossible to cover them all. Combinatorics is your enemy.

The solution is to minimize the tests that passes through many layers in your application. Minimizing doesn’t mean removing the end-to-end tests. They are still needed. But much fewer than most organizations seem to think.

I will show you why the testing pyramid need to be very wide. You will understand why this is an absolute necessity if all possible paths through the application should be tested.

In other words, let me show you why your tests must be very shallow.

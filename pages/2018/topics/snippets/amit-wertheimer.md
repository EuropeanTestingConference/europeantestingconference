---
speaker: Amit Wertheimer
title: Architecture tips for simple(r) system tests
id: amit-wertheimer
talk: true
topic-category: automation
---

<a href="http://europeantestingconference.eu/slides18/Wertheimer.pdf">[Slides]</a>

“Copy... paste... modify one line... done!”

Writing system-level automation can be quite complex - and for some odd reason, many testers have their first work-related coding in this area. Luckily, the internet is here to help. There are many good advice on everything we might need -There are (open source) tools that cover the upper layers: Frameworks that support BDD or KDT, enable easy maintenance of multiple test suites and re-running failed tests. There are awesome tools that cover the lower layers that enable driving browsers or mobile devices, send REST or SOAP requests and generally do whatever we might want to do.
So how come our test-code is so difficult to maintain? Why doesn’t it look as pretty as the examples we find online?

The reason for that is that the advice we find are missing one part - the part where no generic tool can really help you: Organizing the business actions in a way that is easy to both maintain and use.

In this talk we’ll go over three ways of organizing your automation middle layer  - from a quick gain for the short term that you probably already use, to something a bit more elaborate that your future selves may not hate.

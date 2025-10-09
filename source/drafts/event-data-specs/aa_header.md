---
layout: doc-draft
---

# Event Data Specification

| <!-- -->                 | <!-- -->   |
| :-------------------     | :--------- |
| __Requested by__         | Het Normo  |
| __Version__              | 1.1        |
| __Status__               | Draft    |
| __Publication date__     | 2025-09-22 |
{: .header-table }

This document is a publication of Het Normo. In the pursuit of completeness and correctness of data, we kindly request you to submit comments, additions and improvements regarding this document by [raising a ticket]({{ site.github.issues_url }}) in this repository. 

### Document annotations

Please find the following information here:

[Changes](changes.md) - for all changes in this publication\
[Signoffs](signoffs.md) - for notification and signoffs for publication\
[References](../references.md) - for references to other publications\
[Dictionary](../dictionary.md) - explanatory guide for terms and abbreviations

### Table of contents

* Do not remove this line (it will not be displayed)
{:toc}

### Note

This document distinguishes two patterns, namely the **information-rich pattern** and the **information-poor pattern**

In the information-rich pattern of EDA, in addition to the notification, the
relevant information itself is also sent in a message (also called an 'event-carried
state-transfer' pattern).

In the information-poor pattern of EDA, only a notification of a
change is posted, and the Consumer itself retrieves the information later via an API.
This does require an API architecture to retrieve the data from the source.



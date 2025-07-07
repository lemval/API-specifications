# API Design Rules

| <!-- -->             | <!-- -->   |
| :------------------- | :--------- |
| __Code__                 |     |
| __Version__              | 5.1-web        |
| __Status__               | Concept      |
| __Publication date__     | 2025-07-04 |
{: .header-table }

This document is a publication of MFFBAS. In the pursuit of completeness and correctness of data, we kindly request you to submit comments, additions and improvements regarding this document by [raising a ticket]({{ site.github.issues_url }}) in this repository. 

## Document annotations

Please find the following information here:

[Changes](changes.md) - for all changes in this publication\
[Signoffs](signoffs.md) - for notification and signoffs for publication\
[References](../references.md) - for references to other publications\
[Dictionary](../dictionary.md) - explanatory guide for terms and abbreviations

## Table of contents

* Do not remove this line (it will not be displayed)
{:toc}

## Introduction

The current generation of applications are realized according to a service-oriented architecture. The goal here is to increase the flexibility in service provision. The unlocking of these services is realized by web services and, for some time now, also by REST APIs.

Within the context of service-oriented architecture, the design of web services and APIs is of great importance. A poorly designed web service or API can make the development of applications that call these services unnecessarily complex. From a business perspective, a poorly designed web service or API can have a negative effect on the flexibility of business processes. On the other hand, well-designed web services and APIs can improve the development speed of applications and the flexibility of business processes.
For the design and development of web services, the former NEDU TC, in close cooperation with EDSN, has drawn up the design choices for web services[^1]. The parties in the Dutch energy market, united within the NEDU, have expressed the need to also define guidelines for the design of APIs. Commissioned by the former Technical Committee NEDU (TC), a working group has drawn up the following documents[^2]:
* API Strategy
* API Design Rules (this document)
* API URI guidelines

The starting point for the API Design Rules is the API Strategy for the Dutch government. In addition, the energy sector-specific design rules are laid down here.

[^1]: Where this document refers to APIs, we mean REST APIs.
[^2]: Referred documents can be found in the global [document reference](../references.md).

## Design rules

The STD rules are the standards set by other bodies that guide the APIs designed and developed by the energy sector.

The remainder of the document contains the guidelines that have been drawn up based on best practices and lessons learned and are guiding for the APIs that are designed and developed by the energy sector. These guidelines are supplementary and/or prevailing to the API strategy for the Dutch government (ASNO).


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



## Introduction

The CoP SA Vision Document [\[10\]](../references.html) recommends adopting Event Driven Architecture (EDA) as a valuable
pattern for optimizing data exchange in the energy domain. This
vision provides a basis and guideline for further elaboration (for example a guideline or a concrete
implementation) to fully utilize the benefits of Event Driven Architecture. The
Vision Document is in line with the vision of the Dutch government: for example, in 2022 the
Notification Services Project [\[11\]](../references.html) was carried out by 'VNG Realisatie' on behalf of the 
Ministry of Internal Affairs. The aim of the project was to standardize automated notification 
of applications within the Dutch government and to be able to work better and more often 
event-driven as a government.

This document is in line with this vision and is a further concrete elaboration of it. The main 
purpose of this document is to define a specification for describing event data,
or events, which we will further refer to as the **Event Data Specification**. This specification 
was developed for the energy sector by the API Strategy Working Group on behalf of Het Normo.

To carry out this assignment, the API Strategy Working Group sought cooperation with the 
[API Knowledge Platform](https://developer.overheid.nl/communities/kennisplatform-apis), or in Dutch _Kennisplatform API's_, which has been commissioned to develop a government-wide usable 
message format for notifications. The API Knowledge Platform aims to promote cooperation 
between parties that work with APIs and standards within the government and
knowledge platform participant 'VNG Realisatie' was involved in the aforementioned project
Notification Services (2022) that was commissioned by the Ministry of Internal Affairs.

One of the products of the Notification Services project is the NL GOV profile for CloudEvents
[\[12\]](../references.html).
This is a specification for the standardized description and exchange of data about
occurring events. The profile builds on the [CloudEvents specification](https://cloudevents.io/) that was
developed by the [Serverless Working Group](https://github.com/cncf/wg-serverless) of the [Cloud Native Computing Foundation](https://www.cncf.io/). 

The basis of CloudEvents is a specification for the standardized description of
event data. In addition, standards have been (and are being) developed that describe
how the specification can be applied when using specific data formats and
transport protocols. The objective is to increase the interoperability of services, platforms and
facilities worldwide.

The NL GOV profile for CloudEvents [\[12\]](../references.html) contains agreements on the use of the CloudEvents 
specification within the Dutch government. It has been agreed how government organizations
use certain attributes. In this way, international standardization is used in the government.

This is supplemented with agreements that are necessary or desirable within the Dutch context.

CloudEvents is a standardized and protocol-neutral definition of the structure and metadata description of events. The CloudEvents message standard defines a set of metadata
('context attributes') about events that are transferred between applications and the way
in which the metadata must be included in exchanged messages. Based on
existing metadata, events can be filtered and routed in a standardized way towards
consuming applications ('consumers'). Consumers can use the metadata in provided events
for processing. Where necessary, own, e.g.
domain-specific attributes can be defined in the form of 'extended attributes' and included in messages.

In this Event Data Specification document, metadata ('context attributes') and content
message data ('payload attributes') are clearly and recognizably distinguished. 

This Event Data Specification document is based on the NL GOV profile for CloudEvents [\[12\]](../references.html) and is a sector-specific interpretation for the energy sector. It focuses on the specification of the
mandatory 'context attributes', the recommended file size and case convention of an event. The
guidelines for this are described and explained in the following paragraphs.

## Event Data Specification

This Event Data Specification is a guideline for events designed and developed by the energy sector and takes precedence over the NL GOV profile for CloudEvents [\[12\]](../references.html).

These specification guidelines are grouped by theme:
1. specification of the defined context attributes. Each type of event (information-poor or information-rich) must contain this defined attribute set. This is described in guidelines ID01 to ID08
2. defined file size of an event. Described in guideline ID09;
3. defined case convention. Described in guideline ID10.

Finally, an example of an event message is shown. The guidelines are numbered consecutively and follow the above-mentioned thematic order.
### Field 'specversion'

| ID     | 01 |
| :----  | :---------- |
| Name   | specversion |
| Type   | string |
| Detail | metadata specification version |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `specversion` attribute identifies the version of the CloudEvents specification used by the event. This enables interpretation of the context. Conformance requirements for event producers dictate that they must use a value of '1.0' when referring to this version of the specification.

#### Explanation

The CloudEvents standard specifies that only the 'major' and 'minor' version numbers are included in this attribute. This allows 'patch' changes to be made to the specification without changing the value of this property in the serialization.

#### Constraints

- Mandatory
- Contains a non-empty string value

#### Example

`"specversion" : "1.0"`

</details>
### Field 'id'

| ID     | 02 |
| :----  | :---------- |
| Name   | id |
| Type   | string |
| Detail | message identifier |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `id` attribute identifies the individual event, (preferrably) in the form of a UUID.

#### Explanation

CloudEvents provides a solution to implement idempotency, requiring that the combination of id and source uniquely identifies an event, which can be used as the idempotency key in downstream implementations. The combination of id and source must therefore be unique from the perspective of the producer. The combination of id and source can be used by a consumer to determine whether an event has already been processed.

#### Constraints

- Mandatory
- Contains a non-empty string value
- Producer is responsible that `id` (combined with `source`) is unique over all events

#### Example

`"id": "f3dce042-cd6e-4977-844d-05be8dce7cea"`

</details>
### Field 'source'

| ID     | 03 |
| :----  | :---------- |
| Name   | source |
| Type   | URI reference |
| Detail | origin of the event |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `source` attribute contains a consecutive unique identification of the
organization and the source system that publishes the event. This attribute
identifies the source of the event. The combination of organization and source system
must be unique.

#### Explanation

This guideline tightens NL GOV profile for CloudEvents and prescribes that
source is always a composite attribute of organization and source system. In
NL GOV profile for CloudEvents this is a recommendation.

The logical owner of the source, or the initial holder of the data, together with its role,
is part of the payload.

#### Constraints

- Mandatory
- Contains a non-empty string value
- Is a URI reference
- Is constructed from the schema: `urn:<type identifier>:<organization>:<logical name source system>`

Preferred order for \<type identifier\>: EAN, KVK, OIN

#### Example

`"source" : "urn:ean13:8716859000003:cmr"`

In this example, the EAN13 of EDSN is used to identify the
producing organization and 'cmr' (central meter register) is specified as
source system.

</details>
### Field 'type'

| ID     | 04 |
| :----  | :---------- |
| Name   | type |
| Type   | string |
| Detail | type of event |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `type` attribute contains a value that describes the type of event that is
related to the original event. It provides the intent of the
event in the right context. Context is relevant in defining the type.

#### Explanation

This guideline deviates from the specification in NL GOV profile for CloudEvents and
prescribes that `type` is always a composite attribute of context designation (domain), object and executed command.

#### Constraints

- Mandatory
- Contains a non-empty string value
- Is constructed from the schema: `<context designation>.<object>.<executed command>`
- Executed command is written in 'past tense', e.g.: 'created', 'updated'

#### Example

`"type" : "mdm.meter.updated"`

In this example, `type` indicates that it concerns an update of
meter data within the context of 'mdm'. This abbreviation stands for
'measurement data management' and identifies a Business Solution within EDSN.
This Business Solution can be regarded as a context and is defined as:
'managing meter and measurement data, including operations such as supplementing,
checking and performing calculations'.

</details>
### Field 'datacontenttype'

| ID     | 05 |
| :----  | :---------- |
| Name   | datacontenttype |
| Type   | string |
| Detail | message payload encoding |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `datacontenttype` attribute describes how the event data in `data` is
encoded. Event producers must provide the `datacontenttype` context attribute
to enable event consumers to determine the content type of the event data.

#### Explanation

This guideline tightens NL GOV profile for CloudEvents and prescribes that
`datacontenttype` must always be present as a context attribute if
event data is present. In NL GOV profile for CloudEvents this is
a recommendation.

#### Constraints

- Mandatory if a `data` attribute is specified
- Contains a non-empty string value
- Conform [RFC 2046](https://datatracker.ietf.org/doc/html/rfc2046)

#### Example

`"datacontenttype" : "application/json"`

</details>
### Field 'time'

| ID     | 06 |
| :----  | :---------- |
| Name   | time |
| Type   | timestamp |
| Detail | moment of event creation |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `time` attribute contains the moment in time at which the source system created the message.

#### Explanation

This guideline tightens NL GOV profile for CloudEvents and prescribes that
`time` must always be present as a context attribute. In NL GOV profile for
CloudEvents this is a recommendation.

#### Constraints

- Mandatory
- Contains a non-empty string value
- In UTC
- Conform [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) and formatted as `yyyy-mm-ddThh:mm:ss.ffffffZ`

#### Example

`"time" : "2023-09-22T14:01:54.957127Z"`

</details>
### Field 'dataversion'

| ID     | 07 |
| :----  | :---------- |
| Name   | dataversion |
| Type   | string |
| Detail | metadata specification version |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `dataversion` attribute contains the semantic version of the event data represented by the 
`data` attribute. It must formatted according to **major.minor.patch** notation as described in 
API Design Guideline [ID02](../api-design-rules/).

#### Explanation

This guideline is energy sector specific. The NL GOV profile for CloudEvents does not prescribe 
this attribute. Note that the major versioning is reflected in the URI address of the queue (see [Het Normo URI Guidelines](../uri-conventions/)). 

#### Constraints

- Mandatory if a `data` attribute is present
- Contains a non-empty string value

#### Example

`"dataversion" : "1.0.1"`

</details>
### Field 'data'

| ID     | 08 |
| :----  | :---------- |
| Name   | data |
| Type   | object |
| Detail | message payload |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `data` attribute contains the event payload. This attribute does not impose any restrictions on the type of this information. It is encoded in a media format specified by the `datacontenttype` attribute (for example, 'application/json').

#### Explanation

This guideline is a tightening of NL GOV profile for CloudEvents and
prescribes that attribute `data` must always be present if payload data is
present. In NL GOV profile for CloudEvents this is a recommendation.

#### Constraints

- Optional
- Contains a non-empty set of attributes

#### Example

```json
{
   "name" : "Data Field"
}
```

</details>
### Message size

| ID     | 09 |
| :----  | :---------- |
| Detail | size of the message |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

CloudEvents messages can be routed to different systems and consumers, including devices with 
limited resources. The message size of the event, or event file size, is very important to 
ensure interoperability between these various possibilities. The maximum size of a CloudEvents
compatible message is 256 kB. This means that producers must always keep event payloads compact 
and point to data instead of including data if the event file size is larger than 256 kB.

#### Explanation

This guideline prescribes that the maximum event file size is 256 kB, as relaxation to the NL GOV profile for CloudEvents. The aforementioned profile recommends limiting the maximum size to 64 kB.

#### Constraints

- Advised maximum message size should be limited to 64 kB
- Allowed maximum message size is 256 kB

</details>
### Naming convention

| ID     | 10 |
| :----  | :---------- |
| Name   | Naming convention |
| Detail | Case convention and name size limit |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

CloudEvents requires that context attributes be described as key-value pairs. The names of 
the context attributes may not exceed 20 characters and must consist of lowercase letters 
('a' to 'z') or digits ('0' to '9') from the ASCII character set. 
The payload attributes follow the case convention of the
corresponding REST API and are in camelCase according to API Design Guidelines [ID16](../api-design-rules/).

#### Explanation

This guideline applies if own, e.g. domain-specific attributes ('extended attributes'), are 
defined and included in messages. It also requires that the same convention is used
between the payload of the event and the resource payload of the corresponding REST API.

#### Constraints

- Context attributes in lowercase
- Payload attributes in camelCase

</details>
### Field 'subject'

| ID     | 11 |
| :----  | :---------- |
| Name   | subject |
| Type   | string |
| Detail | subject filter |

<details><summary>

Open section for description, explanation, constraints and example

</summary>

#### Description

The `subject` attribute holds a specific data element for the `type`. Each `type` can have its own content definition. For example, for `mdm.meter.updated` this may be the meter number associated. It still needs to be considered as metadata, not as payload data.

#### Explanation

As messages can be numerous there is a need to filter relevant messages for the consumer. This field offers additional context for processing.

#### Constraints

- Optional
- Contains a non-empty value

#### Example

`"subject" : "E00000000035671400"`

</details>
## Event Example

In the next example an event is given which should be published by EDSN as organisation,
from the source system 'centraal meter register', with example values for the context attributes:

```json
{
   "specversion": "1.0",
   "id": "e65558c4-2734-44f1-b04e-63923b0ab979",
   "type": "mdm.meter.updated",
   "source": "urn:ean13:87037436423:cmr",
   "time": "2023-09-22T14:01:54.957124Z",
   "dataversion": "1.0.1",
   "datacontenttype": "application/json",
   "data": {
      ---- payload ----
   }
}
```
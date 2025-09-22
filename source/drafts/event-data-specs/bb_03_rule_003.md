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

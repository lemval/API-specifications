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

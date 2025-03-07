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

`"specversion" : "1.0"`

</details>

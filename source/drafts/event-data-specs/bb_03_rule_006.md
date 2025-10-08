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
